using System;

namespace Mgm.PositionHistory.Dtos
{
    public class PHistoryDeteail
    {
        public int TimeOutId { get; set; }
        public int Lng { get; set; }
        public int Lat { get; set; }
        public string Address { get; set; }
        public int IsWarning { get; set; }
        public DateTime VerifyDate { get; set; }
    }
}
