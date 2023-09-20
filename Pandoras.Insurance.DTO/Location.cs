using System;
using System.Collections.Generic;

namespace Pandora_s_Insurance_DTO
{
    public class Location
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Longitude { get; set; }
        public string Latitude { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
        public List<City> CityID { get; set; }
    }
}
