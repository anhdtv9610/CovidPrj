using System;
using System.Collections.Generic;

namespace Mgm.RegisIsolation.Dtos
{
    public class RegisIsolationOutput
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string FullName { get; set; }
        public string ProvinceCode { get; set; }
        public string ProvinceName { get; set; }
        public string DistrictCode { get; set; }
        public string DistrictName { get; set; }
        public string RegisAddress { get; set; }
        public int RegisIsolationStatus { get; set; }
        public DateTime? RegisDate { get; set; }
        public int FinishIsolationStatus { get; set; }
        public DateTime? FinishDate { get; set; }
        public int? CancelIsolationStatus { get; set; }
        public DateTime? CancelDate { get; set; }

    }
}
