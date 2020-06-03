using Abp.Application.Services.Dto;

namespace Mgm.Address.Dtos
{
    public class DistrictFilterInput : PagedResultRequestDto
    {
        public string Keyword { get; set; }
        public string ProvinceCode { get; set; }
    }
}
