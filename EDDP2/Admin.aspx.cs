using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EDDP2.Utilities;
using System.IO;

namespace EDDP2
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                if (FileUploadControl.HasFile)
                {
                    try
                    {
                        string filename = Path.GetFileName(FileUploadControl.FileName);
                        FileUploadControl.SaveAs(Server.MapPath("~/") + filename);
                        StatusLabel.Text = "Upload status: File uploaded!";
                        string toRead = Server.MapPath(FileUploadControl.FileName);
                        StreamReader reader = File.OpenText(toRead);
                        string line;
                        while ((line = reader.ReadLine()) != null)
                        {
                            StaticSession.ws.receiveMessage(line);
                        }
                        reader.Close();
                    }
                    catch (Exception ex)
                    {
                        StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                    }
                }
            }
            GenerateDot gen = new GenerateDot();
            String s = StaticSession.ws.graphAvlTree();
            gen.createDot(s, "avlTree");
            s = StaticSession.ws.sendArbolB();
            gen.createDot(s, "btree");
            s = StaticSession.ws.sendHashGraph();
            gen.createDot(s, "hashTable");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {

        }
    }
}