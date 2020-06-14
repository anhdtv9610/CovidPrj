using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.PositionHistory
{
    [Table("PositionHistory")]
    public class PositionsHistory : Entity
    {
        public string Username { get; set; }
        public int TimeOut { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}