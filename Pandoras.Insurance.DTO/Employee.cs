using System;

namespace Pandora_s_Insurance_DTO
{
    public class Employee
    {
        public int ID { get; set; }
        public int RoleID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PersonalNumber { get; set; }
        public string WorkPhoneNumber { get; set; }
        public string HomePhoneNumber { get; set; }
        public string EmailAddress { get; set; }
        public string PrivateEmailAddress { get; set; }
        public string PrivateAddress { get; set; }
        public DateTime HireDate { get; set; }
        public DateTime CreateDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
