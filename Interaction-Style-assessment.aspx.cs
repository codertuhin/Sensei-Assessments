using System;
using System.Linq;

namespace coopors
{
    public partial class Interaction_Style_assessment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
            }
        }
    }
}