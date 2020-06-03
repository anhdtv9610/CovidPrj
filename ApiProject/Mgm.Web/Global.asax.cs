using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading;
using Abp.Castle.Logging.Log4Net;
using Abp.Web;
using Castle.Facilities.Logging;
using Mgm.Utility;
using Newtonsoft.Json;

namespace Mgm.Web
{
    public class MvcApplication : AbpWebApplication<MgmWebModule>
    {
        public Thread breakAndLunchJob = null;

        protected override void Application_Start(object sender, EventArgs e)
        {
            AbpBootstrapper.IocManager.IocContainer
                .AddFacility<LoggingFacility>(f => f.UseAbpLog4Net()
                    .WithConfig(Server.MapPath("log4net.config"))
                );

            //GlobalConfiguration.Configure(ApiConfig.Register);

            breakAndLunchJob = new Thread(new ThreadStart(BreakAndLunchJob));
            breakAndLunchJob.Start();

            base.Application_Start(sender, e);
        }

        private void BreakAndLunchJob()
        {
            string folderConfig = ConfigurationManager.AppSettings["JobLogFolder"];
            var jsonText = File.ReadAllText(folderConfig + "\\BreakAndLunchConfig\\setting.json");
            var settings = JsonConvert.DeserializeObject<BreakAndLunchConfig>(jsonText);

            Utils csUtils = new Utils();

            if (settings.AllowRun)
            {
                var pathLastCheck = folderConfig + "\\BreakAndLunchConfig\\lastcheck.txt";
                while (true)
                {
                    string timeFile = DateTime.Now.ToString("yyyymmddHHmmss") + ".txt";
                    string fileLogCusName = "BreakAndLunchProgressCus" + timeFile;
                    string fileLog700Name = "BreakAndLunchProgress700" + timeFile;

                    try
                    {
                        var startBreak = new TimeSpan(9, 45, 0);
                        var endBreak = new TimeSpan(10, 0, 0);
                        var startLuch = new TimeSpan(12, 30, 0);
                        var endLunch = new TimeSpan(13, 10, 0);
                        var currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        var lastCheckTime = "2020-01-01 00:00:00";
                        using (StreamReader file = new StreamReader(pathLastCheck))
                        {
                            string ln;
                            while ((ln = file.ReadLine()) != null)
                            {
                                lastCheckTime = ln;
                            }
                            file.Close();
                        }

                        SqlConnection connCustom = new SqlConnection(ConfigurationManager.ConnectionStrings["MgmTimeClock"].ConnectionString);
                        connCustom.Open();
                        
                        SqlConnection conn700 = new SqlConnection(ConfigurationManager.ConnectionStrings["TimeClockPlus"].ConnectionString);
                        conn700.Open();

                        #region copy data from 700 to custom
                        var sqlGetEmployye = settings.SqlGetEmployee;
                        SqlCommand getEmployyeCommand = new SqlCommand(sqlGetEmployye, connCustom);
                        SqlDataReader dataEmployyeReader = getEmployyeCommand.ExecuteReader();
                        var lsEmployee = new List<EmployeeData>();
                        while (dataEmployyeReader.Read())
                        {
                            EmployeeData objAdd = new EmployeeData()
                            {
                                RecordId = dataEmployyeReader.GetValue(0).ToString()
                            };
                            lsEmployee.Add(objAdd);
                        }
                        dataEmployyeReader.Close();
                        getEmployyeCommand.Dispose();
                        
                        var sqlGetWorkSegment = settings.SqlGetWorkSegment + " AND TimeIn >= CAST('" + lastCheckTime + "' AS DATE)";
                        SqlCommand getWorkSegmentCommand = new SqlCommand(sqlGetWorkSegment, conn700);
                        SqlDataReader dataWorkSegmentReader = getWorkSegmentCommand.ExecuteReader();
                        var lsWorkSegment = new List<WorkSegmentData>();
                        while (dataWorkSegmentReader.Read())
                        {
                            WorkSegmentData objAdd = new WorkSegmentData()
                            {
                                RecordId = dataWorkSegmentReader.GetValue(0).ToString(),
                                BreakType = dataWorkSegmentReader.GetValue(1).ToString(),
                                CostCodeRecordId = dataWorkSegmentReader.GetValue(2).ToString(),
                                EmployeeRecordId = dataWorkSegmentReader.GetValue(3).ToString(),
                                JobCodeRecordId = dataWorkSegmentReader.GetValue(4).ToString(),
                                TimeIn = dataWorkSegmentReader.GetValue(5).ToString(),
                                TimeOut = dataWorkSegmentReader.GetValue(6).ToString()
                            };
                            lsWorkSegment.Add(objAdd);
                        }
                        dataWorkSegmentReader.Close();
                        getWorkSegmentCommand.Dispose();
                        conn700.Close();

                        var lsProcess = lsWorkSegment
                            .Where(x => lsEmployee.Select(e => e.RecordId).ToArray().Contains(x.EmployeeRecordId))
                            .ToList();

                        var i = 0;

                        var culture = CultureInfo.CreateSpecificCulture("en-US");
                        foreach (var item in lsProcess)
                        {
                            var timeIn = DateTime.Parse(item.TimeIn, culture);
                            var hourIn = timeIn.TimeOfDay;
                            var timeOut = DateTime.Parse(item.TimeOut, culture);
                            var hourOut = timeOut.TimeOfDay;

                            var recordId = item.RecordId;
                            var employeeRecordId = item.EmployeeRecordId;
                            var jobCodeRecordId = item.JobCodeRecordId;
                            try
                            {
                                if (hourOut.CompareTo(endLunch) > 0)
                                {
                                    if (hourIn.CompareTo(startBreak) < 0)
                                    {
                                        if (!CheckWorkSegment(
                                            item.CostCodeRecordId,
                                            employeeRecordId, 
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            connCustom))
                                        {
                                            // missing break and lunch
                                            csUtils.WriteLog(null, "From 700, missing break and lunch" +
                                                ", recordId: " + recordId +
                                                ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                                ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLog700Name);

                                            // insert data before break
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                                timeIn.ToString("yyyy-MM-dd") + " 09:45:00");
                                            i++;
                                            // insert data after break
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd") + " 10:00:00",
                                                timeIn.ToString("yyyy-MM-dd") + " 12:30:00");
                                            i++;
                                            // insert data after lunch
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd") + " 13:10:00",
                                                timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                            i++;
                                        }
                                    }
                                    else if (hourIn.CompareTo(startLuch) < 0)
                                    {                                       
                                        if (!CheckWorkSegment(
                                            item.CostCodeRecordId, 
                                            employeeRecordId, 
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            connCustom))
                                        {
                                            // missing lunch
                                            csUtils.WriteLog(null, "From 700, missing lunch" +
                                                ", recordId: " + recordId +
                                                ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                                ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLog700Name);

                                            // insert data before lunch
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                                timeIn.ToString("yyyy-MM-dd") + " 12:30:00");
                                            i++;
                                            // insert data after lunch
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd") + " 13:10:00",
                                                timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                            i++;
                                        }
                                    }
                                    else
                                    {
                                        if (!CheckWorkSegment(
                                            item.CostCodeRecordId, 
                                            employeeRecordId,
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            connCustom))
                                        {
                                            // insert data
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                                timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                            i++;
                                        }
                                    }
                                }
                                else if (hourOut.CompareTo(endBreak) > 0)
                                {
                                    if (hourIn.CompareTo(startBreak) < 0)
                                    {
                                        if (!CheckWorkSegment(
                                            item.CostCodeRecordId, 
                                            employeeRecordId, 
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"), 
                                            connCustom))
                                        {
                                            // missing break
                                            csUtils.WriteLog(null, "From 700, missing break" +
                                                ", recordId: " + recordId +
                                                ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                                ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLog700Name);

                                            // insert data to before break
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                                timeIn.ToString("yyyy-MM-dd") + " 09:45:00");
                                            i++;
                                            // insert data after break
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd") + " 10:00:00",
                                                timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                            i++;
                                        }

                                    }
                                    else
                                    {
                                        if (!CheckWorkSegment(
                                            item.CostCodeRecordId, 
                                            employeeRecordId,
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            connCustom))
                                        {
                                            csUtils.WriteLog(null, "From 700, new data" +
                                            ", recordId: " + recordId +
                                            ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                            ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLog700Name);

                                            // insert data
                                            InsertWorkSegment(connCustom,
                                                String.Empty,
                                                item.CostCodeRecordId,
                                                employeeRecordId,
                                                String.Empty,
                                                timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                                timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                            i++;
                                        }
                                    }
                                }
                                else
                                {
                                    if (!CheckWorkSegment(
                                            item.CostCodeRecordId, 
                                            employeeRecordId,
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            connCustom))
                                    {
                                        csUtils.WriteLog(null, "From 700, new data" +
                                            ", recordId: " + recordId +
                                            ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                            ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLog700Name);

                                        // insert data
                                        InsertWorkSegment(connCustom,
                                            String.Empty,
                                            item.CostCodeRecordId,
                                            employeeRecordId,
                                            String.Empty,
                                            timeIn.ToString("yyyy-MM-dd HH:mm:ss"),
                                            timeOut.ToString("yyyy-MM-dd HH:mm:ss"));
                                        i++;
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                csUtils.WriteLog(null, "recordId: " + recordId + ", Err: " + ex.Message, fileLog700Name);
                            }
                        }
                        #endregion

                        #region process data in custom
                        var sqlCheckCustom = settings.SqlCheckCustom + " AND [TimeIn] >= CAST('" + lastCheckTime + "' AS DATE)";
                        SqlCommand checkCommand = new SqlCommand(sqlCheckCustom, connCustom);
                        SqlDataReader checkReader = checkCommand.ExecuteReader();
                        List<WorkSegmentData> dataCheck = new List<WorkSegmentData>();
                        while (checkReader.Read())
                        {
                            WorkSegmentData objAdd = new WorkSegmentData()
                            {
                                RecordId = checkReader.GetValue(0).ToString(),
                                BreakType = checkReader.GetValue(1).ToString(),
                                CostCodeRecordId = checkReader.GetValue(2).ToString(),
                                EmployeeRecordId = checkReader.GetValue(3).ToString(),
                                JobCodeRecordId = checkReader.GetValue(4).ToString(),
                                TimeIn = checkReader.GetValue(5).ToString(),
                                TimeOut = checkReader.GetValue(6).ToString(),
                                TimeOutCalc = checkReader.GetValue(7).ToString()
                            };
                            dataCheck.Add(objAdd);
                        }
                        checkReader.Close();
                        checkCommand.Dispose();
                        foreach (var item in dataCheck)
                        {
                            var timeIn = DateTime.Parse(item.TimeIn, culture);
                            var hourIn = timeIn.TimeOfDay;
                            var timeOut = DateTime.Parse(item.TimeOut, culture);
                            var hourOut = timeOut.TimeOfDay;

                            var recordId = item.RecordId;
                            var costCodeRecordId = item.CostCodeRecordId;
                            var employeeRecordId = item.EmployeeRecordId;
                            var jobCodeRecordId = item.JobCodeRecordId;
                            try
                            {
                                if (hourOut.CompareTo(endLunch) > 0)
                                {
                                    if (hourIn.CompareTo(startBreak) < 0)
                                    {
                                        // missing break and lunch
                                        csUtils.WriteLog(null, "From custom, missing break and lunch" +
                                            ", recordId: " + recordId +
                                            ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                            ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLogCusName);

                                        // update data to before break
                                        UpdateWorkSegmentCustom(connCustom,
                                            timeIn.ToString("yyyy-MM-dd") + " 09:45:00",
                                            recordId);
                                        i++;

                                        // add new data after break
                                        InsertWorkSegmentCustom(connCustom,
                                            item.BreakType,
                                            costCodeRecordId,
                                            employeeRecordId,
                                            jobCodeRecordId,
                                            timeIn.ToString("yyyy-MM-dd") + " 10:00:00",
                                            timeIn.ToString("yyyy-MM-dd") + " 12:30:00",
                                            item.TimeOutCalc);
                                        i++;

                                        // add new data after lunch
                                        InsertWorkSegmentCustom(connCustom,
                                            item.BreakType,
                                            costCodeRecordId,
                                            employeeRecordId,
                                            jobCodeRecordId,
                                            timeIn.ToString("yyyy-MM-dd") + " 13:10:00",
                                            timeOut.ToString("yyyy-MM-dd HH:mm:ss"),
                                            item.TimeOutCalc);
                                        i++;
                                    }
                                    else if (hourIn.CompareTo(startLuch) < 0)
                                    {
                                        // missing lunch
                                        csUtils.WriteLog(null, "From custom, missing lunch" +
                                            ", recordId: " + recordId +
                                            ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                            ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLogCusName);

                                        // update data before lunch
                                        UpdateWorkSegmentCustom(connCustom,
                                            timeIn.ToString("yyyy-MM-dd") + " 12:30:00",
                                            recordId);
                                        i++;

                                        // add new data after lunch
                                        InsertWorkSegmentCustom(connCustom,
                                            item.BreakType,
                                            costCodeRecordId,
                                            employeeRecordId,
                                            jobCodeRecordId,
                                            timeIn.ToString("yyyy-MM-dd") + " 13:10:00",
                                            timeOut.ToString("yyyy-MM-dd HH:mm:ss"),
                                            item.TimeOutCalc);
                                        i++;
                                    }
                                }
                                else if (hourOut.CompareTo(endBreak) > 0)
                                {
                                    // missing break
                                    if (hourIn.CompareTo(startBreak) < 0)
                                    {
                                        csUtils.WriteLog(null, "From custom, missing break" +
                                            ", recordId: " + recordId +
                                            ", timeIn: " + timeIn.ToString("yyyy-MM-dd HH:mm:ss") +
                                            ", timeOut: " + timeOut.ToString("yyyy-MM-dd HH:mm:ss"), fileLogCusName);

                                        // update data to before break
                                        UpdateWorkSegmentCustom(connCustom,
                                            timeIn.ToString("yyyy-MM-dd") + " 09:45:00",
                                            recordId);
                                        i++;

                                        // add new data after break
                                        InsertWorkSegmentCustom(connCustom,
                                            item.BreakType,
                                            costCodeRecordId,
                                            employeeRecordId,
                                            jobCodeRecordId,
                                            timeIn.ToString("yyyy-MM-dd") + " 10:00:00",
                                            timeOut.ToString("yyyy-MM-dd HH:mm:ss"),
                                            item.TimeOutCalc);
                                        i++;
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                csUtils.WriteLog(null, "recordId: " + recordId + ", Err: " + ex.Message, fileLogCusName);
                            }
                        }
                        #endregion

                        File.WriteAllText(pathLastCheck, currentDate);

                        string fileLogCompltete = "BreakAndLunchComplete" + timeFile;
                        csUtils.WriteLog(null, "================= BreakAndLunch job COMPLETED !!!!!!!!!!!!!!! =================", fileLogCompltete);
                        csUtils.WriteLog(null, "Total data insert: " + i.ToString(), fileLogCompltete);

                        connCustom.Close();
                    }
                    catch (Exception ex)
                    {
                        csUtils.WriteLog(null, "Err: " + ex.Message, "ErrBreakAndLunchProgress" + timeFile);
                    }

                    Thread.Sleep(settings.SleepMinus * 60000); // millisecond
                }
            }
        }
    
        private bool CheckWorkSegment(
            string costCodeRecordId, 
            string employeeRecordId, 
            string timeIn, 
            SqlConnection connCustom)
        {
            var sqlCheck = "SELECT RecordId" +
                " FROM [tcp_EmployeeWork].[WorkSegment]" +
                " WHERE 1 = 1" +
                " AND CostCodeRecordId" + (string.IsNullOrEmpty(costCodeRecordId) ? " IS NULL" : " = " + costCodeRecordId) +
                " AND EmployeeRecordId = " + employeeRecordId +
                " AND TimeIn = '" + timeIn + "'";
            SqlCommand checkCommand = new SqlCommand(sqlCheck, connCustom);
            SqlDataReader checkReader = checkCommand.ExecuteReader();
            var lsCheck = new List<WorkSegmentData>();
            while (checkReader.Read())
            {
                WorkSegmentData objAdd = new WorkSegmentData()
                {
                    RecordId = checkReader.GetValue(0).ToString()
                };
                lsCheck.Add(objAdd);
            }
            checkReader.Close();
            checkCommand.Dispose();

            if (lsCheck.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    
        private void InsertWorkSegment(SqlConnection conn, 
            string breakType,
            string costCodeRecordId,
            string employeeRecordId, 
            string jobCodeRecordId, 
            string timeIn, 
            string timeOut)
        {
            string sql = "INSERT INTO [tcp_EmployeeWork].[WorkSegment] (" +
                "BreakType," +
                "CostCodeRecordId," +
                "EmployeeRecordId," +
                "JobCodeRecordId," +
                "TimeIn," +
                "TimeOut" +
            ") VALUES (" +
                (string.IsNullOrEmpty(breakType) ? "NULL" : breakType) + "," +
                (string.IsNullOrEmpty(costCodeRecordId) ? "NULL" : costCodeRecordId) + "," +
                employeeRecordId + "," +
                (string.IsNullOrEmpty(jobCodeRecordId) ? "NULL" : jobCodeRecordId) + ",'" +
                timeIn + "','" +
                timeOut + "'" +
            ")";
            SqlCommand command = new SqlCommand(sql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.InsertCommand = new SqlCommand(sql, conn);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
        }
    
        private void InsertWorkSegmentCustom(SqlConnection conn,
            string breakType, 
            string costCodeRecordId,  
            string employeeRecordId,
            string jobCodeRecordId, 
            string timeIn, 
            string timeOut, 
            string timeOutCalc)
        {
            string sql = "INSERT INTO [tcp_EmployeeWork].[WorkSegment] (" +
                "[BreakType]," +
                "[CostCodeRecordId]," +
                "[EmployeeRecordId]," +
                "[JobCodeRecordId]," +
                "[TimeIn]," +
                "[TimeOut]," +
                "[TimeOutCalc]) VALUES (" +
                (string.IsNullOrEmpty(breakType) ? "NULL" : breakType) + "," +
                (string.IsNullOrEmpty(costCodeRecordId) ? "NULL" : costCodeRecordId) + "," +
                employeeRecordId + "," +
                (string.IsNullOrEmpty(jobCodeRecordId) ? "NULL" : jobCodeRecordId) + ",'" +
                timeIn + "','" +
                timeOut + "'," + "" +
                (string.IsNullOrEmpty(timeOutCalc) ? "NULL" : "'" + timeOutCalc + "'") +
                ")";
            SqlCommand command = new SqlCommand(sql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.InsertCommand = new SqlCommand(sql, conn);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
        }
    
        private void UpdateWorkSegmentCustom(SqlConnection conn,
            string timeOut,
            string recordId)
        {
            string sql = "UPDATE [tcp_EmployeeWork].[WorkSegment] " +
                "SET [TimeOut] = '" + timeOut + "' " +
                "WHERE [RecordId] = " + recordId;
            SqlCommand command = new SqlCommand(sql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.InsertCommand = new SqlCommand(sql, conn);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
        }
    }

    public class EmployeeData
    {
        public string RecordId { get; set; }
    }

    public class WorkSegmentData
    {
        public string RecordId { get; set; }
        public string BreakType { get; set; }
        public string CostCodeRecordId { get; set; }
        public string EmployeeRecordId { get; set; }
        public string JobCodeRecordId { get; set; }
        public string TimeIn { get; set; }
        public string TimeOut { get; set; }
        public string TimeOutCalc { get; set; }
    }

    public class BreakAndLunchConfig
    {
        public bool AllowRun { get; set; }
        public int SleepMinus { get; set; }
        public string SqlGetEmployee { get; set; }
        public string SqlGetWorkSegment { get; set; }
        public string SqlCheckCustom { get; set; }
    }
}
