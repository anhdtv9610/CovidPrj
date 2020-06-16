using Abp.Application.Services.Dto;

namespace Mgm.PositionWarning.Dtos
{
    public class FilterInput : PagedResultRequestDto
    {
        public int id { get; set; }
        public string UserRating { get; set; } // User đăng nhập
    }
}
