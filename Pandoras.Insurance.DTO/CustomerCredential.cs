using System;

namespace Pandora_s_Insurance_DTO
{
    public class CustomerCredential
    {
        public int CustomerID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string SecurityQuestion { get; set; }
        public string SecurityAnswer { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime CancelDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
