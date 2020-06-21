using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.PositionHistoryDetail
{
    [Table("PositionHistoryDetail")]
    public class PositionsHistoryDetail : Entity
    {
        public int TimeOutId { get; set; }
        public double Lng { get; set; }
        public double Lat { get; set; }
        public string Address { get; set; }
        public int IsWarning { get; set; }
        public DateTime VerifyDate { get; set; }
    }
}