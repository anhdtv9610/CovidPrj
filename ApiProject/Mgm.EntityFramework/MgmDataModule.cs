using System.Data.Entity;
using System.Reflection;
using Abp.EntityFramework;
using Abp.Modules;

namespace Mgm
{
    [DependsOn(typeof(AbpEntityFrameworkModule), typeof(MgmCoreModule))]
    public class MgmDataModule : AbpModule
    {
        public override void PreInitialize()
        {
            Configuration.DefaultNameOrConnectionString = "Efficiency";
        }

        public override void Initialize()
        {
            IocManager.RegisterAssemblyByConvention(Assembly.GetExecutingAssembly());
        }
    }
}
