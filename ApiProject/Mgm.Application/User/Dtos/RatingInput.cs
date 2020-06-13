using Abp.Application.Services.Dto;

namespace Mgm.User.Dtos
{
    public class RatingInput : PagedResultRequestDto
    {
        public string Username { get; set; }
        public int Rating { get; set; }
    }
}
