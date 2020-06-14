using Abp.Application.Services;
using System.Web.Http;
using Mgm.PositionWarning.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.Covid19.PositionWarning;

namespace Mgm.PositionWarning
{
    public interface IPositionWarningAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<PositionWarningOutput> GetPositionWarningList();

        [HttpGet]
        PositionWarningOutput GetPositionWarningDetail(int id);

        [HttpPost]
        Task<ResultDto> CreatePositionWarning(CreatePWarningInput input);

        [HttpPost]
        Task<ResultDto> UpdatePositionWarning(UpdatePWarningInput input);

        [HttpPost] 
        Task<ResultDto> CreateMultiPositionWarning(CreateMultiPWarningInput input);

    }
}
