using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class Downloads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userId"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
                return;
            }

            var userID = int.Parse(Session["userId"].ToString());

            var ins = new ORM.SenseiPortalEntities2();
            var reports = ins.UserReports.Where(v => v.UserID == userID).OrderByDescending(v => v.CreationDate);

            ComboBox.DataSource = reports.ToList();
            ComboBox.DataBind();
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            var ins = new ORM.SenseiPortalEntities2();
            var selectedID = Convert.ToInt32(ComboBox.SelectedItem.Value);
            var download = ins.UserReports.FirstOrDefault(v => v.id == selectedID);
            if (download != null)
            {
                if (download.IsActive == false || download.Code == null)
                {

                    Session["ReportFilePath"] = download.ReportFile;
                    Session["ReportID"] = download.id;
                    Session["RequestToDownload"] = 1;

                    Response.Redirect("~\\Home.aspx", false);

                }
                else
                {
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename=Report.pdf");
                    Response.TransmitFile(download.ReportFile);
                    Response.End();
                }
            }
        }
    }
}