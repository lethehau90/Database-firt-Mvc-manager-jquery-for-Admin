using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Web_config_v1
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "gioi-thieu",
                url: "gioi-thieu",
                defaults: new { controller = "Home", action = "introduce" }
            );

            routes.MapRoute(
               name: "lien-he",
               url: "lien-he",
               defaults: new { controller = "Home", action = "contace" }
           );

            routes.MapRoute(
                name: "trinh-chieu",
                url: "trinh-chieu/{tagSlieshow}",
                defaults: new { controller = "Home", action = "Slieshow", tagSlieshow = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "san-pham",
                url: "san-pham/{Category_tag}",
                defaults: new { controller = "Home", action = "CategoryNews", Category_tag = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "chi-tiet-san-pham",
                url: "san-pham/{Category_tag}/{tag}",
                defaults: new { controller = "Home", action = "CategoryNewsDetail", Category_tag = UrlParameter.Optional, tag = UrlParameter.Optional }
            );

            routes.MapRoute(
               name: "gallery",
               url: "gallery",
               defaults: new { controller = "Home", action = "Gallery", id = UrlParameter.Optional }
            );

            routes.MapRoute(
               name: "category-gallery",
               url: "gallery/{Category_tag}",
               defaults: new { controller = "Home", action = "CategoryGallery", id = UrlParameter.Optional }
            );

            routes.MapRoute(
              name: "category-gallery-detail",
              url: "gallery/{Category_tag}/{tag}",
              defaults: new { controller = "Home", action = "CategoryGalleryDetail", Category_tag = UrlParameter.Optional, tag = UrlParameter.Optional }
           );

            routes.MapRoute(
                name: "dich-vu",
                url: "dich-vu",
                defaults: new { controller = "Home", action = "News", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "chi-tiet-dich-vu",
                url: "dich-vu/{tag}",
                defaults: new { controller = "Home", action = "NewsDetails", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}