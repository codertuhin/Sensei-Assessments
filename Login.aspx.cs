using coopors.ORM;
using DevExpress.Web;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class Login : System.Web.UI.Page
    {
        public SenseiPortalEntities2 db;

        protected void Page_Load(object sender, EventArgs e)
        {
            //SiteMaster master = new SiteMaster();
            //ASPxButton btn = (ASPxButton)Master.FindControl("btnLogOut");
            //btn.Visible = false;
            
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            //SiteMaster master = new SiteMaster();
            //ASPxButton btn = (ASPxButton)Master.FindControl("btnLogOut");
            //ASPxLabel lbl = (ASPxLabel)Master.FindControl("lblUser");


            //lbl.Text = "";
            //btn.Visible = false;

           
            
            
        }
        //[WebMethod]
        //public static void GoLogin()
        //{

        //}
        protected void LoginButton_Click(object sender, EventArgs e)
        {
          

            db = new SenseiPortalEntities2();
            string email = txtEmail.Text;
            string pass = txtPassword.Text;
            var sp = db.Users.Where(v => v.E_mail == email && v.Password == pass).FirstOrDefault();
            if (sp != null)
            {
                Session["email"] = sp.E_mail;
                Session["password"] = sp.Password;
                Session["userId"] = sp.OID;
                Session["UserName"] = sp.FirstName;
                Session["company"] = sp.Company;

                Response.Redirect("~\\AssessmentSelectingPage.aspx", false);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login failed. Please enter correct Email and Password.')", true);
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\SignUp.aspx", false);
        }
    }
}