using Abp.Application.Services.Dto;
using System.ComponentModel.DataAnnotations;

namespace Mgm.KBYT.Dtos
{
    public class CreateKBYTInput : PagedResultRequestDto
    {
        [Required]
        public string Username { get; set; }
        public bool ContactWithPatient { get; set; }
        public bool BackFromDiseaseArea { get; set; }
        public bool ContactWithPersonBack { get; set; }
        public bool IsFever { get; set; }
        public bool IsCough { get; set; }
        public bool IsDyspoenic { get; set; }
        public bool IsTired { get; set; }
        public bool IsSoreThoroat { get; set; }
        public bool IsPneumonia { get; set; }
        public bool IsLiverish { get; set; }
        public bool IsBlood { get; set; }
        public bool IsPulmonic { get; set; }
        public bool IsCardiopathy { get; set; }
        public bool BloodPresure { get; set; }
        public bool HIVimmune { get; set; }
        public bool IsDiabetes { get; set; }
        public bool IsCancer { get; set; }
        public bool IsPregnant { get; set; }
    }
}