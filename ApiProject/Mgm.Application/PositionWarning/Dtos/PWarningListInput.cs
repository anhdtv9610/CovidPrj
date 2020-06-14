using System;
using System.ComponentModel.DataAnnotations;

namespace Mgm.PositionWarning.Dtos
{
    public class PWarningListInput
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public DateTime VerifyDate { get; set; }
        [Required]
        public string Note { get; set; }
        [Required]
        public double Lng { get; set; }
        [Required]
        public double Lat { get; set; }
        [Required]
        public string Address { get; set; }
        [Required]
        public string PatientGroup { get; set; }
    }
}