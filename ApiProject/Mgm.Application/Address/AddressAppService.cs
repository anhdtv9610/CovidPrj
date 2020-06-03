using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Abp.Collections.Extensions;
using Abp.Domain.Repositories;
using Abp.Extensions;
using Abp.UI;
using Mgm.Covid19.User;
using Mgm.Covid19.TestHealth;
using Mgm.Covid19.Mst_Province;
using Mgm.Covid19.Mst_District;
using Mgm.Address.Dtos;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;

namespace Mgm.Address
{
    public class AddressAppService : MgmAppServiceBase, IAddressAppService
    {
        public const string PasswordRegex = "(?=^.{8,}$)(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\\s)[0-9a-zA-Z!@#$%^&*()]*$";

        private readonly IRepository<Mst_Province> _provinceRepository;
        private readonly IRepository<Mst_District> _districtRepository;

        public AddressAppService(
            IRepository<Mst_Province> provinceRepository,
            IRepository<Mst_District> districtRepository)
        {
            _provinceRepository = provinceRepository;
            _districtRepository = districtRepository;
        }

        public PageResultDto<ProvinceOutput> GetProvinceList(ProvinceFilterInput input)
        {
            try
            {
                PageResultDto<ProvinceOutput> objResult = new PageResultDto<ProvinceOutput>();

                objResult.items = _provinceRepository.GetAll()
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.ProvinceName.ToUpper().Contains(input.Keyword.ToUpper()))
                    .Select(x => new ProvinceOutput()
                    {
                        ProvinceCode = x.ProvinceCode,
                        ProvinceName = x.ProvinceName

                    })
                    .ToList();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }
        public PageResultDto<DistrictOutput> GetDistrictList(DistrictFilterInput input)
        {
            try
            {
                PageResultDto<DistrictOutput> objResult = new PageResultDto<DistrictOutput>();

                objResult.items = _districtRepository.GetAll()
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.DistrictName.ToUpper().Contains(input.Keyword.ToUpper()))
                    .WhereIf(!input.ProvinceCode.IsNullOrWhiteSpace(),
                        obj => obj.ProvinceCode.ToUpper().Equals(input.ProvinceCode.ToUpper()))
                    .Select(x => new DistrictOutput()
                    {
                        DistrictCode = x.DistrictCode,
                        ProvinceCode = x.ProvinceCode,
                        DistrictName = x.DistrictName

                    })
                    .ToList();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }
    }
}
