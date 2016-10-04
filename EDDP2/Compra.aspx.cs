using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EDDP2
{
    public partial class Compra : System.Web.UI.Page
    {
        double total = 0;
        List<String> gCodes = new List<string>();
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
                gCodes = codes;
                List<String> names = campos.ElementAt(1).Split(',').ToList<String>();
                List<String> prices = campos.ElementAt(2).Split(',').ToList<String>();
                List<string> cant = campos.ElementAt(3).Split(',').ToList<string>();
                List<String> images = campos.ElementAt(4).Split(',').ToList<String>();
                DataTable dt = new DataTable();
                dt.Columns.Add("Code");
                dt.Columns.Add("Name");
                dt.Columns.Add("Cant");
                dt.Columns.Add("Price");
                double price = 0;
                int cantidad = 0;
                for (int i = 0; (i < codes.Count); i++)
                {
                    var row = dt.NewRow();
                    row["Code"] = codes.ElementAt(i);
                    row["Name"] = names.ElementAt(i);
                    row["Price"] = prices.ElementAt(i);
                    row["Cant"] = cant.ElementAt(i);
                    Double.TryParse(prices.ElementAt(i), out price);
                    int.TryParse(cant.ElementAt(i), out cantidad);
                    total += (price * cantidad);
                    dt.Rows.Add(row);
                }
                var row2 = dt.NewRow();
                row2["Price"] = total.ToString();
                row2["Code"] = "Total";
                dt.Rows.Add(row2);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string s = user.Value;
            string p = pass.Value;
            string tot = total.ToString();
            if (tot.Equals(s) && p.Equals(StaticSession.pass))
            {
                StaticSession.ws.sale(StaticSession.user);
                for (int i = 0; (i < gCodes.Count); i++)
                {
                    StaticSession.ws.removeFromCart(StaticSession.user,gCodes.ElementAt(i));
                }
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Compra realizada con exito";
            }else{
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Error en compra, revisar total y password";
            }
            
            //Server.Transfer("Compra.aspx", true);
        }
        
    }
}