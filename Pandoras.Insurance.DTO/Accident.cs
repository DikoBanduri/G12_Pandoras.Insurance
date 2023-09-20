using System;

namespace Pandora_s_Insurance_DTO
{
    public class Accident
    {
        public int ID { get; set; }
        public string Type { get; set; }
        public DateTime Date { get; set; }
        public string AccidentLocation { get; set; }
        public int InvolvedVehicles { get; set; }
        public string Description { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
