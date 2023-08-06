using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_config_v1.Models.Service
{
    public static class DataCommon
    {
        public static string GetSessionLanguage(this HttpSessionStateBase session)
        {
            string sessionKey = "lang";
            if(session[sessionKey] == null)
            {
                session[sessionKey] = "vi";
            }
            else
            {
                return Convert.ToString(session[sessionKey]);
            }
            return "vi";
        }
    }
}