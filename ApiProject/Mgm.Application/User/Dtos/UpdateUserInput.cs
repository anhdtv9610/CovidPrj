using System;
using System.ComponentModel.DataAnnotations;

namespace Mgm.User.Dtos
{
    public class UpdateUserInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public string FullName { get; set; }
        [Required]
        public string BirthDay { get; set; }
        [Required]
        public string Sex { get; set; }
        [Required]
        public string CMND { get; set; }
        [Required]
        public string ProvinceCode { get; set; }
        [Required]
        public string DistrictCode { get; set; }
        [Required]
        public string Address { get; set; }
        public int IsActive { get; set; }
        public int IsRegisAdmin { get; set; }
    }
}
