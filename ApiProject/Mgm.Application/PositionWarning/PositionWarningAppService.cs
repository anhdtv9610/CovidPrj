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

        public async Task<ResultDto> CreatePositionWarning(CreatePWarningInput input)
        {
            try
            {
                var chckposition = await _positionsWarningRepository.GetAll()
                    .Where(x => x.Name.Equals(input.Name) || (x.Lat == input.Lat && x.Lng == input.Lng))
                    //.OrderByDescending(x => x.Id)
                    .ToListAsync();

                if (chckposition.Count == 0)
                {
                    await _positionsWarningRepository.InsertAsync(new PositionsWarning()
                    {
                        Name = input.Name,
                        VerifyDate = input.VerifyDate,
                        Note = input.Note,
                        Lng = input.Lng,
                        Lat =input.Lat,
                        Address = input.Address,
                        PatientGroup = null,
                        TimeOut = input.TimeOut,
                        Radius = input.Radius,
                        CreatedAdmin = input.CreatedAdmin,
                        IsCallAPI = Flag.InActive,
                        IsActive = Flag.Active,
                        CreatedDate = DateTime.UtcNow,
                        UpdatedDate = DateTime.UtcNow
                    });
                }
                else
                {
                    throw new UserFriendlyException(400, L("PositionWarningExist!"));
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

        public async Task<ResultDto> UpdatePositionWarning(UpdatePWarningInput input)
        {
            try
            {
                var chckposition = await _positionsWarningRepository.GetAll()
                    .Where(x => x.Name.Equals(input.Name))
                    //.OrderByDescending(x => x.Id)
                    .FirstOrDefaultAsync();

                if (chckposition != null)
                {
                    if(chckposition.IsCallAPI == Flag.InActive)
                    {
                        chckposition.Note = input.Note;
                        chckposition.IsActive = input.IsActive;
                    }
                    chckposition.TimeOut = input.TimeOut;
                    chckposition.Radius = input.Radius;
                    chckposition.UpdatedDate = DateTime.UtcNow;

                    await _positionsWarningRepository.UpdateAsync(chckposition);
                }
                else
                {
                    throw new UserFriendlyException(400, L("PositionNotFound"));
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

        public async Task<ResultDto> CreateMultiPositionWarning(CreateMultiPWarningInput input)
        {
            try
            {
                ResultDto result = new ResultDto();

                for (int i = 0; i < input.PWarningList.Count; i++)
                {
                    var item = input.PWarningList[i];
                    var position = _positionsWarningRepository.GetAll().
                        Where(x => x.Name.Equals(item.Name))
                        .ToListAsync();

                    if (position == null)
                    {
                        await _positionsWarningRepository.InsertAsync(new PositionsWarning()
                        {
                            Name = item.Name,
                            VerifyDate = item.VerifyDate,
                            Note = item.Note,
                            Lng = item.Lng,
                            Lat = item.Lat,
                            Address = item.Address,
                            PatientGroup = item.PatientGroup,
                            TimeOut = 300,
                            Radius = 50,
                            CreatedAdmin = null,
                            IsCallAPI = Flag.Active,
                            IsActive = Flag.Active,
                            CreatedDate = DateTime.UtcNow,
                            UpdatedDate = DateTime.UtcNow
                        });
                    }
                }
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
