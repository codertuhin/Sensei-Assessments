using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public SenseiPortalEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
         }

        protected void BootstrapButton1_Click(object sender, EventArgs e)
        {
            db = new SenseiPortalEntities();
            string email = txtEmail.Value;
            string pass = txtPassword.Value;
            var sp = db.User.Where(v => v.E_mail == email && v.Password==pass).FirstOrDefault();

            if (sp!=null)
            {
                Session["email"] = sp.E_mail;
                Session["password"] = sp.Password;
                Response.Redirect("~\\Technical-Adaptive-Assessment.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login fail Please Enter Correct Email And Password')", true);

            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\SignUp.aspx");
        }
    }
}