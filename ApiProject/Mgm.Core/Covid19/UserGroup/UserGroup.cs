using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.UserGroup
{
    [Table("UserGroup")]
    public class UserGroup : Entity
    {
        public string GroupCode { get; set; }
        public string GroupName { get; set; }
        public DateTime Description { get; set; }
        public int IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}