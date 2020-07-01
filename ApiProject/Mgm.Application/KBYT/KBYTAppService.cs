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
using Mgm.Covid19.KBYT;
using Mgm.KBYT.Dtos;
using Mgm.Utility;
using Mgm.Utility.Dtos;
using System.Globalization;

namespace Mgm.KBYT
{
    public class KBYTAppService : MgmAppServiceBase, IKBYTAppService
    {

        private readonly IRepository<KBYTCN> _kbytcnRepository;

        public KBYTAppService(
            IRepository<KBYTCN> kbytcnRepository)
        {
            _kbytcnRepository = kbytcnRepository;
        }

        public PageResultDto<KBYTCN> GetKBYTList(FilterInput input)
        {
            try
            {
                PageResultDto<KBYTCN> objResult = new PageResultDto<KBYTCN>();

                objResult.items = _kbytcnRepository.GetAll()
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Equals(input.Keyword))
                    .Select(x => new KBYTCN()
                    {
                        Id = x.Id,
                        Username = x.Username,

                        ContactWithPatient = x.ContactWithPatient,
                        BackFromDiseaseArea = x.BackFromDiseaseArea,
                        ContactWithPersonBack = x.ContactWithPersonBack,
                        IsFever = x.IsFever,
                        IsCough = x.IsCough,
                        IsDyspoenic = x.IsDyspoenic,
                        IsTired = x.IsTired,
                        IsSoreThoroat = x.IsSoreThoroat,
                        IsPneumonia = x.IsPneumonia,
                        IsLiverish = x.IsLiverish,
                        IsBlood = x.IsBlood,
                        IsPulmonic = x.IsPulmonic,
                        IsCardiopathy = x.IsCardiopathy,
                        BloodPresure = x.BloodPresure,
                        HIVimmune = x.HIVimmune,
                        IsDiabetes = x.IsDiabetes,
                        IsCancer = x.IsCancer,
                        IsPregnant = x.IsPregnant,
                        CreatedDate = x.CreatedDate

                    })
                    .Skip((input.SkipCount - 1) * input.MaxResultCount)
                    .Take(input.MaxResultCount)
                    .ToList();

                objResult.totalCount = _kbytcnRepository.GetAll()
                    .WhereIf(!input.Keyword.IsNullOrWhiteSpace(),
                        obj => obj.Username.Equals(input.Keyword))
                    .Count();

                return objResult;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public KBYTCN GetKBYTDetail(int id)
        {
            try
            {
                return _kbytcnRepository.GetAll()
                    .Where(x => x.Id.Equals(id))
                    .ToList()
                    .Select(x => new KBYTCN()
                    {
                        Username = x.Username,
                        ContactWithPatient = x.ContactWithPatient,
                        BackFromDiseaseArea = x.BackFromDiseaseArea,
                        ContactWithPersonBack = x.ContactWithPersonBack,
                        IsFever = x.IsFever,
                        IsCough = x.IsCough,
                        IsDyspoenic = x.IsDyspoenic,
                        IsTired = x.IsTired,
                        IsSoreThoroat = x.IsSoreThoroat,
                        IsPneumonia = x.IsPneumonia,
                        IsLiverish = x.IsLiverish,
                        IsBlood = x.IsBlood,
                        IsPulmonic = x.IsPulmonic,
                        IsCardiopathy = x.IsCardiopathy,
                        BloodPresure = x.BloodPresure,
                        HIVimmune = x.HIVimmune,
                        IsDiabetes = x.IsDiabetes,
                        IsCancer = x.IsCancer,
                        IsPregnant = x.IsPregnant,
                        CreatedDate = x.CreatedDate
                    })
                    .FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<ResultDto> CreateKBYT(CreateKBYTInput input)
        {
            try
            {
                
                await _kbytcnRepository.InsertAsync(new KBYTCN()
                {
                    Username = input.Username,
                    ContactWithPatient = input.ContactWithPatient,
                    BackFromDiseaseArea = input.BackFromDiseaseArea,
                    ContactWithPersonBack = input.ContactWithPersonBack,
                    IsFever = input.IsFever,
                    IsCough = input.IsCough,
                    IsDyspoenic = input.IsDyspoenic,
                    IsTired = input.IsTired,
                    IsSoreThoroat = input.IsSoreThoroat,
                    IsPneumonia = input.IsPneumonia,
                    IsLiverish = input.IsLiverish,
                    IsBlood = input.IsBlood,
                    IsPulmonic = input.IsPulmonic,
                    IsCardiopathy = input.IsCardiopathy,
                    BloodPresure = input.BloodPresure,
                    HIVimmune = input.HIVimmune,
                    IsDiabetes = input.IsDiabetes,
                    IsCancer = input.IsCancer,
                    IsPregnant = input.IsPregnant,
                    CreatedDate = DateTime.UtcNow
                });

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
