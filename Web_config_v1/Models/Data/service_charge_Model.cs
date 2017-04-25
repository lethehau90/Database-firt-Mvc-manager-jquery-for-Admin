using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Data
{
    public class service_charge_Model //phí dịch vụ
    {
        public int idservice { get; set; }
        public int Ord { get; set; }
        public string Name { get; set; }
        public int Gia { get; set; }
        public bool Active { get; set; }
        public string NameEn { get; set; }
    }
}