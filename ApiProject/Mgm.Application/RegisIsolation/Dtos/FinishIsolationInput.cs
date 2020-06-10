using System.ComponentModel.DataAnnotations;

namespace Mgm.RegisIsolation.Dtos
{
    public class FinishIsolationInput
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public int FinishIsolationStatus { get; set; }
    }
}