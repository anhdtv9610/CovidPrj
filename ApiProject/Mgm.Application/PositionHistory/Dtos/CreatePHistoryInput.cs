using System.Collections.Generic;

namespace Mgm.PositionHistory.Dtos
{
    public class CreatePHistoryInput
    {
        public int TimeOutId { get; set; }
        public List<PHistoryDeteail> PHistoryDeteailList { get; set; }
    }
}
