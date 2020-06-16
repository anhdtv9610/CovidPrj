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
using Mgm.Covid19.ConnectRate;
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
        private readonly IRepository<ConnectRate> _connectRateRepository;

        public PositionWarningAppService(
            IRepository<Users> usersRepository,
            IRepository<PositionsWarning> positionsWarningRepository,
            IRepository<ConnectRate> connectRateRepository)
        {
            _usersRepository = usersRepository;
            _positionsWarningRepository = positionsWarningRepository;
            _connectRateRepository = connectRateRepository;
        }

        public PageResultDto<PositionWarningOutput> GetPositionWarningList()
        {
            try
            {
                PageResultDto<PositionWarningOutput> objResult = new PageResultDto<PositionWarningOutput>();

                objResult.items = _positionsWarningRepository.GetAll()
                    .Select(x => new PositionWarningOutput()
                    {
                        Id = x.Id,
                        Name = x.Name,
                        VerifyDate = x.VerifyDate,
                        Note = x.Note,
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        PatientGroup = x.PatientGroup,
                        TimeOut = x.TimeOut,
                        Radius = x.Radius,
                        IsCallAPI = x.IsCallAPI,
                        IsActive = x.IsActive,
                        CreatedAdmin = x.CreatedAdmin,
                        CreatedDate = x.CreatedDate,
                        UpdatedDate = x.UpdatedDate
                    })
                    .Where(x => x.IsActive == 1)
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

        public PositionWarningOutput GetPositionWarningDetail(FilterInput input)
        {
            try
            {

                var pWarning = _positionsWarningRepository.GetAll()
                    .Where(x => x.Id == input.id)
                    .Select(x => new
                    {
                        x.CreatedAdmin
                    })
                    .FirstOrDefault();

                var adminName = _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(pWarning.CreatedAdmin))
                    .Select(x => new
                    {
                        x.FullName
                    })
                    .FirstOrDefault();

                var chckIsRating = _connectRateRepository.GetAll()
                    .Where(x => x.IdWarning == input.id && x.UserRating.Equals(input.UserRating))
                    .Select(x => new
                    {
                        x.IsRating
                    })
                    .FirstOrDefault();

                int isRating = chckIsRating != null ? chckIsRating.IsRating : 0;
                string fullName = adminName!= null? adminName.FullName : "";

                return _positionsWarningRepository.GetAll()
                    .Where(x => x.Id == input.id && x.IsActive == 1)
                    .Select(x => new PositionWarningOutput()
                    {
                        Id = x.Id,
                        Name = x.Name,
                        VerifyDate = x.VerifyDate,
                        Note = x.Note,
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        PatientGroup = x.PatientGroup,
                        TimeOut = x.TimeOut,
                        Radius = x.Radius,
                        IsCallAPI = x.IsCallAPI,
                        IsActive = x.IsActive,
                        IsRating = isRating,
                        CreatedAdmin = x.CreatedAdmin,
                        FullName = fullName,
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
                    .Where(x => x.Name.Equals(input.Name))
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
                    .Where(x => x.Name.Equals(input.Name) && (x.CreatedAdmin.Equals(input.UpdAdmin) || x.CreatedAdmin == null))
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
                    var position = await _positionsWarningRepository.GetAll().
                        Where(x => x.Name.Equals(item.Name) && (x.Lat == item.Lat && x.Lng == item.Lng))
                        .ToListAsync();

                    if (position.Count == 0)
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
