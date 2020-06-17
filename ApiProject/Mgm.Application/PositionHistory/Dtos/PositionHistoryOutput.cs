using System;
using System.Collections.Generic;

namespace Mgm.PositionHistory.Dtos
{
    public class PositionHistoryOutput
    {
        public int Id { get; set; }
        public int TimeOut { get; set; }
        public string Username { get; set; }
        public string FullName { get; set; }
        public DateTime CreatedDate { get; set; }
        public List<PHistoryDeteail> PHistoryDeteailList { get; set; }
    }
}
