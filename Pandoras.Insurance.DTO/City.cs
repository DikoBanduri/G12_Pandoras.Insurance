using System;

namespace Pandora_s_Insurance_DTO
{
    public class City
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int RegionID { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
