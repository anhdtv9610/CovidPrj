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
using Mgm.Covid19.PositionWarning;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;
using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Drawing.Diagrams;
using Mgm.PositionWarning.Dtos;

namespace Mgm.PositionWarning
{
    public class PositionWarningAppService : MgmAppServiceBase, IPositionWarningAppService
    {
        private readonly IRepository<Users> _usersRepository;
        private readonly IRepository<PositionsWarning> _positionsWarningRepository;

        public PositionWarningAppService(
            IRepository<Users> usersRepository,
            IRepository<PositionsWarning> positionsWarningRepository)
        {
            _usersRepository = usersRepository;
            _positionsWarningRepository = positionsWarningRepository;
        }

        public PageResultDto<PositionWarningOutput> GetPositionWarningList()
        {
            try
            {
                PageResultDto<PositionWarningOutput> objResult = new PageResultDto<PositionWarningOutput>();

                objResult.items = _positionsWarningRepository.GetAll()
                    .Where(x => x.IsActive == 1)
                    .Select(x => new PositionWarningOutput()
                    {
                        Name = x.Name,
                        VerifyDate = x.VerifyDate,
                        Note = x.Note,
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        PatientGroup = x.PatientGroup,
                        IsCallAPI = x.IsCallAPI,
                        IsActive = x.IsActive,
                        CreatedAdmin = x.CreatedAdmin,
                        CreatedDate = x.CreatedDate,
                        UpdatedDate = x.UpdatedDate
                    })
                    .ToList();

                objResult.totalCount = _positionsWarningRepository.GetAll()
                    .Where(x => x.IsActive == 1)
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public PositionWarningOutput GetPositionWarningDetail(int id)
        {
            try
            {
                return _positionsWarningRepository.GetAll()
                    .Where(x => x.Id == id && x.IsActive == 1)
                    .Join(_usersRepository.GetAll(), t1 => t1.CreatedAdmin, t2 => t2.Username,
                    (t1, t2) => new
                    {
                        t1.Name,
                        t1.VerifyDate,
                        t1.Note,
                        t1.Lng,
                        t1.Lat,
                        t1.Address,
                        t1.PatientGroup,
                        t1.IsCallAPI,
                        t1.IsActive,
                        t1.CreatedAdmin,
                        t2.FullName,
                        t1.CreatedDate,
                        t1.UpdatedDate
                    })
                    .Select(x => new PositionWarningOutput()
                    {
                        Name = x.Name,
                        VerifyDate = x.VerifyDate,
                        Note = x.Note,
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        PatientGroup = x.PatientGroup,
                        IsCallAPI = x.IsCallAPI,
                        IsActive = x.IsActive,
                        CreatedAdmin = x.CreatedAdmin,
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

        //public async Task<ResultDto> CreatePositionWarning(CreatePWarningInput input)
        //{
        //    try
        //    {
        //        var chckUser = await _positionsWarningRepository.GetAll()
        //            .Where(x => x.Username.Equals(input.Username) && x.RegisIsolationStatus == Flag.Active && (x.CancelIsolationStatus == CancelIso.WAIT || (x.CancelIsolationStatus == CancelIso.APPROVED && x.FinishIsolationStatus == Flag.InActive)))
        //            //.OrderByDescending(x => x.Id)
        //            .ToListAsync();

        //        if (chckUser.Count == 0)
        //        {
        //            await _regisIsolationsRepository.InsertAsync(new RegisIsolations()
        //            {
        //                Username = input.Username,
        //                ProvinceCode = input.ProvinceCode,
        //                DistrictCode = input.DistrictCode,
        //                RegisAddress = input.RegisAddress,
        //                RegisIsolationStatus = Flag.Active,
        //                RegisDate = DateTime.UtcNow,
        //                FinishIsolationStatus = Flag.InActive,
        //                FinishDate = null,
        //                CancelIsolationStatus = CancelIso.WAIT,
        //                CancelDate = DateTime.UtcNow
        //            });
        //        }
        //        else
        //        {
        //            throw new UserFriendlyException(400, L("UserRegisterIsolated"));
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

        //public async Task<ResultDto> UpdateFinishIsolation(FinishIsolationInput input)
        //{
        //    try
        //    {
        //        var finish = await _regisIsolationsRepository.GetAll()
        //            .Where(x => x.Username.Equals(input.Username) && x.RegisIsolationStatus == Flag.Active && x.FinishIsolationStatus == Flag.InActive && x.CancelIsolationStatus == CancelIso.APPROVED)
        //            //.OrderByDescending(x => x.Id)
        //            .FirstOrDefaultAsync();

        //        if (finish != null)
        //        {
        //            finish.FinishIsolationStatus = input.FinishIsolationStatus;
        //            finish.FinishDate = DateTime.UtcNow;

        //            await _regisIsolationsRepository.UpdateAsync(finish);
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

        //public async Task<ResultDto> UpdateApprovedIsolation(CancelIsolationInput input)
        //{
        //    try
        //    {
        //        var approved = await _regisIsolationsRepository.GetAll()
        //            .Where(x => x.Username.Equals(input.Username) && x.RegisIsolationStatus == Flag.Active && x.FinishIsolationStatus == Flag.InActive && x.CancelIsolationStatus == CancelIso.WAIT)
        //            //.OrderByDescending(x => x.Id)
        //            .FirstOrDefaultAsync();

        //        if (approved != null)
        //        {
        //            approved.CancelIsolationStatus = input.CancelIsolationStatus;
        //            approved.CancelDate = DateTime.UtcNow;

        //            await _regisIsolationsRepository.UpdateAsync(approved);
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
