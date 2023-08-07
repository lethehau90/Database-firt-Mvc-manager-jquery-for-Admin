using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models;
using Web_config_v1.Models.Entity;
using Web_config_v1.Models.Service;

namespace Web_config_v1.Controllers
{
    // [Authorize(Roles = "Admin")]
    public class HomeController : BaseControllor
    {
        private const int defaultPageSize = 10;
        Tintuc_Service Connect = new Tintuc_Service();
        public ActionResult Index()
        {
            ViewBag.WebConfigLayout = System.Configuration.ConfigurationManager.AppSettings["WebConfigLayout"];
            return View();
        }


        public ActionResult ChangeLanguage(string lang)
        {
            Session["lang"] = lang;
            return RedirectToAction("Index", "Home", new { language = lang });
        }


        #region DinTech

        public ActionResult introduce()
        {

            var data = connect_entity.information.Where(x => x.Active == true && x.Index == 3).Take(1).ToList();
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = data[0].Name;
                ViewBag.Description = data[0].Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = data[0].Name;
                }
                ViewBag.Keyword = data[0].Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = data[0].Name;
                }
            }
            return View(data);
        }

        public ActionResult contace()
        {
            return View();
        }

        public ActionResult Slieshow(string tagSlieshow)
        {

            var data = connect_entity.SlideShows.Where(x => x.Active == true && x.Tag == tagSlieshow).ToList();
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = data[0].Name;
                ViewBag.Description = data[0].Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = data[0].Name;
                }
                ViewBag.Keyword = data[0].Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = data[0].Name;
                }
            }
            return View(data);
        }

        public ActionResult News(int? page)
        {
            var data = connect_entity.Tintucs.Where(x => x.Active == true).OrderBy(x => x.Ord).ThenByDescending(x => x.Type).ToPagedList(page ?? 1, defaultPageSize);
            return View(data);

        }
        public ActionResult NewsDetails(string tag)
        {
            var data = connect_entity.Tintucs.Where(x => x.Active == true && x.Tag == tag).ToList();
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = data[0].Name;
                ViewBag.Description = data[0].Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = data[0].Name;
                }
                ViewBag.Keyword = data[0].Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = data[0].Name;
                }
            }
            return View(data);
        }

        public ActionResult NewsDetails_Involve(string tag)
        {
            var data = connect_entity.Tintucs.Where(x => x.Active == true && x.Tag != tag).OrderByDescending(x => x.Ngaydang).ThenByDescending(x => x.Type).ToList();
            return PartialView(data);
        }
        public ActionResult Commen_facebook_news(string tag)
        {
            ViewBag.binhluan = "http://nhomkinhphanthiet.com/dich-vu/" + tag;
            return PartialView();
        }

        //function thể loại tin
        public ActionResult CategoryNews(string Category_tag, int? page)
        {
            var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1
                && x.Cateprolevel3 == Category_tag || x.Cateprolevel2 == Category_tag || x.Cateprolevel1 == Category_tag).OrderBy(x => x.ord).ThenByDescending(x => x.Priority).ToPagedList(page ?? 1, defaultPageSize);


            if (data.Count == 1)
            {
                return Redirect("/san-pham/" + Category_tag + "/" + data[0].Tag);
            }
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag).Name;
                ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag).Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag).Name;
                }
                ViewBag.Keyword = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag).Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag).Name;
                }
            }
            return View(data);
        }

        public ActionResult CategoryNewsDetail(string Category_tag, string tag, int? page)
        {
            var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1
                && x.Tag == tag).OrderBy(x => x.ord).ToList();
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = data[0].Name;
                ViewBag.Description = data[0].Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = data[0].Name;
                }
                ViewBag.Keyword = data[0].Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = data[0].Name;
                }
            }
            return View(data);
        }

        public ActionResult Commen_facebook_Categorynews(string Category_tag, string tag)
        {
            string link = System.Configuration.ConfigurationManager.AppSettings["WebConfigBinhLuan"];
            ViewBag.binhluan = link + Category_tag + "/" + tag;
            return PartialView();
        }

        public ActionResult CategoryNewsDetail_Involve(string Category_tag, string tag)
        {
            var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1 && x.Tag != tag && x.Cateprolevel1 == Category_tag).Take(4).OrderByDescending(x => x.Date).ThenByDescending(x => x.Priority).ToList();
            return PartialView(data);
        }

        public ActionResult Setting_Config()
        {
            try
            {
                var data = connect_entity.Configs.Take(1).ToList();
                return PartialView(data);
            }
            catch (Exception ex)
            {

                return Redirect("/");
            }

        }

        public ActionResult Setting_Config_catelog()
        {
            try
            {
                var data = connect_entity.Configs.Take(1).ToList();
                return PartialView(data);
            }
            catch (Exception)
            {

                return Redirect("/");
            }
        }

        public ActionResult _Icon_web()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult _Tool_Scrip()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }

        #endregion

        #region HungThinh

        public ActionResult _Header()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult _Footer()
        {
            var data = connect_entity.Configs.Take(1).ToList();
            return PartialView(data);
        }

        public ActionResult Gallery()
        {
            return View();
        }

        public ActionResult CategoryGallery(string Category_tag, int? page)
        {
            var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1
                 && x.Cateprolevel3 == Category_tag || x.Cateprolevel2 == Category_tag || x.Cateprolevel1 == Category_tag).OrderBy(x => x.ord).ThenByDescending(x => x.Priority).ToPagedList(page ?? 1, defaultPageSize);
            //if (data.Count == 1)
            //{
            //    return Redirect("/gallery/" + Category_tag + "/" + data[0].Tag);
            //}
            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag && x.Active == 1).Name;
                ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag && x.Active == 1).Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag && x.Active == 1).Name;
                }
                ViewBag.Keyword = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag && x.Active == 1).Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag && x.Active == 1).Name;
                }
            }
            return View(data);
        }

        public ActionResult CategoryGalleryDetail(string Category_tag, string tag)
        {
            var data = connect_entity.GroupNewsNewsDetails.Where(x => x.Active == 1
                && x.Tag == tag &&
                (x.Cateprolevel3 == Category_tag || x.Cateprolevel2 == Category_tag || x.Cateprolevel1 == Category_tag)
                ).OrderBy(x => x.ord).ToList();


            //Seo
            if (data.Count > 0)
            {
                ViewBag.title = data[0].Name;
                ViewBag.Description = data[0].Description;
                if (ViewBag.Description == "")
                {
                    ViewBag.Description = data[0].Name;
                }
                ViewBag.Keyword = data[0].Keyword;
                if (ViewBag.Keyword == "")
                {
                    ViewBag.Description = data[0].Name;
                }
            }
            return View(data);
        }

        public ActionResult MenuDBWeb(string active)
        {
            ViewBag.active = active;
            var data = connect_entity.GroupNews.Where(x => x.Level == null && x.Active == 1).OrderBy(x => x.Ord).ToList();
            return PartialView(data);
        }

        public ActionResult MenuDBMobile(string active)
        {
            ViewBag.active = active;
            var data = connect_entity.GroupNews.Where(x => x.Level == null && x.Active == 1).OrderBy(x => x.Ord).ToList();
            return PartialView(data);
        }

        #endregion

    }
}
