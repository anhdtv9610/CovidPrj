using Abp.Application.Services;
using System.Web.Http;
using Mgm.Address.Dtos;
using System.Threading.Tasks;
using System.Collections.Generic;
using Mgm.Utility.Dtos;
using Mgm.Covid19.Mst_District;
using Mgm.Covid19.Mst_Province;

namespace Mgm.Address
{
    public interface IAddressAppService : IApplicationService
    {
        [HttpPost]
        PageResultDto<ProvinceOutput> GetProvinceList(ProvinceFilterInput input);

        [HttpPost]
        PageResultDto<DistrictOutput> GetDistrictList(DistrictFilterInput input);

    }
}
