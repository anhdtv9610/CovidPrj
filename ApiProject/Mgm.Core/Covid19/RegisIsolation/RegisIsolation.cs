using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.RegisIsolation
{
    [Table("RegisIsolation")]
    public class RegisIsolation : Entity
    {
        //[Column("Id")]
        //public int Id { get; set; }
        public string Username { get; set; }
        public string ProvinceCode { get; set; }
        public string DistrictCode { get; set; }
        public string RegisAddress { get; set; }
        public int? RegisIsolationStatus { get; set; }
        public DateTime? RegisDate { get; set; }
        public int? FinishIsolationStatus { get; set; }
        public DateTime? FinishDate { get; set; }
        public int? CancelIsolationStatus { get; set; }
        public DateTime? CancelDate { get; set; }
    }
}