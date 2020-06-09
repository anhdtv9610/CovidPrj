using Abp.Domain.Repositories;
using Abp.UI;
using Mgm.Authentication.Dtos;
using Mgm.Covid19.User;
using Mgm.Utility;
using Mgm.Utility.Authentication;
using Mgm.Utility.Authentication.Dtos;
using System;
using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Mgm.Authentication
{
    public class AuthAppService : MgmAppServiceBase, IAuthAppService
    {
        private readonly IRepository<Users> _usersRepository;

        public AuthAppService(
            IRepository<Users> usersRepository)
        {
            _usersRepository = usersRepository;
        }

        public async Task<LoginOutput> CheckLogin(LoginInput input)
        {
            try
            {
                AuthenticationService authenticationService = new AuthenticationService();

                var user = await _usersRepository.GetAll()
                    .Where(x => x.Username.Equals(input.Username))
                    .FirstOrDefaultAsync();
                
                Utils utils = new Utils();
                if (user == null || !user.Password.Equals(utils.MD5Hash(input.Password)))
                {
                    throw new UserFriendlyException(200, L("TheUsernameOrPasswordInvalid"));
                }

                if (user.IsActive != 1)
                {
                    throw new UserFriendlyException(200, L("YourAccountHasBeenTemporarilyLocked"));
                }

                LoginOutput result = new LoginOutput();

                IAuthContainerModel model = authenticationService.GetJWTContainerModel(user.Username);
                result.AccessToken = authenticationService.GenerateToken(model);
                result.UserId = user.Username;

                return result;
            }
            catch(Exception ex)
            {
                Logger.Error(ex.Message);
                throw new UserFriendlyException(500, ex.Message);
            }
        }

        public async Task<CheckTokenOutput> CheckToken(CheckTokenInput input)
        {
            try
            {
                CheckTokenOutput result = new CheckTokenOutput();

                AuthenticationService authenticationService = new AuthenticationService();
                if (!authenticationService.IsTokenValid(input.Token))
                {
                    throw new UserFriendlyException(400, L("TheTokenInvalid"));
                }
                else
                {
                    var tokenClaims = authenticationService.GetTokenClaims(input.Token).ToList();
                    var username = tokenClaims.Find(x => x.Type == ClaimTypes.Name).Value;
                    var user = await _usersRepository.GetAll()
                        .Where(x => x.Username.Equals(username) && x.IsActive == 1)
                        .FirstOrDefaultAsync();
                    if (user == null)
                    {
                        throw new UserFriendlyException(400, L("TheTokenInvalid"));
                    }
                    else 
                    {
                        result.UserId = user.Username;
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
