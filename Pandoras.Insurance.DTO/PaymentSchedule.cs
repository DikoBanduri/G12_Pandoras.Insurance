using System;

namespace Pandora_s_Insurance_DTO
{
    public class PaymentSchedule
    {
        public int ID { get; set; }
        public DateTime PaymentDate { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
        public int PolicyID { get; set; }
    }
}
