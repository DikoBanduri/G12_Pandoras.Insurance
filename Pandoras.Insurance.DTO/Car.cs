using System;

namespace Pandoras.Insurance.DTO
{
    public class Car
    {
        public int ID { get; set; }
        public string LicensePlate { get; set; }
        public int Vin { get; set; }
        public DateTime ProductionDate { get; set; }
        public string PassportNumber { get; set; }
        public string EngineSize { get; set; }
        public string Mileage { get; set; }
        public string Description { get; set; }
        public int ModelID { get; set; }
        public int CategoryID { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
