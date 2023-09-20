using System;

namespace Pandora_s_Insurance_DTO
{
    public class AccidentReport
    {
        public int ID { get; set; }
        public string PoliceReport { get; set; }
        public string InspectionReport { get; set; }
        public string AccidentLocation { get; set; }
        public decimal AccidentCost { get; set; }
        public string Witnesses { get; set; }
        public string Description { get; set; }
        public int AccidentID { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
