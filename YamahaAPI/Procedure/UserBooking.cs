//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YamahaAPI.Procedure
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserBooking
    {
        public int Id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string gender { get; set; }
        public Nullable<decimal> pincode { get; set; }
        public string city { get; set; }
        public string vehicle { get; set; }
        public string helmet { get; set; }
        public string licenseType { get; set; }
        public string phoneNumber { get; set; }
        public string bookingDate { get; set; }
        public decimal totalCost { get; set; }
    }
}
