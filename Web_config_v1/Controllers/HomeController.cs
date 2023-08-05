using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models;
using Web_config_v1.Models.Entity;

namespace Web_config_v1.Controllers
{
    // [Authorize(Roles = "Admin")]
    public class HomeController : BaseControllor
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";
            return View();
        }

        public ActionResult _Icon_web()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }




    }
}
