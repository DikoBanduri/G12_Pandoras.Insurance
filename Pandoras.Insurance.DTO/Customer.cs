using System;

namespace Pandora_s_Insurance_DTO
{
    public class Customer
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime BirthDate { get; set; }
        public string PersonalNumber { get; set; }
        public string PhoneNumber { get; set; }
        public string EmergencyNumber { get; set; }
        public string EmailAddress { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
        public City CityID { get; set; }
    }
}
