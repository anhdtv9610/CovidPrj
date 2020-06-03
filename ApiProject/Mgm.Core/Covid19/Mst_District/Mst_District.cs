using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.Mst_District
{
    [Table("Mst_District")]
    public class Mst_District : Entity
    {
        public string DistrictCode { get; set; }
        public string ProvinceCode { get; set; }
        public string DistrictName { get; set; }
    }
}