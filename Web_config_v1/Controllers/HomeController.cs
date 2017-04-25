using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Web_config_v1.Controllers
{
     [Authorize(Roles = "Admin")]
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";
            return View();
        }
        
     
       

      
      
    }
}
