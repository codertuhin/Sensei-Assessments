using coopors.ORM;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class ComprehensiveReport : System.Web.UI.Page
    {

        public int reportID { get; set; }
        public string AssessmentName { get; set; }
        public string FileName { get; set; }

        public string DateTaken { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Session["userId"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
                return;
            }


            if (Session["ReportID"] != null)
            {
                var ins = new ORM.SenseiPortalEntities2();

                reportID = Convert.ToInt32(Session["ReportID"].ToString());

                var download = ins.UserReports.FirstOrDefault(v => v.id == reportID);

                if (download != null)
                {
                    AssessmentName = download.Assessment;
                    FileName = download.ReportFile;
                    DateTaken = $"{download.CreationDate.Value.ToLongDateString()} {download.CreationDate.Value.ToLongTimeString()}";
                }
            }


        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            ServicePointManager.Expect100Continue = true;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls
                   | SecurityProtocolType.Tls11
                   | SecurityProtocolType.Tls12
                   | SecurityProtocolType.Ssl3;


            var ins = new ORM.SenseiPortalEntities2();
            var userID = Convert.ToInt32(Session["userId"]);


            var transactionID = Guid.NewGuid().ToString().Replace("-", "").Substring(0, 8);


            var userInfo = ins.Users.FirstOrDefault(v => v.OID == userID);
            if (userInfo == null)
            {
                Response.Redirect("Login.aspx?trid=" + transactionID);
                return;
            }


            string baseUrl = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";

            // CREATING LIST OF POST DATA
            NameValueCollection PostData = new NameValueCollection();
            PostData.Add("total_amount", "10.00");
            PostData.Add("currency", "USD");
            PostData.Add("tran_id", transactionID);
            PostData.Add("success_url", baseUrl + "Success.aspx");
            PostData.Add("fail_url", baseUrl + "TransactionFailed.aspx");
            PostData.Add("cancel_url", baseUrl + "TransactionFailed.aspx");
            PostData.Add("version", "3.00");
            PostData.Add("cus_name", $"{userInfo.FirstName} {userInfo.LastName}");
            PostData.Add("cus_email", $"{userInfo.E_mail}");
            PostData.Add("cus_add1", $"{userInfo.Address}");
            PostData.Add("cus_add2", "");
            PostData.Add("cus_city", $"{userInfo.City}");
            PostData.Add("cus_state", userInfo.State);
            PostData.Add("cus_postcode", userInfo.Postal);
            PostData.Add("cus_country", userInfo.Country);
            PostData.Add("cus_phone", userInfo.PhoneNumber);
            PostData.Add("cus_fax", "");
            PostData.Add("ship_name", userInfo.FirstName);
            PostData.Add("ship_add1", userInfo.Address);
            PostData.Add("ship_add2", "");
            PostData.Add("ship_city", userInfo.City);
            PostData.Add("ship_state", userInfo.State);
            PostData.Add("ship_postcode", userInfo.Postal);
            PostData.Add("ship_country", userInfo.Country);
            PostData.Add("value_a", userID.ToString());
            PostData.Add("value_b", AssessmentName);
            PostData.Add("value_c", DateTaken);
            PostData.Add("value_d", "SENSEI-ASSESSMENTS");


            Transaction transaction = new Transaction()
            {
                amount = 10,
                assreportid = reportID,
                status = "Pending",
                trcode = transactionID,
                trdate = DateTime.Now,
                userID = userID
            };

            ins.Transactions.Add(transaction);
            ins.SaveChanges();

            Session["TransactionID"] = transaction.id;

            //SSLCommerz sslcz = new SSLCommerz("sense5dca082ef2de6", "sense5dca082ef2de6@ssl", true);
            //SSLCommerz sslcz = new SSLCommerz("demotest", "qwerty");
            SSLCommerz sslcz = new SSLCommerz("senseiassessmentslive", "5DD0FB95EE1E552521");
            String response = sslcz.InitiateTransaction(PostData);
            Response.Redirect(response);
        }
    }
}