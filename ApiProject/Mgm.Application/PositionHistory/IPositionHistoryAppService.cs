using Abp.Application.Services;
using System.Web.Http;
using Mgm.PositionHistory.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.Covid19.PositionHistory;

namespace Mgm.PositionHistory
{
    public interface IPositionHistoryAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<PositionHistoryOutput> GetPositionHistoryList(FilterInput input);

        [HttpGet]
        PositionHistoryOutput GetPositionHistoryDetail(int id);

        [HttpPost]
        Task<ResultDto> CreateMultiPositionHistoryDetail(CreatePHistoryInput input);

    }
}
