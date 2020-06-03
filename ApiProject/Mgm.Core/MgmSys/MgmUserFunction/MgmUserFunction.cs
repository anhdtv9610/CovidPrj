using Abp.Domain.Entities;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.MgmSys.MgmUserFunction
{
    [Table("MgmUserFunction")]
    public class MgmUserFunction : Entity
    {
        public string FunctionCode { get; set; }
        public string FunctionName { get; set; }
        public int HasUpdate { get; set; }
        public int IsActive { get; set; }
    }
}
