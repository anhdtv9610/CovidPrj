using System;
using System.Collections.Generic;

namespace Mgm.User.Dtos
{
    public class UsersOutput
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
        public string ProvinceName { get; set; }
        public string DistrictName { get; set; }
        public string Address { get; set; }
        public int IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
        public int IsRegisAdmin { get; set; }
        public int NumberRating { get; set; }
        public double Rating { get; set; }
        public int TimeOutId { get; set; }
        public int TimeOut { get; set; }

    }
}
