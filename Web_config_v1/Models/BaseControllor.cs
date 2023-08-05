using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models.Entity;

namespace Web_config_v1.Models
{
    public class BaseControllor  : Controller
    {
        public Web_config_v1Entities connect_entity = new Web_config_v1Entities();
    }
}