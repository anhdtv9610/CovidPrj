using Abp.Application.Services.Dto;

namespace Mgm.RegisIsolation.Dtos
{
    public class FilterInput : PagedResultRequestDto
    {
        public string Keyword { get; set; }
    }
}
