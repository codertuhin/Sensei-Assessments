using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class DownloadComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null ||
               Session["ReportFilePath"] == null ||
               Session["ReportID"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);

                return;
            }

            if (Session["isDownload"] != null && Session["isDownload"].ToString() == "1")
            {
                LinkButton1_Click(sender, e);
            }
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            //Timer1.Enabled = true;

        }

        protected void btnComprehensiveReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComprehensiveReport.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Timer1.Enabled = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var downloadFilePath = Session["ReportFilePath"].ToString();
            Response.ContentType = "application/octect-stream";
           
            Response.AppendHeader("content-disposition", "filename=Report.pdf");
            Response.TransmitFile(downloadFilePath);

            Response.End();

        }
    }
}