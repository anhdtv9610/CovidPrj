
using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.MgmSys.MgmUserGroupRight
{
    [Table("MgmUserGroupRight")]
    public class MgmUserGroupRight : Entity
    {
        public int UserGroupId { get; set; }
        public string FunctionCode { get; set; }
        public int ViewRight { get; set; }
        public int UpdateRight { get; set; }
    }
}
