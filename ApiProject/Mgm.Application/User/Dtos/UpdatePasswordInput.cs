using System;
using System.ComponentModel.DataAnnotations;

namespace Mgm.User.Dtos
{
    public class UpdatePasswordInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        public string ConfirmPassword { get; set; }
        [Required]
        public string PasswordOld { get; set; }
        
    }
}
