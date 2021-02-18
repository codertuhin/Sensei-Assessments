using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class TransactionFailed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TransactionID"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
                return;
            }



            var ins = new ORM.SenseiPortalEntities2();

            var transactionID = Convert.ToInt32(Session["TransactionID"].ToString());

            var transactionInfo = ins.Transactions.FirstOrDefault(v => v.id == transactionID);
            transactionInfo.status = "FAILED";

            ins.SaveChanges();

            Session["TransactionID"] = null;
        }

        protected void btnComprehensiveReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("Downloads.aspx");
        }
    }
}