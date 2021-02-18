using DevExpress.Web;
using System;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;

namespace coopors
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;
        //public static bool isShow = true;


        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                mMain.Visible = true;
                mMain.Items[0].Text = Session["UserName"].ToString();
                //lblUser.Text = Session["UserName"].ToString();
                //btnLogOut.Visible = true;
                //lblUser.Visible = true;
                btnSignLoginMaster.Visible = false;
                btnSignUpMaster.Visible = false;
            }
            else
            {
                //lblUser.Visible = false;
                //btnLogOut.Visible = false;
                mMain.Visible = false;

               
            }


            string path = HttpContext.Current.Request.Url.AbsolutePath;

            if (path.ToLower().Contains("login") || path.ToLower().Contains("signup"))
            {
                btnSignLoginMaster.Visible = false;
                btnSignUpMaster.Visible = false;
            }



            //btnLogOut.Visible = isShow;
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;




            //var connectionString = ConfigurationManager.ConnectionStrings["COOP_Online_Budget_SystemConnectionString"].ConnectionString;

            //XPObjectSpaceProvider osProvider = new XPObjectSpaceProvider(
            //   connectionString, null);
            //objectSpace = osProvider.CreateObjectSpace();



        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();

        }





        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           


            Session.Clear();
            Session.Abandon();
            ContentSplitter.Panes["ContentLeft"].Visible = false;
            Response.Redirect("~/AdminLogin.aspx");

            //LinkButton1.Text = "লগ ইন";
        }

        protected void ASPxPopupMenu1_ItemClick(object source, DevExpress.Web.MenuItemEventArgs e)
        {
            //Response.Redirect(");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["password"] = null;
            Session["userId"] = null;
            Session["UserName"] = null;


            //Response.Redirect("~\\Login.aspx", false);
            Session.Clear();
            Session.Abandon();
            ContentSplitter.Panes["ContentLeft"].Visible = false;
            Response.Redirect("~/Login.aspx");
        }
    }
}