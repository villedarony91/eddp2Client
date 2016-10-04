using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

namespace EDDP2
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (StaticSession.user.Equals("") || StaticSession.pass.Equals(""))
            {
                Server.Transfer("Login.aspx", true);
            }
            if (!Page.IsPostBack)
            {
                loadGridData(1);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            loadGridData(1);
            GridView1.PageIndex = e.NewPageIndex;
            loadGridData(e.NewPageIndex);
        }

        private void loadGridData(int ind)
        {
            
                DataTable dt = new DataTable();
                String code = StaticSession.ws.sendProdCode();
                String name = StaticSession.ws.SendProdName();
                String brand = StaticSession.ws.sendProdBrand();
                String price = StaticSession.ws.sendProdPrice();
                String image = StaticSession.ws.sendProdImage();
                List<String> list = code.Split(',').ToList<String>();
                List<String> names = name.Split(',').ToList<String>();
                List<String> brands = brand.Split(',').ToList<String>();
                List<String> prices = price.Split(',').ToList<String>();
                List<String> images = image.Split(',').ToList<String>();
                dt.Columns.Add("Code");
                dt.Columns.Add("Name");
                dt.Columns.Add("Brand");
                dt.Columns.Add("Price");
                dt.Columns.Add("Value");
                //int aux = (ind - 1) * 10;
                for (int i = 0; (i < list.Count); i++)
                {
                    var row = dt.NewRow();
                    row["Code"] = list.ElementAt(i);
                    row["Name"] = names.ElementAt(i);
                    row["Brand"] = brands.ElementAt(i);
                    row["Price"] = prices.ElementAt(i);
                    row["Value"] = StaticSession.imagePath + images.ElementAt(i);
                    dt.Rows.Add(row);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                String code = GridView1.SelectedRow.Cells[3].Text;
                TextBox tb = (TextBox)GridView1.SelectedRow.FindControl("tbQty");
                string cant = (!tb.Text.Equals("")) ? tb.Text : "1";
                String name = StaticSession.user;
                StaticSession.ws.receiveMessage("Carrito(" + name + "," + cant + "," + Convert.ToInt32(code));
                Response.Redirect("home.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                String code = GridView1.SelectedRow.Cells[3].Text;
                TextBox tb = (TextBox)GridView1.SelectedRow.FindControl("tbQty");
                string cant = (!tb.Text.Equals("")) ? tb.Text : "1";
                String name = StaticSession.user;
                StaticSession.ws.receiveMessage("PorComprar(" + name + "," + cant + "," + Convert.ToInt32(code));
                Response.Redirect("home.aspx");
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            StaticSession.pass = "";
            StaticSession.user = "";
            Server.Transfer("Login.aspx", true);
        }
    }
}