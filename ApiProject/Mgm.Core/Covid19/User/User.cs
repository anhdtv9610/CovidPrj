using Abp.Domain.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Mgm.Covid19.User
{
    [Table("User")]
    public class Users : Entity
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string GroupCode { get; set; }
        public string FullName { get; set; }
        public DateTime BirthDay { get; set; }
        public string Sex { get; set; }
        public string CMND { get; set; }
        public string ProvinceCode { get; set; }
        public string DistrictCode { get; set; }
        public string Address { get; set; }
        public int IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}