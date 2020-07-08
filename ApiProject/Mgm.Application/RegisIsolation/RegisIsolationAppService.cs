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
using Mgm.Covid19.RegisIsolation;
using Mgm.Covid19.Mst_Province;
using Mgm.Covid19.Mst_District;
using Mgm.RegisIsolation.Dtos;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;
using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Drawing.Diagrams;

namespace Mgm.RegisIsolation
{
    public class RegisIsolationAppService : MgmAppServiceBase, IRegisIsolationAppService
    {
        private readonly IRepository<Users> _usersRepository;
        private readonly IRepository<RegisIsolations> _regisIsolationsRepository;
        private readonly IRepository<Mst_Province> _provinceRepository;
        private readonly IRepository<Mst_District> _districtRepository;

        public RegisIsolationAppService(
            IRepository<Users> usersRepository,
            IRepository<RegisIsolations> regisIsolationsRepository,
            IRepository<Mst_Province> provinceRepository,
            IRepository<Mst_District> districtRepository)
        {
            _usersRepository = usersRepository;
            _regisIsolationsRepository = regisIsolationsRepository;
            _provinceRepository = provinceRepository;
            _districtRepository = districtRepository;
        }

        public PageResultDto<RegisIsolationOutput> GetRegisIsolationsList(FilterInput input)
        {
            try
            {
                PageResultDto<RegisIsolationOutput> objResult = new PageResultDto<RegisIsolationOutput>();

                objResult.items = _regisIsolationsRepository.GetAll()
                    .Join(_usersRepository.GetAll(), t1 => t1.Username, t2 => t2.Username,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t2.FullName,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .Join(_districtRepository.GetAll(), t1 => t1.DistrictCode, t2 => t2.DistrictCode,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t1.FullName,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t2.DistrictName,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .Join(_provinceRepository.GetAll(), t1 => t1.ProvinceCode, t2 => t2.ProvinceCode,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t1.FullName,
                        t1.ProvinceCode,
                        t2.ProvinceName,
                        t1.DistrictCode,
                        t1.DistrictName,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Contains(input.Keyword)
                        || obj.FullName.ToUpper().Contains(input.Keyword.ToUpper())
                        || obj.ProvinceName.ToUpper().Contains(input.Keyword.ToUpper())
                        || obj.DistrictName.ToUpper().Contains(input.Keyword.ToUpper()))
                    .WhereIf(input.RegisIsolationStatus != 2,
                        obj => obj.RegisIsolationStatus == input.RegisIsolationStatus)
                    .WhereIf(input.CancelIsolationStatus != 2,
                        obj => obj.CancelIsolationStatus == input.CancelIsolationStatus)
                    .WhereIf(input.FinishIsolationStatus != 2,
                        obj => obj.FinishIsolationStatus == input.FinishIsolationStatus)
                    .Select(x => new RegisIsolationOutput()
                    {
                        Id = x.Id,
                        Username = x.Username,
                        FullName = x.FullName,
                        ProvinceCode = x.ProvinceCode,
                        ProvinceName = x.ProvinceName,
                        DistrictCode = x.DistrictCode,
                        DistrictName = x.DistrictName,
                        RegisAddress = x.RegisAddress,
                        RegisIsolationStatus = x.RegisIsolationStatus,
                        RegisDate = x.RegisDate,
                        FinishIsolationStatus = x.FinishIsolationStatus,
                        FinishDate = x.FinishDate,
                        CancelIsolationStatus = x.CancelIsolationStatus,
                        CancelDate = x.CancelDate

                    })
                    .Skip((input.SkipCount - 1) * input.MaxResultCount)
                    .Take(input.MaxResultCount)
                    .ToList();

                objResult.totalCount = _regisIsolationsRepository.GetAll()
                    .Join(_usersRepository.GetAll(), t1 => t1.Username, t2 => t2.Username,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t2.FullName,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t1.RegisIsolationStatus,
                        t1.FinishIsolationStatus,
                        t1.CancelIsolationStatus
                    })
                    .Join(_districtRepository.GetAll(), t1 => t1.DistrictCode, t2 => t2.DistrictCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.FullName,
                        t1.ProvinceCode,
                        t2.DistrictName,
                        t1.RegisIsolationStatus,
                        t1.FinishIsolationStatus,
                        t1.CancelIsolationStatus
                    })
                    .Join(_provinceRepository.GetAll(), t1 => t1.ProvinceCode, t2 => t2.ProvinceCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.FullName,
                        t2.ProvinceName,
                        t1.DistrictName,
                        t1.RegisIsolationStatus,
                        t1.FinishIsolationStatus,
                        t1.CancelIsolationStatus
                    })
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Contains(input.Keyword)
                        || obj.FullName.ToUpper().Contains(input.Keyword.ToUpper())
                        || obj.ProvinceName.ToUpper().Contains(input.Keyword.ToUpper())
                        || obj.DistrictName.ToUpper().Contains(input.Keyword.ToUpper()))
                    .WhereIf(input.RegisIsolationStatus != 2,
                        obj => obj.RegisIsolationStatus == input.RegisIsolationStatus)
                    .WhereIf(input.CancelIsolationStatus != 2,
                        obj => obj.CancelIsolationStatus == input.CancelIsolationStatus)
                    .WhereIf(input.FinishIsolationStatus != 2,
                        obj => obj.FinishIsolationStatus == input.FinishIsolationStatus)
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public RegisIsolationOutput GetRegisIsolationDetail(int id )
        {
            try
            {
                return _regisIsolationsRepository.GetAll()
                    .Join(_usersRepository.GetAll(), t1 => t1.Username, t2 => t2.Username,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t2.FullName,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .Join(_districtRepository.GetAll(), t1 => t1.DistrictCode, t2 => t2.DistrictCode,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t1.FullName,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t2.DistrictName,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .Join(_provinceRepository.GetAll(), t1 => t1.ProvinceCode, t2 => t2.ProvinceCode,
                    (t1, t2) => new
                    {
                        t1.Id,
                        t1.Username,
                        t1.FullName,
                        t1.ProvinceCode,
                        t2.ProvinceName,
                        t1.DistrictCode,
                        t1.DistrictName,
                        t1.RegisAddress,
                        t1.RegisIsolationStatus,
                        t1.RegisDate,
                        t1.FinishIsolationStatus,
                        t1.FinishDate,
                        t1.CancelIsolationStatus,
                        t1.CancelDate
                    })
                    .Where(x => x.Id == id)
                    .ToList()
                    .Select(x => new RegisIsolationOutput()
                    {
                        Id = x.Id,
                        Username = x.Username,
                        FullName = x.FullName,
                        ProvinceCode = x.ProvinceCode,
                        ProvinceName = x.ProvinceName,
                        DistrictCode = x.DistrictCode,
                        DistrictName = x.DistrictName,
                        RegisAddress = x.RegisAddress,
                        RegisIsolationStatus = x.RegisIsolationStatus,
                        RegisDate = x.RegisDate,
                        FinishIsolationStatus = x.FinishIsolationStatus,
                        FinishDate = x.FinishDate,
                        CancelIsolationStatus = x.CancelIsolationStatus,
                        CancelDate = x.CancelDate

                    })
                    .FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> CreateRegisIsolation(CreateRegisIsolationInput input)
        {
            try
            {
                var chckUser = await _regisIsolationsRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username) && x.RegisIsolationStatus == Flag.Active && (x.CancelIsolationStatus == CancelIso.WAIT || (x.CancelIsolationStatus == CancelIso.APPROVED && x.FinishIsolationStatus == Flag.InActive)))
                    //.OrderByDescending(x => x.Id)
                    .ToListAsync();

                if (chckUser.Count == 0)
                {
                    await _regisIsolationsRepository.InsertAsync(new RegisIsolations()
                    {
                        Username = input.Username,
                        ProvinceCode = input.ProvinceCode,
                        DistrictCode = input.DistrictCode,
                        RegisAddress = input.RegisAddress,
                        RegisIsolationStatus = Flag.Active,
                        RegisDate = DateTime.UtcNow,
                        FinishIsolationStatus = Flag.InActive,
                        FinishDate = null,
                        CancelIsolationStatus = CancelIso.WAIT,
                        CancelDate = DateTime.UtcNow
                    });
                }
                else
                {
                    throw new UserFriendlyException(400, L("UserRegisterIsolated"));
                }

                ResultDto result = new ResultDto();
                return result;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> UpdateFinishIsolation(FinishIsolationInput input)
        {
            try
            {
                var finish = await _regisIsolationsRepository.GetAll()
                    .Where(x => x.Id == input.Id && x.RegisIsolationStatus == Flag.Active && x.FinishIsolationStatus == Flag.InActive && x.CancelIsolationStatus == CancelIso.APPROVED)
                    //.OrderByDescending(x => x.Id)
                    .FirstOrDefaultAsync();

                if (finish != null)
                {
                    finish.FinishIsolationStatus = input.FinishIsolationStatus;
                    finish.FinishDate = DateTime.UtcNow;

                    await _regisIsolationsRepository.UpdateAsync(finish);
                }
                else
                {
                    throw new UserFriendlyException(400, L("ErrorFinishIsolation"));
                }

                ResultDto result = new ResultDto();
                return result;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> UpdateApprovedIsolation(CancelIsolationInput input)
        {
            try
            {
                var approved = await _regisIsolationsRepository.GetAll()
                    .Where(x => x.Id == input.Id && x.RegisIsolationStatus == Flag.Active && x.FinishIsolationStatus == Flag.InActive && x.CancelIsolationStatus == CancelIso.WAIT)
                    //.OrderByDescending(x => x.Id)
                    .FirstOrDefaultAsync();

                if (approved != null)
                {
                    approved.CancelIsolationStatus = input.CancelIsolationStatus;
                    approved.CancelDate = DateTime.UtcNow;

                    await _regisIsolationsRepository.UpdateAsync(approved);
                }
                else
                {
                    throw new UserFriendlyException(400, L("ErrorApprovedIsolation"));
                }

                ResultDto result = new ResultDto();
                return result;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }
    }
}
