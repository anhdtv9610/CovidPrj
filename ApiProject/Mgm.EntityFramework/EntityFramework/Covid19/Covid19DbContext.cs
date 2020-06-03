using Abp.EntityFramework;
using Mgm.Covid19.User;
using Mgm.Covid19.UserGroup;
using Mgm.Covid19.TestHealth;
using Mgm.Covid19.RegisIsolation;
using Mgm.Covid19.KBYT;
using Mgm.Covid19.Mst_District;
using Mgm.Covid19.Mst_Province;
using System.Data.Entity;

namespace Mgm.EntityFramework.Covid19
{
    public class Covid19DbContext : AbpDbContext
    {
        public virtual IDbSet<Users> Users { get; set; }
        public virtual IDbSet<UserGroup> UserGroup { get; set; }
        public virtual IDbSet<TestHealth> TestHealth { get; set; }
        public virtual IDbSet<RegisIsolation> RegisIsolation { get; set; }
        public virtual IDbSet<KBYT> KBYT { get; set; }
        public virtual IDbSet<Mst_District> Mst_District { get; set; }
        public virtual IDbSet<Mst_Province> Mst_Province { get; set; }

        public Covid19DbContext()
            : base("Covid19")
        {

        }
    }
}
