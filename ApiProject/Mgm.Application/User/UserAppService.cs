﻿using System;
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
//using Mgm.MgmSys.MgmUserGroup;
using Mgm.User.Dtos;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;

namespace Mgm.User
{
    public class UserAppService : MgmAppServiceBase, IUserAppService
    {
        public const string PasswordRegex = "(?=^.{8,}$)(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\\s)[0-9a-zA-Z!@#$%^&*()]*$";

        private readonly IRepository<Users> _usersRepository;
        private readonly IRepository<TestHealth> _testHealthRepository;
        private readonly IRepository<Mst_Province> _provinceRepository;
        private readonly IRepository<Mst_District> _districtRepository;

        public UserAppService(
            IRepository<Users> usersRepository,
            IRepository<TestHealth> testHealthRepository,
            IRepository<Mst_Province> provinceRepository,
            IRepository<Mst_District> districtRepository)
        {
            _usersRepository = usersRepository;
            _testHealthRepository = testHealthRepository;
            _provinceRepository = provinceRepository;
            _districtRepository = districtRepository;
        }

        public PageResultDto<UsersOutput> GetUserList(FilterInput input)
        {
            try
            {
                PageResultDto<UsersOutput> objResult = new PageResultDto<UsersOutput>();

                objResult.items = _usersRepository.GetAll()
                    .Join(_districtRepository.GetAll(), t1 => t1.DistrictCode, t2 => t2.DistrictCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.GroupCode,
                        t1.FullName,
                        t1.BirthDay,
                        t1.Sex,
                        t1.CMND,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t2.DistrictName,
                        t1.Address,
                        t1.IsActive,
                        t1.CreatedDate,
                        t1.UpdatedDate
                    })
                    .Join(_provinceRepository.GetAll(), t1 => t1.ProvinceCode, t2 => t2.ProvinceCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.GroupCode,
                        t1.FullName,
                        t1.BirthDay,
                        t1.Sex,
                        t1.CMND,
                        t1.ProvinceCode,
                        t2.ProvinceName,
                        t1.DistrictCode,
                        t1.DistrictName,
                        t1.Address,
                        t1.IsActive,
                        t1.CreatedDate,
                        t1.UpdatedDate
                    })
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Equals(input.Keyword))
                    .Select(x => new UsersOutput()
                    {
                        Username = x.Username,
                        GroupCode = x.GroupCode,
                        FullName = x.FullName,
                        BirthDay = x.BirthDay,
                        Sex = x.Sex,
                        CMND = x.CMND,
                        ProvinceCode = x.ProvinceCode,
                        ProvinceName = x.ProvinceName,
                        DistrictCode = x.DistrictCode,
                        DistrictName = x.DistrictName,
                        Address = x.Address,
                        IsActive = x.IsActive,
                        CreatedDate = x.CreatedDate,
                        UpdatedDate = x.UpdatedDate

                    })
                    .Where(x => x.IsActive == 1)
                    .Skip((input.SkipCount - 1) * input.MaxResultCount)
                    .Take(input.MaxResultCount)
                    .ToList();

                objResult.totalCount = _usersRepository.GetAll()
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Id.Equals(input.Keyword))
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public UsersOutput GetUserDetail(string username)
        {
            try
            {
                return _usersRepository.GetAll()
                    .Join(_districtRepository.GetAll(), t1 => t1.DistrictCode, t2 => t2.DistrictCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.GroupCode,
                        t1.FullName,
                        t1.BirthDay,
                        t1.Sex,
                        t1.CMND,
                        t1.ProvinceCode,
                        t1.DistrictCode,
                        t2.DistrictName,
                        t1.Address,
                        t1.IsActive,
                        t1.CreatedDate,
                        t1.UpdatedDate
                    })
                    .Join(_provinceRepository.GetAll(), t1 => t1.ProvinceCode, t2 => t2.ProvinceCode,
                    (t1, t2) => new
                    {
                        t1.Username,
                        t1.GroupCode,
                        t1.FullName,
                        t1.BirthDay,
                        t1.Sex,
                        t1.CMND,
                        t1.ProvinceCode,
                        t2.ProvinceName,
                        t1.DistrictCode,
                        t1.DistrictName,
                        t1.Address,
                        t1.IsActive,
                        t1.CreatedDate,
                        t1.UpdatedDate
                    })
                    .Where(x => x.Username.Equals(username))
                    .ToList()
                    .Select(x => new UsersOutput()
                    {
                        Username = x.Username,
                        GroupCode = x.GroupCode,
                        FullName = x.FullName,
                        BirthDay = x.BirthDay,
                        Sex = x.Sex,
                        CMND = x.CMND,
                        ProvinceCode = x.ProvinceCode,
                        ProvinceName = x.ProvinceName,
                        DistrictCode = x.DistrictCode,
                        DistrictName = x.DistrictName,
                        Address = x.Address,
                        IsActive = x.IsActive,
                        CreatedDate = x.CreatedDate,
                        UpdatedDate = x.UpdatedDate

                    })
                    .FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> CreateUser(CreateUserInput input)
        {
            try
            {
                if (!new Regex(PasswordRegex).IsMatch(input.Password))
                {
                    throw new UserFriendlyException(200, L("InvalidPasswordFormat"));
                }

                if (!input.Password.Equals(input.ConfirmPassword))
                {
                    throw new UserFriendlyException(200, L("TwoPasswordsThatYouEnterIsInconsistent"));
                }

                var culture = CultureInfo.InvariantCulture;
                var birthDate = DateTime.Parse(input.BirthDay);
                string groupCode = "USER";

                var chckUser = await _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username) || x.CMND.Equals(input.CMND))
                    .ToListAsync();

                if (chckUser.Count == 0)
                {
                    Utils utils = new Utils();
                    await _usersRepository.InsertAsync(new Users()
                    {
                        Username = input.Username,
                        Password = utils.MD5Hash(input.Password),
                        GroupCode = groupCode,
                        FullName = input.FullName,
                        BirthDay = birthDate,
                        Sex = input.Sex,
                        CMND = input.CMND,
                        ProvinceCode = input.ProvinceCode,
                        DistrictCode = input.DistrictCode,
                        Address = input.Address,
                        IsActive = 1,
                        CreatedDate = DateTime.UtcNow,
                        UpdatedDate = DateTime.UtcNow
                    });

                    await _testHealthRepository.InsertAsync(new TestHealth()
                    {
                        Username = input.Username,
                        IsFever = 0,
                        IsCough = 0,
                        IsDyspnoeic = 0,
                        IsTired = 0,
                        HealthStatus = 0,
                        HealthUpdDate = DateTime.UtcNow
                    });
                }
                else
                {
                    throw new UserFriendlyException(200, L("UserOrCMNDExisted"));
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

        public async Task<ResultDto> UpdateUser(UpdateUserInput input)
        {
            try
            {
                //if (!string.IsNullOrEmpty(input.Password) && !new Regex(PasswordRegex).IsMatch(input.Password))
                //{
                //    throw new UserFriendlyException(400, L("InvalidPasswordFormat"));
                //}

                //if (!string.IsNullOrEmpty(input.Password) && !input.Password.Equals(input.ConfirmPassword))
                //{
                //    throw new UserFriendlyException(400, L("TwoPasswordsThatYouEnterIsInconsistent"));
                //}

                var user = await _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username))
                    .FirstOrDefaultAsync();

                var CheckCMND = _usersRepository.GetAllList()
                    .Where(x => !x.Username.Equals(input.Username) && x.CMND.Equals(input.CMND)).FirstOrDefault();

                var culture = CultureInfo.InvariantCulture;
                var birthDate = DateTime.Parse(input.BirthDay, culture);

                if (user != null)
                {
                    if (CheckCMND == null)
                    {
                        user.CMND = input.CMND;
                    }
                    else
                    {
                        throw new UserFriendlyException(200, L("TheCMNDInputAlreadyExist"));
                    }
                    user.FullName = input.FullName;
                    user.BirthDay = birthDate;
                    user.Sex = input.Sex;
                    user.ProvinceCode = input.ProvinceCode;
                    user.DistrictCode = input.DistrictCode;
                    user.Address = input.Address;
                    user.IsActive = input.IsActive;
                    user.UpdatedDate = DateTime.UtcNow;

                    await _usersRepository.UpdateAsync(user);
                }
                else
                {
                    throw new UserFriendlyException(200, L("UserNotFound"));
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

        public async Task<ResultDto> UpdatePassword(UpdatePasswordInput input)
        {
            try
            {
                if (!string.IsNullOrEmpty(input.Password) && !new Regex(PasswordRegex).IsMatch(input.Password))
                {
                    throw new UserFriendlyException(400, L("InvalidPasswordFormat"));
                }

                if (!string.IsNullOrEmpty(input.Password) && !input.Password.Equals(input.ConfirmPassword))
                {
                    throw new UserFriendlyException(400, L("TwoPasswordsThatYouEnterIsInconsistent"));
                }

                Utils utils = new Utils();

                string passold = utils.MD5Hash(input.PasswordOld);

                var user = await _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username))
                    .FirstOrDefaultAsync();

                var chckPass = await _usersRepository.GetAll()
                    .Where(x => x.Password.Equals(passold))
                    .FirstOrDefaultAsync();

                if (user != null)
                {
                    if (chckPass != null)
                    {
                        user.Password = utils.MD5Hash(input.Password);
                    }
                    
                    user.UpdatedDate = DateTime.UtcNow;

                    await _usersRepository.UpdateAsync(user);
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

        public async Task<ResultDto> DeleteUser(string username)
        {
            try
            {
                var user = await _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(username))
                    .FirstOrDefaultAsync();

                var testHealth = await _testHealthRepository.GetAll()
                    .Where(x => x.Username.Equals(username))
                    .FirstOrDefaultAsync();

                if (user != null)
                {
                    await _testHealthRepository.DeleteAsync(testHealth);
                    await _usersRepository.DeleteAsync(user);
                }
                else
                {
                    throw new UserFriendlyException(400, L("UserNotPound"));
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

        public TestHealthOutput GetTestHealth(string username)
        {
            try
            {
                return _testHealthRepository.GetAll()
                    .Where(x => x.Username.Equals(username))
                    .ToList()
                    .Select(x => new TestHealthOutput()
                    {
                        Username = x.Username,
                        IsFever = x.IsFever,
                        IsCough = x.IsCough,
                        IsDyspnoeic = x.IsDyspnoeic,
                        IsTired = x.IsTired,
                        HealthStatus = x.HealthStatus,
                        HealthUpdDate = x.HealthUpdDate

                    })
                    .FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> UpdateTestHealth(UpdateTestHealthInput input)
        {
            try
            {
                var testHealth = await _testHealthRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username))
                    .FirstOrDefaultAsync();

                if (testHealth != null)
                {
                    testHealth.IsFever = input.IsFever;
                    testHealth.IsCough = input.IsCough;
                    testHealth.IsDyspnoeic = input.IsDyspnoeic;
                    testHealth.IsTired = input.IsTired;
                    testHealth.HealthStatus = (input.IsFever + input.IsCough + input.IsDyspnoeic + input.IsTired);
                    testHealth.HealthUpdDate = DateTime.UtcNow;

                    await _testHealthRepository.UpdateAsync(testHealth);
                }
                else
                {
                    throw new UserFriendlyException(200, L("UserNotFound"));
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
