using Abp.Application.Services.Dto;

namespace Mgm.Address.Dtos
{
    public class ProvinceFilterInput : PagedResultRequestDto
    {
        public string Keyword { get; set; }
    }
}
