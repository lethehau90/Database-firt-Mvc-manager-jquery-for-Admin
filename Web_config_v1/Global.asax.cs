﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Web_config_v1.Models.Service;
using Web_config_v1.Models.Data;
using Web_config_v1.Models.Entity;
using System.Web.Security;
using Web_config_v1.Models.Command;

namespace Web_config_v1
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterAuth();

            // Code that runs on application startup
            Application["HomNay"] = 0;
            Application["HomQua"] = 0;
            Application["TuanNay"] = 0;
            Application["TuanTruoc"] = 0;
            Application["ThangNay"] = 0;
            Application["ThangTruoc"] = 0;
            Application["TatCa"] = 0;
            Application["visitors_online"] = 0;
        }
        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown
        }
        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 150;
            Application.Lock();
            Application["visitors_online"] = Convert.ToInt32(Application["visitors_online"]) + 1;
            Application.UnLock();
            try
            {
                // DataBindSQL mThongKe = new DataBindSQL();
                // DataTable dtb = mThongKe.TableThongKe();

                Web_config_v1Entities connect_entity = new Web_config_v1Entities();

                var dtb = connect_entity.spThongKe_Edit().ToList();

                if (dtb.Count > 0)
                {
                    Application["HomNay"] = long.Parse("0" + dtb[0].HomNay).ToString("#,###");
                    Application["HomQua"] = long.Parse("0" + dtb[0].HomQua).ToString("#,###");
                    Application["TuanNay"] = long.Parse("0" + dtb[0].TuanNay).ToString("#,###");
                    Application["TuanTruoc"] = long.Parse("0" + dtb[0].TuanTruoc).ToString("#,###");
                    Application["ThangNay"] = long.Parse("0" + dtb[0].ThangNay).ToString("#,###");
                    Application["ThangTruoc"] = long.Parse("0" + dtb[0].ThangTruoc).ToString("#,###");
                    Application["NamNay"] = long.Parse("0" + dtb[0].NamNay).ToString("#,###");
                    Application["NamTruoc"] = long.Parse("0" + dtb[0].NamTruoc).ToString("#,###");
                    Application["TatCa"] = long.Parse("0" + dtb[0].TatCa).ToString("#,###");
                }

            }
            catch { }

        }
        void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["visitors_online"] = Convert.ToUInt32(Application["visitors_online"]) - 1;
            Application.UnLock();
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["Language"];
            if (cookie != null && cookie.Value != null)
            {
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(cookie.Value);
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(cookie.Value);
            }
            else
            {
                System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("vi");
                System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("vi");
            }
        }
    }
}