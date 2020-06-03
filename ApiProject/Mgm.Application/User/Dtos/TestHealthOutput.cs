using System;

namespace Mgm.User.Dtos
{
    public class TestHealthOutput
    {
        public string Username { get; set; }
        public int IsFever { get; set; }
        public int IsCough { get; set; }
        public int IsDyspnoeic { get; set; }
        public int IsTired { get; set; }
        public int HealthStatus { get; set; }
        public DateTime HealthUpdDate { get; set; }
    }
}