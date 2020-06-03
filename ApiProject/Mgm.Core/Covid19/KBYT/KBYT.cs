using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.KBYT
{
    [Table("KBYT")]
    public class KBYT : Entity
    {
        //[Column("Id")]
        //public int Id { get; set; }
        public string Username { get; set; }
    }
}