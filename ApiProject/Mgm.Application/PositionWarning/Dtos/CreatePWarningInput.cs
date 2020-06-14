using System;

namespace Mgm.PositionWarning.Dtos
{
    public class CreatePWarningInput
    {
        public string Name { get; set; }
        public DateTime VerifyDate { get; set; }
        public string Note { get; set; }
        public double Lng { get; set; }
        public double Lat { get; set; }
        public string Address { get; set; }
        //public string PatientGroup { get; set; }
        public int TimeOut { get; set; }
        public int Radius { get; set; }
        public string CreatedAdmin { get; set; }
    }
}