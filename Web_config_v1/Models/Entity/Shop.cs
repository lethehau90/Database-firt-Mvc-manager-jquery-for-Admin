//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Web_config_v1.Models.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shop
    {
        public int id { get; set; }
        public string Name { get; set; }
        public Nullable<int> CompanyId { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<bool> Active { get; set; }
    
        public virtual Company Company { get; set; }
    }
}
