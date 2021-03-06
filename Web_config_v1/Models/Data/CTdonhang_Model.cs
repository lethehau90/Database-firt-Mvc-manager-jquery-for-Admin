﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Data
{
    public class CTdonhang_Model
    {
        public int IdCTHD { get; set; }
        public int IDhd { get; set; } // khóa ngoại hóa đơn đơn hàng
        public string IDsanpham { get; set; }
        public string Tensanpham { get; set; }
        public int Soluong { get; set; }
        public double Giaban { get; set; }
        public string Size { get; set; }
        public string Mausac { get; set; }
        public string Hinhanh { get; set; }
        public string danhmucsanpham { get; set; }
        public string chitietsanpham { get; set; }
        public double Giamthem { get; set; }
    }
}