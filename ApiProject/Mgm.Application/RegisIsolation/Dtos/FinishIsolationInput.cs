using System.ComponentModel.DataAnnotations;

namespace Mgm.RegisIsolation.Dtos
{
    public class FinishIsolationInput
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public int FinishIsolationStatus { get; set; }
    }
}