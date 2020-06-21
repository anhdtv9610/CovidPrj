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
                var p =
                       from t1 in _positionsWarningRepository.GetAll()
                       join t2 in _usersRepository.GetAll() on t1.CreatedAdmin equals t2.Username into t
                       from t2 in t.DefaultIfEmpty()
                       where (t1.IsActive == Flag.Active)
                       select new PositionWarningOutput()
                       {
                           Id = t1.Id,
                           Name = t1.Name,
                           VerifyDate = t1.VerifyDate,
                           Note = t1.Note,
                           Lng = t1.Lng,
                           Lat = t1.Lat,
                           Address = t1.Address,
                           PatientGroup = t1.PatientGroup,
                           TimeOut = t1.TimeOut,
                           Radius = t1.Radius,
                           IsCallAPI = t1.IsCallAPI,
                           IsActive = t1.IsActive,
                           CreatedAdmin = t1.CreatedAdmin,
                           FullName = t1.CreatedAdmin == null ? "" : t2.FullName,
                           Rating = t1.CreatedAdmin == null ? 0 : t2.Rating,
                           NumberRating = t1.CreatedAdmin == null ? 0 : t2.NumberRating,
                           CreatedDate = t1.CreatedDate,
                           UpdatedDate = t1.UpdatedDate
                       };

                        objResult.items = p.ToList();

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
                        x.FullName,
                        x.Rating,
                        x.NumberRating
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
                double rating = adminName != null ? adminName.Rating : 0;
                int numberRating = adminName != null ? adminName.NumberRating : 0;

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
                        Rating = rating,
                        NumberRating = numberRating,
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
