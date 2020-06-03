using System;
using System.ComponentModel.DataAnnotations;

namespace Mgm.User.Dtos
{
    public class UpdateTestHealthInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public int IsFever { get; set; }
        [Required]
        public int IsCough { get; set; }
        [Required]
        public int IsDyspnoeic { get; set; }
        [Required]
        public int IsTired { get; set; }
        //[Required]
        //public int HealthStatus { get; set; }
    }
}
