using Abp.Application.Services.Dto;

namespace Mgm.PositionHistory.Dtos
{
    public class FilterInput : PagedResultRequestDto
    {
        public string Username { get; set; }
        public string DateFrom { get; set; }
        public string DateTo { get; set; }
    }
}
