using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDDP2
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string s = user.Value;
            string p = pass.Value;
            StaticSession.user = s;
            StaticSession.pass = p;
            if (StaticSession.ws.valUser(s, p) == 1)
            {
                Server.Transfer("home.aspx", true);
            }
                
        }
    }
}