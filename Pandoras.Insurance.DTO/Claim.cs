using System;

namespace Pandora_s_Insurance_DTO
{
    public class Claim
    {
        public int ID { get; set; }
        public bool Status { get; set; }
        public DateTime Date { get; set; }
        public decimal Amount { get; set; }
        public int InvolvedVehicles { get; set; }
        public string Description { get; set; }
        public int AccidentReportID { get; set; }
        public int PolicyID { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
