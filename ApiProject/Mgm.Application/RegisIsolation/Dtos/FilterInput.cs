using Abp.Application.Services.Dto;
using System;

namespace Mgm.RegisIsolation.Dtos
{
    public class FilterInput : PagedResultRequestDto
    {
        public string Keyword { get; set; }
        public int RegisIsolationStatus { get; set; }
        public int FinishIsolationStatus { get; set; }
        public int CancelIsolationStatus { get; set; }
    }
}
