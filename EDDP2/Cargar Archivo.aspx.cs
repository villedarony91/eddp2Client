using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EDDP2.Utilities;
using System.IO;
using System.Threading;

namespace EDDP2
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamReader reader = File.OpenText("c:/ejemplo.txt");
            string line;
            while ((line = reader.ReadLine()) != null)
            {
                StaticSession.ws.receiveMessage(line);
            }
            reader.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            
        }
    }
}