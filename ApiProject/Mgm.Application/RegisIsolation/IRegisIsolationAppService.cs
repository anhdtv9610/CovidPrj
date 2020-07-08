using Abp.Application.Services;
using System.Web.Http;
using Mgm.RegisIsolation.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.MgmSys.MgmUser;

namespace Mgm.RegisIsolation
{
    public interface IRegisIsolationAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<RegisIsolationOutput> GetRegisIsolationsList(FilterInput input);

        [HttpGet]
        RegisIsolationOutput GetRegisIsolationDetail(int id);

        [HttpPost]
        Task<ResultDto> CreateRegisIsolation(CreateRegisIsolationInput input);

        [HttpPost]
        Task<ResultDto> UpdateFinishIsolation(FinishIsolationInput input);

        [HttpPost]
        Task<ResultDto> UpdateApprovedIsolation(CancelIsolationInput input);

    }
}
