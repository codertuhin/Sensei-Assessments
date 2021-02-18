using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["password"] = null;
            Session["userId"] = null;
            Session["UserName"] = null;


            //Response.Redirect("~\\Login.aspx", false);
            Session.Clear();
            Session.Abandon();
            //ContentSplitter.Panes["ContentLeft"].Visible = false;
            Response.Redirect("~/Login.aspx");
        }
    }
}