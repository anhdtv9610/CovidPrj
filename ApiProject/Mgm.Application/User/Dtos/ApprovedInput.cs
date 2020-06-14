using Abp.Application.Services.Dto;

namespace Mgm.User.Dtos
{
    public class ApprovedInput : PagedResultRequestDto
    {
        public string Username { get; set; }
    }
}
