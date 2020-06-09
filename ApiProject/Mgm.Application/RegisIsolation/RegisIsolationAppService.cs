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
                        obj => obj.Username.Contains(input.Keyword))
                    .Select(x => new RegisIsolationOutput()
                    {
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
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Contains(input.Keyword))
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public RegisIsolationOutput GetRegisIsolationDetail(string username)
        {
            try
            {
                return _regisIsolationsRepository.GetAll()
                    .Join(_usersRepository.GetAll(), t1 => t1.Username, t2 => t2.Username,
                    (t1, t2) => new
                    {
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
                    .Where(x => x.Username.Equals(username))
                    .ToList()
                    .Select(x => new RegisIsolationOutput()
                    {
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
                    .Where(x => x.Username.Equals(input.Username) && (x.RegisIsolationStatus == 1 || (x.RegisIsolationStatus == 0 && (x.CancelIsolationStatus == 1 || x.FinishIsolationStatus == 1))))
                    .ToListAsync();

                if (chckUser.Count == 0)
                {
                    await _regisIsolationsRepository.InsertAsync(new RegisIsolations()
                    {
                        Username = input.Username,
                        ProvinceCode = input.ProvinceCode,
                        DistrictCode = input.DistrictCode,
                        RegisAddress = input.RegisAddress,
                        RegisIsolationStatus = 1,
                        RegisDate = DateTime.UtcNow,
                        FinishIsolationStatus = 0,
                        FinishDate = null,
                        CancelIsolationStatus = 0,
                        CancelDate = null
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

        public async Task<ResultDto> UpdateFinishIsolation(CreateRegisIsolationInput input)
        {
            try
            {
                var finish = await _regisIsolationsRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username) && x.RegisIsolationStatus == 1 && x.FinishIsolationStatus == 0 && x.CancelIsolationStatus == 0)
                    .OrderByDescending(x => x.Id)
                    .FirstOrDefaultAsync();

                if (finish != null)
                {
                    finish.FinishIsolationStatus = 1;
                    finish.FinishDate = DateTime.UtcNow;

                    await _regisIsolationsRepository.UpdateAsync(finish);
                }
                else
                {
                    throw new UserFriendlyException(400, L("UserNotFound"));
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

        //public async Task<ResultDto> UpdatePassword(UpdatePasswordInput input)
        //{
        //    try
        //    {
        //        if (!string.IsNullOrEmpty(input.Password) && !new Regex(PasswordRegex).IsMatch(input.Password))
        //        {
        //            throw new UserFriendlyException(400, L("InvalidPasswordFormat"));
        //        }

        //        if (!string.IsNullOrEmpty(input.Password) && !input.Password.Equals(input.ConfirmPassword))
        //        {
        //            throw new UserFriendlyException(400, L("TwoPasswordsThatYouEnterIsInconsistent"));
        //        }

        //        Utils utils = new Utils();

        //        string passold = utils.MD5Hash(input.PasswordOld);

        //        var user = await _usersRepository.GetAll()
        //            .Where(x => x.Username.Equals(input.Username))
        //            .FirstOrDefaultAsync();

        //        var chckPass = await _usersRepository.GetAll()
        //            .Where(x => x.Password.Equals(passold))
        //            .FirstOrDefaultAsync();

        //        if (user != null)
        //        {
        //            if (chckPass != null)
        //            {
        //                user.Password = utils.MD5Hash(input.Password);
        //            }

        //            user.UpdatedDate = DateTime.UtcNow;

        //            await _usersRepository.UpdateAsync(user);
        //        }
        //        else
        //        {
        //            throw new UserFriendlyException(400, L("UserNotFound"));
        //        }

        //        ResultDto result = new ResultDto();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex.Message);
        //        throw new UserFriendlyException(500, ex.Message);
        //    }
        //}

        //public async Task<ResultDto> DeleteUser(string username)
        //{
        //    try
        //    {
        //        var user = await _usersRepository.GetAll()
        //            .Where(x => x.Username.Equals(username))
        //            .FirstOrDefaultAsync();

        //        var testHealth = await _testHealthRepository.GetAll()
        //            .Where(x => x.Username.Equals(username))
        //            .FirstOrDefaultAsync();

        //        if (user != null)
        //        {
        //            await _testHealthRepository.DeleteAsync(testHealth);
        //            await _usersRepository.DeleteAsync(user);
        //        }
        //        else
        //        {
        //            throw new UserFriendlyException(400, L("UserNotPound"));
        //        }

        //        ResultDto result = new ResultDto();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex.Message);
        //        throw new UserFriendlyException(500, ex.Message);
        //    }
        //}

        //public TestHealthOutput GetTestHealth(string username)
        //{
        //    try
        //    {
        //        return _testHealthRepository.GetAll()
        //            .Where(x => x.Username.Equals(username))
        //            .ToList()
        //            .Select(x => new TestHealthOutput()
        //            {
        //                Username = x.Username,
        //                IsFever = x.IsFever,
        //                IsCough = x.IsCough,
        //                IsDyspnoeic = x.IsDyspnoeic,
        //                IsTired = x.IsTired,
        //                HealthStatus = x.HealthStatus,
        //                HealthUpdDate = x.HealthUpdDate

        //            })
        //            .FirstOrDefault();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex.Message);
        //        throw new UserFriendlyException(500, ex.Message);
        //    }
        //}

        //public async Task<ResultDto> UpdateTestHealth(UpdateTestHealthInput input)
        //{
        //    try
        //    {
        //        var testHealth = await _testHealthRepository.GetAll()
        //            .Where(x => x.Username.Equals(input.Username))
        //            .FirstOrDefaultAsync();

        //        if (testHealth != null)
        //        {
        //            testHealth.IsFever = input.IsFever;
        //            testHealth.IsCough = input.IsCough;
        //            testHealth.IsDyspnoeic = input.IsDyspnoeic;
        //            testHealth.IsTired = input.IsTired;
        //            testHealth.HealthStatus = (input.IsFever + input.IsCough + input.IsDyspnoeic + input.IsTired);
        //            testHealth.HealthUpdDate = DateTime.UtcNow;

        //            await _testHealthRepository.UpdateAsync(testHealth);
        //        }
        //        else
        //        {
        //            throw new UserFriendlyException(400, L("UserNotFound"));
        //        }

        //        ResultDto result = new ResultDto();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex.Message);
        //        throw new UserFriendlyException(500, ex.Message);
        //    }
        //}
    }
}
