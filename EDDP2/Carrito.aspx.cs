using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EDDP2
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (StaticSession.user.Equals("") || StaticSession.pass.Equals(""))
            {
                Server.Transfer("Login.aspx", true);
            }
            String initial = StaticSession.ws.sendCartInfo(StaticSession.user);
            List<String> campos = initial.Split(';').ToList<String>();
            List<String> codes;
            
            if (campos.Count == 5)
            {
                codes = campos.ElementAt(0).Split(',').ToList<String>();
                List<String> names = campos.ElementAt(1).Split(',').ToList<String>();
                List<String> prices = campos.ElementAt(2).Split(',').ToList<String>();
                List<string> cant = campos.ElementAt(3).Split(',').ToList<string>();
                List<String> images = campos.ElementAt(4).Split(',').ToList<String>();
                DataTable dt = new DataTable();
                dt.Columns.Add("Code");
                dt.Columns.Add("Name");
                dt.Columns.Add("Cant");
                dt.Columns.Add("Price");
                dt.Columns.Add("Image");
                for (int i = 0; (i < codes.Count); i++)
                {
                    var row = dt.NewRow();
                    row["Code"] = codes.ElementAt(i);
                    row["Name"] = names.ElementAt(i);
                    row["Price"] = prices.ElementAt(i);
                    row["Cant"] = cant.ElementAt(i);
                    row["Image"] = StaticSession.imagePath + images.ElementAt(i);
                    dt.Rows.Add(row);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Compra.aspx", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String code = GridView1.SelectedRow.Cells[2].Text;
            String user = StaticSession.user;
            StaticSession.ws.removeFromCart(user,code);
            Response.Redirect("Carrito.aspx");
        }
    }
}