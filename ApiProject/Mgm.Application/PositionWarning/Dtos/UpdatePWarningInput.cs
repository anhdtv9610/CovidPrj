using System;

namespace Mgm.PositionWarning.Dtos
{
    public class UpdatePWarningInput
    {
        public string Name { get; set; }
        public string Note { get; set; }
        public int TimeOut { get; set; }
        public int Radius { get; set; }
        public int IsActive { get; set; }
    }
}