using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using Mgm.MgmSys.MgmUserFunction;
using Mgm.MgmSys.MgmUserGroupRight;

namespace Mgm.UserGroup.Dtos
{
    public class CreateUserGroupInput
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string GroupCode { get; set; }
        [Required]
        public string GroupName { get; set; }
        public string Description { get; set; }
        [Required]
        public int IsActive { get; set; }
        public List<MgmUserGroupRight> RightInsertList { get; set; }
    }
}
