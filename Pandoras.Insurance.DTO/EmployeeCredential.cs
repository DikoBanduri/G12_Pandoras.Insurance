using System;

namespace Pandora_s_Insurance_DTO
{
    public class EmployeeCredential
    {
        public int EmployeeID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }
    }
}
