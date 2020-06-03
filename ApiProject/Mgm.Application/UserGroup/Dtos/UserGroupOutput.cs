using Mgm.MgmSys.MgmUserFunction;
using Mgm.MgmSys.MgmUserGroupRight;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Mgm.UserGroup.Dtos
{
    public class UserGroupOutput
    {
        public string GroupCode { get; set; }
        public string GroupName { get; set; }
        public string Description { get; set; }
        public int IsActive { get; set; }
        public List<RightInsertListOutput> RightInsertList { get; set; }
    }
}
