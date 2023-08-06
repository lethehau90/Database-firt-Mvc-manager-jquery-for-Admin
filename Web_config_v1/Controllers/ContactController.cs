using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models;
using Web_config_v1.Models.Data;
using Web_config_v1.Models.Service;

namespace Web_config_v1.Controllers
{
    public class ContactController : BaseControllor
    {
        //
        // GET: /Contact/
        Contact_Service Connect = new Contact_Service();
        public ActionResult Image_contact()
        {
            var data = connect_entity.Advertises.Where(x => x.PageId == 5 && x.Active == true).Take(1).ToList();
            return PartialView(data);
        }
        public ActionResult DiaChi_contact()
        {
            var data = connect_entity.Htmls.Where(x => x.type == 8 && x.Active == 1).Take(1).ToList();
            return PartialView(data);
        }
        public ActionResult OpenOffice_contact()
        {
            var data = connect_entity.Htmls.Where(x => x.type == 9 && x.Active == 1).Take(1).ToList();
            return PartialView(data);
        }
        public ActionResult introduction_contact()
        {
            var data = connect_entity.Htmls.Where(x => x.type == 7 && x.Active == 1).Take(1).ToList();
            return PartialView(data);
        }

        [HttpPost]
        public ActionResult Save_contact(string Inputname, string InputEmail, string Inputphone, string Inputnote)
        {
            int Resurt;
            try
            {
                Contact_Model model = new Contact_Model();
                model.Name = Inputname;
                model.Mail = InputEmail;
                model.Tel = Inputphone;
                model.Name = Inputname;
                model.Detail = Inputnote;
                model.Date = DateTime.Now;
                model.Active = 0;

                Connect.Create(model);
                Resurt = 1;
                return Json(Resurt, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult Map_contact()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }

    }
}