﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Data
{
    public class MacodeKhuyenMai_Model
    {
        public int ID { get; set; }
        public string Macode { get; set; }
        public Nullable<int> Valueprice { get; set; }
        public Nullable<bool> Active { get; set; }
    }
}