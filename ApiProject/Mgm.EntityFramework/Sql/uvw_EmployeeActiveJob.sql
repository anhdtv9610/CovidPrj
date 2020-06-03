Create VIEW [dbo].[uvw_EmployeeActiveJob]
AS
SELECT e.lastname, e.FirstName,max(cc.Name1) as WorkOrder,
max(cc.Name2) as Department, max(cc.Name3) Task, max(w.TimeIn) TimeIn
FROM [TimeClockPlus700].tcp_Employee.Employee e
inner join [MGMTimeClockCustom].tcp_EmployeeWork.WorkSegment w
on e.RecordId = w.EmployeeRecordId
inner join [MGMTimeClockCustom].tcp_EmployeeWork.CostCode cc on
w.CostCodeRecordId = cc.RecordId
where w.TimeIn <= dateadd(dd,-1, cast(getdate() as date))
group by e.lastname, e.FirstName