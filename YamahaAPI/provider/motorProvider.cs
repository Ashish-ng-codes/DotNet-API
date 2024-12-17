using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YamahaAPI
{
    public class motorProvider
    {
        public decimal id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }   
        public string gender { get; set; }
        public int pincode { get; set; }
        public string city { get; set; }
        public string vehicle { get; set; }
        public string helmet { get; set; }         
        public string licenseType { get; set; }
        public string phoneNumber { get; set; }
        public string bookingDate { get; set; }
        public decimal totalCost { get; set; }
    }
}