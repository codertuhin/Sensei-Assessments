using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Globalization;
using System.Collections;
using coopors.Models;
using coopors.ORM;
using DevExpress.Web;
using System.Net.Mail;
using coopors.Class;

namespace coopors
{
    public partial class SignUp : System.Web.UI.Page
    {
        public SenseiPortalEntities2 db;

        protected void Page_Load(object sender, EventArgs e)
        {
            SiteMaster master = new SiteMaster();
            ASPxButton btn = (ASPxButton)master.FindControl("btnLogOut");

            if (btn != null)
                btn.Visible = false;


        }

        protected void Page_Init(object sender, EventArgs e)
        {
            SiteMaster master = new SiteMaster();
            ASPxButton btn = (ASPxButton)master.FindControl("btnLogOut");
            if (btn != null)
                btn.Visible = false;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsEmailValid())
            {
                db = new SenseiPortalEntities2();
                User u = new User();
                u.FirstName = txtFirstName.Text;
                u.LastName = txtLastName.Text;
                u.Title = "N/A";
                u.Position = txtPosition.Text;
                u.Postal = txtPostal.Text;
                u.Address = txtAddress1.Text;
                u.E_mail = txtEmail.Text;
                u.PhoneNumber = txtPhoneNumber.Text;
                if (txtPassword.Text == txtConfirmPassword.Text)
                {
                    u.Password = txtConfirmPassword.Text;
                }
                u.Country = cmbCountry.SelectedItem.ToString();
                u.State = txtState.Text;
                u.City = txtCity.Text;
                u.Company = txtCompany.Text;
                if (u.E_mail != "" && u.Password != "")
                {
                    db.Users.Add(u);
                    db.SaveChanges();
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SignUp Completed')", true);
                    if (IsLogin())
                    {

                        var to = txtEmail.Text;

                        var Subject = "Welome to Sensei Assessments";
                        var Body = $"Hi {u.FirstName},<br/><br/><strong>Welcome to Sensei-Assessments</strong>";
                        Body += $"Here is your sensei assessment credentials:<br/>" +
                            $"Email: <strong>{u.E_mail}</strong><br/><br/>Password: <strong>{u.Password}</strong><br/><br/>Thanks.<br/>The Sensei-Assessments Team";

                        Functions.SendEmail(Subject, Body, to);


                        Response.Redirect("~\\AssessmentSelectingPage.aspx", false);
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SignUp fail Please Enter Correct Email And Password')", true);

                }
            }
        }

        public bool IsLogin()
        {
            bool valid = false;
            db = new SenseiPortalEntities2();
            string email = txtEmail.Text;
            string pass = txtPassword.Text;
            var sp = db.Users.Where(v => v.E_mail == email && v.Password == pass).FirstOrDefault();
            if (sp != null)
            {
                Session["email"] = sp.E_mail;
                Session["password"] = sp.Password;
                Session["userId"] = sp.OID;
                Session["UserName"] = txtFirstName.Text;
                Session["company"] = txtCompany.Text;

                valid = true;
            }
            return valid;
        }
        public bool IsEmailValid()
        {
            bool isValid = true;
            db = new SenseiPortalEntities2();
            string email = txtEmail.Text;
            string pass = txtPassword.Text;
            var sp = db.Users.Where(v => v.E_mail == email);
            if (sp.Count() != 0)
            {
                isValid = false;
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This email already registered');", true);

            }
            return isValid;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Login.aspx", false);
        }


        protected void cmbCountry_Init1(object sender, EventArgs e)
        {
            Dictionary<string, string> objDic = new Dictionary<string, string>();

            foreach (CultureInfo ObjCultureInfo in CultureInfo.GetCultures(CultureTypes.SpecificCultures))

            {

                RegionInfo objRegionInfo = new RegionInfo(ObjCultureInfo.Name);

                if (!objDic.ContainsKey(objRegionInfo.EnglishName))

                {

                    objDic.Add(objRegionInfo.EnglishName, objRegionInfo.TwoLetterISORegionName.ToLower());

                }

            }
            List<string> data = new List<string>();
            //List<Country> countryLst = new List<Country>();
            foreach (var item in objDic)
            {
                data.Add(item.Key);
                //countryLst.Add(new Country() { Name = item.Key, sortName = item.Value });
            }

            cmbCountry.DataSource = data.OrderBy(v => v).ToList();
            cmbCountry.DataBind();
            // SortedList<string, string> sortedList = new SortedList<string, string>(objDic);

            //cmbCountry.ValueField = "sortName";
            //cmbCountry.TextField = "Name";
            // cmbCountry.ValueType = typeof(string);

        }

        protected void CallbackPanel_Callback(object sender, CallbackEventArgsBase e)
        {
            //if (!IsEmailValid())
            //{
            //    passedInfo.InnerText = "Email already exists.";

            //}
            //else
            //{
            //    passedInfo.InnerText = "";
            //}
        }
    }
}