using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EDDP2
{
    public partial class reporte1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            bool f = this.CheckBoxFecha.Checked;
            bool u = CheckBoxUsuario.Checked;
            bool v = CheckBoxValor.Checked;
            string getVal = StaticSession.ws.report1(Convert.ToInt32(f).ToString(),
                Convert.ToInt32(v).ToString(),
                Convert.ToInt32(u).ToString(),
                this.TextFechaInicial.Text, TextFechaFinal.Text, TextValor.Text, Textusuario.Text);
            List<String> val = getVal.Split(';').ToList<String>();
            List<String> parsed;
            DataTable dt = new DataTable();
            dt.Columns.Add("Usuario");

            for (int i = 0; i < val.Count; i++)
            {
                    DataRow dr = dt.NewRow();
                    dr["Usuario"] = val.ElementAt(i).ToString();
                    dt.Rows.Add(dr);
                
               
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}