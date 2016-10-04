using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EDDP2.WebReference;
using System.Configuration;
using System.Web.Configuration;

namespace EDDP2
{
    public class StaticSession
    {
        public static WebReference.Foo ws = new WebReference.Foo();
        public static String user = "";
        public static String pass = "";
        public static String imagePath = WebConfigurationManager.AppSettings["IPATH"];
    }
}