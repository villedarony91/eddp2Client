using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EDDP2.Utilities;
using System.Data;

namespace EDDP2
{
    public partial class ShowUserGraph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (StaticSession.user.Equals("") || StaticSession.pass.Equals(""))
            {
                Server.Transfer("Login.aspx", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String s = StaticSession.ws.graphAdList(StaticSession.user);
            GenerateDot gen = new GenerateDot();
            gen.createDot(s, "adress");
            DataTable dt = new DataTable();
            dt.Columns.Add("Value");
            DataRow dr = dt.NewRow();
            dr["Value"] = "images\\adress.png";
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[0].Visible = false;
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                gvr.Cells[1].Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = StaticSession.ws.sendCarritoGraph(StaticSession.user);
            GenerateDot gen = new GenerateDot();
            gen.createDot(s, "cart2");
            DataTable dt = new DataTable();
            dt.Columns.Add("Value");
            DataRow dr = dt.NewRow();
            dr["Value"] = "images\\cart2.png";
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[0].Visible = false;
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                gvr.Cells[1].Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String s = StaticSession.ws.sendWhishGraph(StaticSession.user);
            GenerateDot gen = new GenerateDot();
            gen.createDot(s, "whish");
            DataTable dt = new DataTable();
            dt.Columns.Add("Value");
            DataRow dr = dt.NewRow();
            dr["Value"] = "images\\whish.png";
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[0].Visible = false;
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                gvr.Cells[1].Visible = false;
            }
        }
    }
}