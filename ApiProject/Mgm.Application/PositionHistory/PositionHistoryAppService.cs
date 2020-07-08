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
using Mgm.Covid19.PositionHistory;
using Mgm.Covid19.PositionHistoryDetail;
using Mgm.Covid19.PositionWarning;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;
using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Drawing.Diagrams;
using Mgm.PositionHistory.Dtos;

namespace Mgm.PositionHistory
{
    public class PositionHistoryAppService : MgmAppServiceBase, IPositionHistoryAppService
    {
        private readonly IRepository<Users> _usersRepository;
        private readonly IRepository<PositionsHistory> _positionsHistoryRepository;
        private readonly IRepository<PositionsHistoryDetail> _positionsHistoryDetailRepository;
        private readonly IRepository<PositionsWarning> _positionsWarningRepository;

        public PositionHistoryAppService(
            IRepository<Users> usersRepository,
            IRepository<PositionsHistory> positionsHistoryRepository,
            IRepository<PositionsHistoryDetail> positionsHistoryDetailRepository,
            IRepository<PositionsWarning> positionsWarningRepository)
        {
            _usersRepository = usersRepository;
            _positionsHistoryRepository = positionsHistoryRepository;
            _positionsHistoryDetailRepository = positionsHistoryDetailRepository;
            _positionsWarningRepository = positionsWarningRepository;
        }

        public PageResultDto<PositionHistoryOutput> GetPositionHistoryList(FilterInput input)
        {
            try
            {
                PageResultDto<PositionHistoryOutput> objResult = new PageResultDto<PositionHistoryOutput>();

                var fromDate = DateTime.Parse(input.DateFrom);
                var toDate = DateTime.Parse(input.DateTo);

                objResult.items = _positionsHistoryRepository.GetAll()
                    .WhereIf(!input.Username.IsNullOrWhiteSpace(),
                        obj => obj.Username.Contains(input.Username))
                    .Select(x => new PositionHistoryOutput()
                    {
                        Id = x.Id,
                        Username = x.Username,
                        TimeOut = x.TimeOut,
                        CreatedDate = x.CreatedDate
                    })
                    .Where(x =>
                        x.CreatedDate >= fromDate &&
                        x.CreatedDate <= toDate)
                    .Skip((input.SkipCount - 1) * input.MaxResultCount)
                    .Take(input.MaxResultCount)
                    .ToList();

                objResult.totalCount = _positionsHistoryRepository.GetAll()
                    .WhereIf(!input.Username.IsNullOrWhiteSpace(),
                        obj => obj.Username.Contains(input.Username))
                    .Where(x =>
                        x.CreatedDate >= fromDate &&
                        x.CreatedDate <= toDate)
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public PositionHistoryOutput GetPositionHistoryDetail(int id)
        {
            try
            {
                PositionHistoryOutput objResult = new PositionHistoryOutput();

                var timeOut = _positionsHistoryRepository.GetAll()
                    .Where(x => x.Id == id)
                    .Select(x => new PositionHistoryOutput()
                    {
                        Id = id,
                        TimeOut = x.TimeOut,
                        Username = x.Username,
                        CreatedDate = x.CreatedDate
                    })
                    .FirstOrDefault();

                if (timeOut == null)
                {
                    return null;
                }

                var fullNameUser = _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(timeOut.Username))
                    .Select(x => new
                    {
                        x.FullName
                    })
                    .FirstOrDefault();

                var pHistoryDetail = _positionsHistoryDetailRepository.GetAll()
                    .Where(x => x.TimeOutId.Equals(timeOut.Id))
                    .Select(x => new PHistoryDeteail()
                    {
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        IsWarning = x.IsWarning,
                        VerifyDate = x.VerifyDate
                    })
                    .ToList();

                objResult.Id = timeOut.Id;
                objResult.TimeOut = timeOut.TimeOut;
                objResult.Username = timeOut.Username;
                objResult.FullName = fullNameUser != null ? fullNameUser.FullName : "";
                objResult.CreatedDate = timeOut.CreatedDate;
                objResult.PHistoryDeteailList = pHistoryDetail;

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }
        public PageResultDto<PositionsHistoryDetail> GetPositionHistoryDetailList(PHistoryDetailFilterInput input)
        {
            try
            {
                PageResultDto<PositionsHistoryDetail> objResult = new PageResultDto<PositionsHistoryDetail>();

                var culture = CultureInfo.InvariantCulture;
                var fromDate = DateTime.ParseExact(input.DateFrom, "MM/dd/yyyy HH:mm:ss", culture);
                var toDate = DateTime.ParseExact(input.DateTo, "MM/dd/yyyy HH:mm:ss", culture);
                //var fromDate = DateTime.Parse(input.DateFrom);
                //var toDate = DateTime.Parse(input.DateTo);

                objResult.items = _positionsHistoryDetailRepository.GetAll()
                    .WhereIf(input.IsWarning != 2,
                        obj => obj.IsWarning == input.IsWarning)
                    .Select(x => new PositionsHistoryDetail()
                    {
                        TimeOutId = x.TimeOutId,
                        Lng = x.Lng,
                        Lat = x.Lat,
                        Address = x.Address,
                        IsWarning = x.IsWarning,
                        VerifyDate = x.VerifyDate
                    })
                    .Where(x =>
                        x.VerifyDate >= fromDate &&
                        x.VerifyDate <= toDate &&
                        x.TimeOutId == input.TimeOutId)
                    .Skip((input.SkipCount - 1) * input.MaxResultCount)
                    .Take(input.MaxResultCount)
                    .ToList();

                objResult.totalCount = _positionsHistoryDetailRepository.GetAll()
                    .WhereIf(input.IsWarning != 2,
                        obj => obj.IsWarning == input.IsWarning)
                    .Where(x =>
                        x.VerifyDate >= fromDate &&
                        x.VerifyDate <= toDate &&
                        x.TimeOutId == input.TimeOutId)
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> CreateMultiPositionHistoryDetail(CreatePHistoryInput input)
        {
            try
            {
                ResultDto result = new ResultDto();

                var positionsHistory = _positionsHistoryRepository.GetAll().
                Where(x => x.Id == input.TimeOutId)
                .FirstOrDefault();

                for (int i = 0; i < input.PHistoryDeteailList.Count; i++)
                {
                    var item = input.PHistoryDeteailList[i];

                    if (positionsHistory != null)
                    {
                        await _positionsHistoryDetailRepository.InsertAsync(new PositionsHistoryDetail()
                        {
                            TimeOutId = positionsHistory.Id,
                            Lng = item.Lng,
                            Lat = item.Lat,
                            Address = item.Address,
                            IsWarning = item.IsWarning,
                            VerifyDate = DateTime.UtcNow
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
