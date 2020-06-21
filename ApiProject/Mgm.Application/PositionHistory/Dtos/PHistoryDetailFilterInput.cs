
using Abp.Application.Services.Dto;

namespace Mgm.PositionHistory.Dtos
{
    public class PHistoryDetailFilterInput : PagedResultRequestDto
    {
        public int TimeOutId { get; set; } // truyền Id trong bảng PositionHistory <ẩn đi>
        public int IsWarning { get; set; }
        public string DateFrom { get; set; }
        public string DateTo { get; set; }
    }
}
