using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Data
{
    public class GroupMember_Model //nhom thanh vien
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Active { get; set; }
        public string NameEn { get; set; }
    }
}