using coopors.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
                return;
            }

            var ins = new ORM.SenseiPortalEntities2();
            var userID = Convert.ToInt32(Session["userId"]);

            var userInfo = ins.Users.FirstOrDefault(v => v.OID == userID);
            if (userInfo == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (Session["ReportID"] == null)
            {
                Response.Redirect("Downloads.aspx");
                return;
            }

            if (Session["TransactionID"] == null)
            {
                Response.Redirect("Downloads.aspx");
                return;
            }


            var reportID = Convert.ToInt32(Session["ReportID"].ToString());
            var transactionID = Convert.ToInt32(Session["TransactionID"].ToString());

            var transactionInfo = ins.Transactions.FirstOrDefault(v => v.id == transactionID);
            transactionInfo.status = "SUCCESS";

            ins.SaveChanges();

            Session["TransactionID"] = null;






            var download = ins.UserReports.FirstOrDefault(v => v.id == reportID);

            if (download == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            var AssessmentName = download.Assessment;
            var FileName = download.ReportFile;
            var DateTaken = $"{download.CreationDate.Value.ToLongDateString()} {download.CreationDate.Value.ToLongTimeString()}";


            var FileNameExcel = FileName.Replace(".pdf", ".xlsx");



            //mail.From = new MailAddress("info@sensei-assessments.com", "Sensei-Assessments");

            //mail.To.Add("info@sensei-assessments.com");

            //mail.Bcc.Add("codertuhin@gmail.com");


            var Subject = "Comprehensive Report Request";
            var Body = $"Dear Sensei Assessment Team,<br/><br/><strong>{userInfo.FirstName} {userInfo.LastName} has requested for comprehensive report of the following assessment :</strong>";
            Body += $"<br/><br/><b>Assessment Name:<b/> {AssessmentName}<br/><b>Date Taken: <b/>{DateTaken}";

            Body += $"Email: <strong>{userInfo.E_mail}</strong><br/><br/></strong><br/><br/>Thanks.<br/>The Sensei-Assessments Team";


            Functions.SendEmail(Subject, Body, "info@sensei-assessments.com", FileNameExcel);


            //Response.Write("Mail Sent");
        }

        protected void btnComprehensiveReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssessmentSelectingPage.aspx");
        }
    }
}