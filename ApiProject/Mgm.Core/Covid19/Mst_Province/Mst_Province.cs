using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.Mst_Province
{
    [Table("Mst_Province")]
    public class Mst_Province : Entity
    {
        public string ProvinceCode { get; set; }
        public string ProvinceName { get; set; }
    }
}