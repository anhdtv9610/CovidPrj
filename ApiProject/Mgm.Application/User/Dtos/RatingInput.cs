using Abp.Application.Services.Dto;
using System.ComponentModel.DataAnnotations;

namespace Mgm.User.Dtos
{
    public class RatingInput : PagedResultRequestDto
    {
        [Required]
        public string CreatedAdmin { get; set; } // Lấy trong bảng PositionWarning
        [Required]
        public int IdWarning { get; set; } // Id trong bảng PositionWarning
        [Required]
        public string UserRating { get; set; } // Lấy Username login
        [Required]
        public int Rating { get; set; }
    }
}
