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
    public class MenuLeverproductMutiController : Controller
    {
        //
        // GET: /Quanlywebsite/MenuLeverproductMuti/

        private Web_config_v1Entities connect_entity = new Web_config_v1Entities();
        public ActionResult MenuLeverMuti_lever1()
        {
            var data = connect_entity.GroupMenuSanPhams.Where(x => x.Level == null).ToList();
            return PartialView(data);
        }

        public ActionResult TK_MenuLeverMuti_lever1()
        {
            var data = connect_entity.GroupMenuSanPhams.Where(x => x.Level == null).ToList();
            return PartialView(data);
        }

        public ActionResult MenuLeverMuti_lever2(string id, string select)
        {
            var data = connect_entity.GroupMenuSanPhams.Where(x => x.Level == id).ToList();
            ViewBag.select = select;
            return PartialView(data);
        }

        public ActionResult MenuLeverMuti_lever3(string id, string select)
        {
            var data = connect_entity.GroupMenuSanPhams.Where(x => x.Level == id).ToList();
            ViewBag.select = select;
            return PartialView(data);
        }

    }
}
