using System;

namespace Pandora_s_Insurance_DTO
{
    public class Manufacturer
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
