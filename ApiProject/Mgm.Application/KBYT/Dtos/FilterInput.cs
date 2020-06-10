using Abp.Application.Services.Dto;

namespace Mgm.KBYT.Dtos
{
    public class FilterInput : PagedResultRequestDto
    {
        public string Keyword { get; set; }
    }
}
