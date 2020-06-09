using System;
using System.ComponentModel.DataAnnotations;
namespace Mgm.RegisIsolation.Dtos
{
    public class CreateRegisIsolationInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public string ProvinceCode { get; set; }
        [Required]
        public string DistrictCode { get; set; }
        [Required]
        public string RegisAddress { get; set; }
        //[Required]
        //public int RegisIsolationStatus { get; set; }

    }
}