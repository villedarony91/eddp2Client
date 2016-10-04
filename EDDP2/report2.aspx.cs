using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EDDP2
{
    public partial class report2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fechaIni = TextFechaInicial.Text;
            string fechaFin = TextFechaFinal.Text;
            string getVal = StaticSession.ws.report2(fechaIni, fechaFin);
            List<string> broken = getVal.Split(';').ToList<String>();
            DataTable dt = new DataTable();
            dt.Columns.Add("Value");
            for (int i = 0; i < broken.Count; i++)
            {
                DataRow dr = dt.NewRow();
                dr["Value"] = broken.ElementAt(i);
                dt.Rows.Add(dr);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}