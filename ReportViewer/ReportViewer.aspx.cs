using coopors.Reports;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors.ReportViewer
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        int RdoValue = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Request.QueryString["RdoValue"]) != 0)
            {
                RdoValue = Convert.ToInt32(Request.QueryString["RdoValue"]);
            }

            if(RdoValue==1)
            {
                rptInteractionPersonality rpt = new rptInteractionPersonality();
                vwDocuementViewer.Report = rpt;
            }
            if(RdoValue==2)
            {
                rptNaturalAbility rpt = new rptNaturalAbility();
                vwDocuementViewer.Report = rpt;
            }
            if(RdoValue==3)
            {
                rptTechnicalAdaptivity rpt = new rptTechnicalAdaptivity();
                vwDocuementViewer.Report = rpt;
            }
        }
    }
}