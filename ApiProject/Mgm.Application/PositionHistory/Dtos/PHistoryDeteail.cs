using System;

namespace Mgm.PositionHistory.Dtos
{
    public class PHistoryDeteail
    {
        public double Lng { get; set; }
        public double Lat { get; set; }
        public string Address { get; set; }
        public int IsWarning { get; set; }
        public DateTime VerifyDate { get; set; }
    }
}
