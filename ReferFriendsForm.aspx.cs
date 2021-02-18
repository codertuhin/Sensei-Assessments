using coopors.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class ReferFriendsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~//Default.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtContactPersonName.Text) && string.IsNullOrEmpty(txtName2.Text) && string.IsNullOrEmpty(txtName3.Text) && string.IsNullOrEmpty(txtName4.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter at least one person information.')", true);
                return;
            }


            var to = "info@sensei-assessments.com";

            var Subject = "Referral Contact Form Submitted";
            var Body = $"The following information was submitted:";
            Body += $"Name: {txtContactPersonName.Text}, Email: {txtEmail.Text}, Phone: {txtPhone.Text}<br/>";
            Body += $"Name: {txtName2.Text}, Email: {txtEmail2.Text}, Phone: {txtPhone2.Text}<br/>";
            Body += $"Name: {txtName3.Text}, Email: {txtEmail3.Text}, Phone: {txtPhone3.Text}<br/>";
            Body += $"Name: {txtName4.Text}, Email: {txtEmail4.Text}, Phone: {txtPhone4.Text}<br/>";

            Functions.SendEmail(Subject, Body, to);


            Response.Redirect("~\\Default.aspx", false);

        }
    }
}