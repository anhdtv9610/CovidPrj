using System.ComponentModel.DataAnnotations;

namespace Mgm.RegisIsolation.Dtos
{
    public class CancelIsolationInput
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public int CancelIsolationStatus { get; set; }
    }
}