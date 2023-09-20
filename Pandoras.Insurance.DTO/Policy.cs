using System;

namespace Pandora_s_Insurance_DTO
{
    public class Policy
    {
        public int ID { get; set; }
        public string Number { get; set; }
        public decimal PremiumAmount { get; set; }
        public decimal CoverageLimit { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int PolicyID { get; set; }
        public int CustomerID { get; set; }
        public int CarID { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
