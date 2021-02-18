using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace coopors.Models
{
    public class Users
    {
        public int OID { get; set; }
        public string  Title { get; set; }
        public string  FirstName { get; set; }
        public string LastName { get; set; }
        public string Position { get; set; }
        public string Company { get; set; }
        public string Address { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Postal { get; set; }
        public string Country { get; set; }
        public string E_mail { get; set; }
        public string Password { get; set; }
        public string PhoneNumber { get; set; }
    }
}