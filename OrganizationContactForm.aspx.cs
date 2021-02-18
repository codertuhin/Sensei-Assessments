using coopors.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class OrganizationContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           

            var Subject = "Organization Contact Form Submitted";
            var Body = $"The following information was submitted:";
            Body += $"Organization: {txtOrganizatioName.Text}<br/>Contact Person: {txtContactPersonName.Text}, Designation: {txtDesignation.Text}<br/> Participants: {txtParticipants.Text}<br/> Description: {txtProblem.Text}" +
                $"<br/><br/>Email: <strong>{txtEmail.Text}</strong><br/><br/>Phone: <strong>{txtPhone.Text}</strong><br/><br/>Thanks.<br/>The Sensei-Assessments Team";

            Functions.SendEmail(Subject, Body, "info@sensei-assessments.com");


            Response.Redirect("~\\Defult.aspx", false);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Default.aspx");
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {

        }
    }
}