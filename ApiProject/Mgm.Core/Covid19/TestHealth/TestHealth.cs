using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.TestHealth
{
    [Table("TestHealth")]
    public class TestHealth : Entity
    {
        //[Column("Id")]
        //public int Id { get; set; }
        public string Username { get; set; }
        public int IsFever { get; set; }
        public int IsCough { get; set; }
        public int IsDyspnoeic { get; set; }
        public int IsTired { get; set; }
        public int HealthStatus { get; set; }
        public DateTime HealthUpdDate { get; set; }
    }
}