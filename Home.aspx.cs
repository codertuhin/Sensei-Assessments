using coopors.Class;
using System;
using System.Linq;

namespace coopors
{
    public partial class Home : System.Web.UI.Page
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

            if (!IsPostBack)

            {
                //if this page is redirected from Downloads page then ignore sending email automatically.
                //if this page comes from after completing the assessment send the report to user email
                if (Session["RequestToDownload"] == null)
                {
                    var downloadFilePath = Session["ReportFilePath"].ToString();


                    var ins = new ORM.SenseiPortalEntities2();

                    var reportID = Convert.ToInt32(Session["ReportID"].ToString());

                    var download = ins.UserReports.FirstOrDefault(v => v.id == reportID);



                    var AssessmentName = download.Assessment;
                    //var FileName = download.ReportFile;
                    var DateTaken = $"{download.CreationDate.Value.ToLongDateString()} {download.CreationDate.Value.ToLongTimeString()}";

                    var userID = Convert.ToInt32(Session["userId"]);

                    var userInfo = ins.Users.FirstOrDefault(v => v.OID == userID);

                    var Subject = $"Sensei Assessments Report ({AssessmentName})";
                    var Body = $"Dear {userInfo.FirstName},<br/><br/>Thank you for taking Sensei-Assessments.<br/><br/>" +
                        $"Your Assessment Report is ready to download. Please find the attahed dcocument in this email.<br/><br/>" +
                        $"Assessment Taken: <strong>{AssessmentName}</strong><br/>" +
                        $"Date: <strong>{DateTaken}</strong><br/><br/>";
                    Body += $"Thanks.<br/>The Sensei-Assessments Team";

                    Functions.SendEmail(Subject, Body, userInfo.E_mail, downloadFilePath);
                }

                Session["RequestToDownload"] = null;

            }

        }

        protected void BootstrapButton1_Click(object sender, EventArgs e)
        {
            //if (!captcha.IsValid)
            //{
            //    captcha.ValidationSettings.ErrorText = "You entered wrong code.";
            //    return;
            //}

            if (Session["ReportFilePath"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
            }
            else
            {

                //if (!string.IsNullOrEmpty(txtCode.Text))
                //{

                var reportID = Session["ReportID"];
                if (reportID == null)
                {
                    Response.Redirect("~\\Login.aspx", false);

                }
                else
                {

                    //BootstrapButton1.ClientEnabled = false;


                    //var ins = new Class.InsertUpdate();

                    //if (ins.IsCouponUsed(txtCode.Text, int.Parse(Session["userId"].ToString())) == false)
                    //{
                    //    txtCode.Text = "";
                    //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You already used this coupon. Please try another.')", true);

                    //    return;
                    //}


                    //ins.UpdateDownloads(int.Parse(reportID.ToString()), txtCode.Text);



                    Response.Redirect("~\\DownloadComplete.aspx", false);



                }




                //}

            }


        }

        protected void btnComprehensiveReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComprehensiveReport.aspx");
        }
    }
}



//var filename = Server.MapPath("~") + @"Templates\V2\LeadershipAssessment.xlsx";




//Workbook workbook = new DevExpress.Spreadsheet.Workbook();
//workbook.LoadDocument(filename);
//            Worksheet worksheet = workbook.Worksheets[0];
//worksheet.PrintOptions.FitToPage = true;
//            //workbook.ExportToPdf(filename.Replace("xlsx", "pdf"));


//            workbook.AddService(typeof(IChartControllerFactoryService), new ChartControllerFactoryService());
//            workbook.AddService(typeof(IChartImageService), new ChartImageService());

//            //workbook.ExportToHtml(filename.Replace("xlsx", "html"), new HtmlDocumentExporterOptions() { EmbedImages = true });


//            using (FileStream pdfFileStream = new FileStream(filename.Replace("xlsx", "pdf"), FileMode.Create))
//            {
//                workbook.ExportToPdf(pdfFileStream);
//            }