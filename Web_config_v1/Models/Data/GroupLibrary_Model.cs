﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Data
{
    public class GroupLibrary_Model
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Tag { get; set; }
        public string Level { get; set; }
        public string Image { get; set; }
        public int Ord { get; set; }
        public int Active { get; set; }
        public string Lang { get; set; }
        public string NameEn { get; set; }
    }
}