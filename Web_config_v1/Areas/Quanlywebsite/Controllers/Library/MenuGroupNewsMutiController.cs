using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models.Service;
using Web_config_v1.Models.Data;
using Web_config_v1.Models.Entity;
using System.Web.Security;
using System.Globalization;

namespace Web_config_v1.Areas.Quanlywebsite.Controllers.Library
{
    public class MenuGroupNewsMutiController : Controller
    {
        //
        // GET: /Quanlywebsite/MenuGroupNewsMuti/
        private Web_config_v1Entities connect_entity = new Web_config_v1Entities();
        public ActionResult Muti_Group_Menu_1()
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == null).ToList();
            return PartialView(data);
        }
        public ActionResult Muti_Group_Menu_2(string Id)
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == Id).ToList();
            return PartialView(data);
        }
        public ActionResult Muti_Group_Menu_3(string Id)
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == Id).ToList();
            return PartialView(data);
        }

    }
}
