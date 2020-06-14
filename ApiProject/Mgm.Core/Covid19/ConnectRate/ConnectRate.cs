using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.ConnectRate
{
    [Table("ConnectRate")]
    public class ConnectRate : Entity
    {
        public string UserRating { get; set; }
        public int IdWarning { get; set; }
        public int IsRating { get; set; }
        public int Rating { get; set; }
        public DateTime? CreatedRate { get; set; }
    }
}