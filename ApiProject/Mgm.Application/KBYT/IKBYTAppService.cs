using Abp.Application.Services;
using System.Web.Http;
using Mgm.KBYT.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.Covid19.KBYT;

namespace Mgm.KBYT
{
    public interface IKBYTAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<KBYTCN> GetKBYTList(FilterInput input);

        [HttpGet]
        KBYTCN GetKBYTDetail(string username);

        [HttpPost]
        Task<ResultDto> CreateKBYT(CreateKBYTInput input);

    }
}
