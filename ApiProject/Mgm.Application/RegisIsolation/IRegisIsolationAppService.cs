using Abp.Application.Services;
using System.Web.Http;
using Mgm.User.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.MgmSys.MgmUser;

namespace Mgm.RegisIsolation
{
    public interface IRegisIsolationAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<UsersOutput> GetUserList(FilterInput input);

        [HttpGet]
        UsersOutput GetUserDetail(string username);

        [HttpPost]
        Task<ResultDto> UpdateUser(UpdateUserInput input);

        [HttpPost]
        Task<ResultDto> CreateUser(CreateUserInput input);

        [HttpGet]
        Task<ResultDto> DeleteUser(string username);

        [HttpPost]
        Task<ResultDto> UpdatePassword(UpdatePasswordInput input);

        [HttpGet]
        TestHealthOutput GetTestHealth(string username);

        [HttpPost]
        Task<ResultDto> UpdateTestHealth(UpdateTestHealthInput input);
    }
}
