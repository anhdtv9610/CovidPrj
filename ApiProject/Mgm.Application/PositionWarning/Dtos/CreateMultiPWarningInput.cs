using System.Collections.Generic;

namespace Mgm.PositionWarning.Dtos
{
    public class CreateMultiPWarningInput
    {
        public List<PWarningListInput> PWarningList { get; set; }
    }
}