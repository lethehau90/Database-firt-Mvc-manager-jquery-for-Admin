using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models;
using Web_config_v1.Models.Service;

namespace Web_config_v1.Module
{
    public class ModuleController : BaseControllor
    {
        //
        // GET: /Module/
        //function header
        Advertise_Service Connect = new Advertise_Service();
        public ActionResult Logo_Header()
        {
            var data = connect_entity.Advertises.Where(x => x.PageId == 1 && x.Active == true).Take(1).ToList();
            return PartialView(data);
        }
        //function menu muti lever

        public ActionResult Nav_Header(string Category_tag)
        {
            string strPath = HttpContext.Request.Url.AbsolutePath;
            string[] s = strPath.Split('/');
            if (s[1] == "tin-tuc" || s[1] == "blog" || s[1] == "dich-vu" || s[1] == "gioi-thieu" || s[1] == "san-pham" || s[1] == "lien-he")
            {
                ViewBag.active = s[1];
            }
            else
            {
                if (Category_tag != null)
                {
                    ViewBag.active = Category_tag;
                }
                else
                {
                    ViewBag.active = "";
                }

            }

            return PartialView();
        }


        //function Slie Show images background_header
        public ActionResult background_header()
        {
            var data = connect_entity.Advertises.Where(x => x.PageId == 3 && x.Active == true).Take(1).ToList();
            return PartialView(data);
        }

        //function Slie Show images background_footer
        public ActionResult background_footer()
        {
            var data = connect_entity.Advertises.Where(x => x.PageId == 4 && x.Active == true).Take(1).ToList();
            return PartialView(data);
        }

        //function Slie Show images
        public ActionResult Img_Slieshows()
        {
            var data = connect_entity.SlideShows.Where(x => x.Active == true).OrderBy(x => x.Ord).ToList();
            return PartialView(data);
        }

        //function breadcrumb
        public ActionResult breadcrumb()
        {
            return PartialView();
        }
        //funtion News_Home

        public ActionResult News_Home()
        {
            var data = connect_entity.information.Where(x => x.Active == true && x.Index == 1).Take(1).ToList();
            return PartialView(data);
        }

        //function module activity field (lĩnh vực hoạt động)
        public ActionResult activity_other()
        {
            var data = connect_entity.GroupNews.Where(x => x.Active == 1 && x.Priority == 1 && x.Level == null).ToList();
            return PartialView(data);
        }

        //function module images poster
        public ActionResult Images_poster()
        {
            var data = connect_entity.Advertises.Where(x => x.PageId == 2 && x.Active == true).Take(1).ToList();
            return PartialView(data);
        }

        // function module service other 
        public ActionResult Service_other()
        {
            var data = connect_entity.GroupNews.Where(x => x.Active == 1 && x.Priority == 1).ToList();
            return PartialView(data);
        }
        //function news prize after activity (giai thuong sau hoat dong)

        public ActionResult news_Prize_after()
        {
            var data = connect_entity.information.Where(x => x.Active == true && x.Index == 2).Take(1).ToList();
            return PartialView(data);
        }

        //action module on the right  /////////////////////////////////////////////////////////////////////////////////


        //function module department (phong ban hotline)
        public ActionResult Right_department()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 1).Take(1).ToList();
            return PartialView(data);
        }

        //funtion module product hightlight


        public ActionResult Right_News_hightlights(string tag)
        {
            if (tag == null || tag == "")
            {
                var data = connect_entity.Tintucs.Where(x => x.Active == true && x.Type == 2).OrderBy(x => x.Ord).Take(10).ToList();
                return PartialView(data);
            }
            else
            {
                var data = connect_entity.Tintucs.Where(x => x.Active == true && x.Type == 2 && x.Tag != tag).OrderBy(x => x.Ord).Take(10).ToList();
                return PartialView(data);
            }
        }

        //action module footer  /////////////////////////////////////////////////////////////////////////////////

        public ActionResult Right_product_hightlights(string tag)
        {
            if (tag == null || tag == "")
            {
                var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1 && x.Priority == 2).OrderBy(x => x.ord).Take(15).ToList();
                return PartialView(data);
            }
            else
            {
                var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1 && x.Priority == 2 && x.Tag != tag).OrderBy(x => x.ord).Take(15).ToList();
                return PartialView(data);
            }
        }

        //Footer introduction column 1
        public ActionResult Footer_introduction()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 4).Take(1).ToList();
            return PartialView(data);
        }

        // Footer causer check  we (lý do chọn chúng tôi)  column 2

        public ActionResult Footer_Causer_Check_we()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 5).Take(1).ToList();
            return PartialView(data);
        }

        //Footer follow Fanpage  column 3

        public ActionResult Footer_Follow_fanpage()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 6).Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult Footer_Column_1()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 4).Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult Footer_Column_2()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 5).Take(1).ToList();
            return PartialView(data);
        }


        public ActionResult Footer_Column_3()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 6).Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult Footer_Column_Center()
        {
            var data = connect_entity.Htmls.Where(x => x.Active == 1 && x.type == 7).Take(1).ToList();
            return PartialView(data);
        }




    }
}