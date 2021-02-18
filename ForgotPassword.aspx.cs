using coopors.Class;
using coopors.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                var db = new SenseiPortalEntities2();
                string email = txtEmail.Text;

                var sp = db.Users.Where(v => v.E_mail == email).FirstOrDefault();
                if (sp == null)
                {
                    //email is not registered//
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sorry, the email you entered is not registered to the system.')", true);

                    return;
                }


                var to = txtEmail.Text;

               

                var Subject = "Forgot Password Request";
                var Body = $"Dear {sp.FirstName},<br/><br/><strong>Here is your Sensei-Assessments Credentials:</strong><br/>";
                Body += $"Email: <strong>{email}</strong><br/><br/>Password: <strong>{sp.Password}</strong><br/><br/>Thanks.<br/>The Sensei-Assessments Team";


                Functions.SendEmail(Subject, Body, to);


                Response.Redirect("Login.aspx");
            }
            catch (Exception)
            {

                throw;
            }


        }
    }
}