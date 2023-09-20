using System;

namespace Pandora_s_Insurance_DTO
{
    public class PolicyType
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
