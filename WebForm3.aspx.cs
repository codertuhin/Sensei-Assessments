using coopors.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public SenseiPortalEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            db = new SenseiPortalEntities();
            coopors.User u = new coopors.User();
            u.FirstName = txtFirstName.Text;
            u.LastName = txtLastName.Text;
            u.Title = txtTitle.Text;
            u.Position = txtPosition.Text;
            u.Postal = txtPostal.Text;
            u.Address = txtAddress1.Text;
            u.E_mail = txtEmail.Text;
            u.PhoneNumber = txtPhoneNumber.Text;
            if (txtPassword.Text==txtConfirmPassword.Text)
            {
                u.Password = txtConfirmPassword.Text;
            }
            u.State = txtState.Text;
            u.City = txtCity.Text;
            u.Company = txtCompany.Text;
            db.User.Add(u);
            db.SaveChanges();
        }
    }
}