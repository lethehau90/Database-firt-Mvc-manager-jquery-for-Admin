using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models.Service;
using Web_config_v1.Models.Data;
using Web_config_v1.Models.Entity;
using System.Web.Security;
using Web_config_v1.Models.Command;

namespace Web_config_v1.Areas.Quanlywebsite.Controllers
{
    public class HomeAdminController : Controller
    {
        //
        // GET: /Quanlywebsite/Home/
        [Authorize(Roles = "Admin,Personnel")] 
        public ActionResult Index()
        {
            return View();
        }
        [Authorize(Roles = "Admin,Personnel")]  
        public PartialViewResult navbar_header() //head info mail, help
        {
            return PartialView();
        }
        [Authorize(Roles = "Admin,Personnel")]
        public PartialViewResult navbar_top_links() //top link menu left
        {
            return PartialView();
        }

        private Web_config_v1Entities connect_entity = new Web_config_v1Entities();
        public JsonResult ChartMonth()
        {
            int Month = DateTime.Now.Month;
            var data = connect_entity.TB_ThongKe.Where(x => x.ThoiGian.Month == Month).ToList()
                .Select(x => new { x = x.ThoiGian.Day, y = x.SoTruyCap });

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ChartYear()
        {
            int Year = DateTime.Now.Year;
            var data = connect_entity.TB_ThongKe.Where(x => x.ThoiGian.Year == Year).ToList()
                .Select(x => new { x = x.ThoiGian.Month, y = x.SoTruyCap });

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public ActionResult _part_home()
        {
            return PartialView();
        }
        //Mail hộp thư đến
        public ActionResult Mail_noactive()
        {
            var data = connect_entity.Contacts.Where(x => x.Active == 0).OrderByDescending(x => x.Date).Take(5).ToList();
            ViewBag.count = data.Count;
            return PartialView(data);
        }
        //comment
        public ActionResult Comment_noactive()
        {
            var data = connect_entity.CommentProducs.Where(x => x.Active == 0).OrderByDescending(x => x.Date).Take(5).ToList();
            ViewBag.count = data.Count;
            return PartialView(data);
        }
        public ActionResult Thanhvien_noactive()
        {
            var data = connect_entity.Thanhviens.Where(x => x.Actice == false).OrderByDescending(x => x.CreateDate).Take(5).ToList();
            ViewBag.count = data.Count;
            return PartialView(data);
        }

        public ActionResult Donhang_noactive()
        {
            var data = connect_entity.Donhangs.Where(x => x.Duyet == "0").OrderByDescending(x => x.ngaydathang).ToList();

            ViewBag.count = data.Count;
            return
                PartialView(data);
        }
    }
}
