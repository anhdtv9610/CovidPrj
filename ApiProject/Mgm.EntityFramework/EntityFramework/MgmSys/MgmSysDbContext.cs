using Abp.EntityFramework;
using Mgm.MgmSys.MgmUser;
using Mgm.MgmSys.MgmUserGroupRight;
using Mgm.MgmSys.MgmUserFunction;
using System.Data.Entity;
using Mgm.MgmSys.MgmUserGroup;

namespace Mgm.EntityFramework.MgmSys
{
    public class MgmSysDbContext : AbpDbContext
    {
        public virtual IDbSet<MgmUsers> MgmUsers { get; set; }
        public virtual IDbSet<MgmUserGroup> MgmUserGroups { get; set; }
        public virtual IDbSet<MgmUserGroupRight> MgmUserGroupRights { get; set; }
        public virtual IDbSet<MgmUserFunction> MgmUserFunctions { get; set; }

        public MgmSysDbContext()
            : base("MgmUser")
        {

        }
    }
}
