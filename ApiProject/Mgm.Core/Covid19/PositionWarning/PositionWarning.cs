using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.PositionWarning
{
    [Table("PositionWarning")]
    public class PositionsWarning : Entity
    {
        public string Name { get; set; }
        public string VerifyDate { get; set; }
        public string Note { get; set; }
        public double Lng { get; set; }
        public double Lat { get; set; }
        public string Address { get; set; }
        public string PatientGroup { get; set; }
        public int TimeOut { get; set; }
        public int Radius { get; set; }
        public int IsCallAPI { get; set; }
        public int IsActive { get; set; }
        public string CreatedAdmin { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}