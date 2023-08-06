using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_config_v1.Models;

namespace Web_config_v1.Module
{
    public class Nav_NewsController : BaseControllor
    {
        //
        // GET: /Nav_News/

        public ActionResult Muti_Group_Menu_1(string Category_tag)
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == null && x.Active == 1).OrderBy(x => x.Ord).ToList();
            // ViewBag.active = Resurt_Cateprolevel1(Category_tag);


            return PartialView(data);
        }

        public string Resurt_Cateprolevel1(string Category_tag) //id is tag the lever group
        {
            string Name_tag = ""; //mặc định là null
            if (Category_tag != null)
            {
                var Data_parent = connect_entity.GroupNews.FirstOrDefault(x => x.Tag == Category_tag); //bind cấp cao nhất

                if (Data_parent.Level == null) //nhóm tin không có cấp độ
                {
                    Name_tag = Data_parent.Tag; //lấy giá trị tag làm id cho tin
                }
                else //ngược lại có cấp độ
                {
                    int Convert_LeverId_curent = Convert.ToInt32(Data_parent.Level); //chuyển đổi lại số nguyên : lerver kiểu string convert id là nguyên

                    if (Data_parent.Level != null) //giá trị Level khác null
                    {
                        var Data_child = connect_entity.GroupNews.FirstOrDefault(x => x.Id == Convert_LeverId_curent); //bind cấp con

                        if (Data_child.Level == null) //nhóm tin không có cấp độ
                        {
                            Name_tag = Data_child.Tag; //lấy giá trị tag làm id cho tin
                        }
                        else
                        {
                            int Convert_LeverId_child_curent = Convert.ToInt32(Data_child.Level);//chuyển đổi lại số nguyên
                            var Data_child_cha = connect_entity.GroupNews.FirstOrDefault(x => x.Id == Convert_LeverId_child_curent); //chuyển lên cấp cao hơn
                            Name_tag = Data_child_cha.Tag; //lấy giá trị tag làm id cho tin
                        }

                    }
                }
            }
            return Name_tag;
        }

        public ActionResult Muti_Group_Menu_2(string Id)
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == Id && x.Active == 1).OrderBy(x => x.Ord).ToList();
            return PartialView(data);
        }
        public ActionResult Muti_Group_Menu_3(string Id)
        {
            var data = connect_entity.GroupNews.Where(x => x.Level == Id && x.Active == 1).OrderBy(x => x.Ord).ToList();
            return PartialView(data);
        }

        public ActionResult News()
        {
            string strPath = HttpContext.Request.Url.AbsolutePath;
            string[] s = strPath.Split('/');
            if (s[1] == "dich-vu")
            {
                ViewBag.active = "dich-vu";
            }
            else
            {
                ViewBag.active = "";
            }
            return PartialView();
        }

        //produce  sanpham
        public ActionResult Nav_product()
        {
            string strPath = HttpContext.Request.Url.AbsolutePath;
            string[] s = strPath.Split('/');
            if (s[1] == "san-pham")
            {
                ViewBag.active = "san-pham";
            }
            else
            {
                ViewBag.active = "";
            }
            return PartialView();
        }
        public ActionResult Information()
        {
            string strPath = HttpContext.Request.Url.AbsolutePath;
            if (strPath == "/gioi-thieu")
            {
                ViewBag.active = "gioi-thieu";
            }
            else
            {
                ViewBag.active = "";
            }


            return PartialView();
        }

        public ActionResult Contace()
        {
            string strPath = HttpContext.Request.Url.AbsolutePath;
            if (strPath == "/lien-he")
            {
                ViewBag.active = "lien-he";
            }
            else
            {
                ViewBag.active = "";
            }

            return PartialView();
        }



    }
}