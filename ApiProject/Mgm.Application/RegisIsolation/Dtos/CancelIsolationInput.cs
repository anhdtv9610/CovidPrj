using System.ComponentModel.DataAnnotations;

namespace Mgm.RegisIsolation.Dtos
{
    public class CancelIsolationInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public int CancelIsolationStatus { get; set; }
    }
}