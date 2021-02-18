using coopors.Class;
using coopors.ORM;
using coopors.Reports;
using DevExpress.Spreadsheet;
using DevExpress.Web;
using DevExpress.XtraReports.UI;
using libxl;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;
using System.Web.UI;

namespace coopors
{
    public partial class TKI_Interaction_Style_assessment : System.Web.UI.Page
    {
        InsertUpdate ins = new InsertUpdate();
        SenseiPortalEntities2 db = new SenseiPortalEntities2();
        string SecurityCodesEncrypt = "";
        string QueryString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("~\\Login.aspx", false);
                return;
            }

            txtName.Text = Session["UserName"].ToString();
            txtCompany.Text = Session["company"].ToString();
            txtEmail.Text = Session["email"].ToString();

            //if (IsCallback)
            //{
            //    // Intentionally pauses server-side processing, 
            //    // to demonstrate the Loading Panel functionality.
            //    Thread.Sleep(250);
            //}

           

            if (!IsPostBack)
            {
                btnNext.ClientVisible = false;
                

                var pageName = "Interaction-Style-assessment.aspx";

                var user = int.Parse(Session["userId"].ToString());
              //  var user = int.Parse("123");
                if (user != 0)
                {
                    var ans = db.AnswerStates.Where(v => v.UserId == user && v.Page == pageName);
                    if (ans != null)
                    {
                        foreach (var answ in ans)
                        {
                            var c = new ControlFinder<ASPxRadioButtonList>();
                            c.FindChildControlsRecursive(carTabPage);
                            var ctrls = c.FoundControls;
                            var se = ctrls.Where(v => v.ID == answ.ControlId);
                            if (se != null)
                            {
                                se.FirstOrDefault().SelectedIndex = int.Parse(answ.Answer.ToString());
                            }


                        }
                    }
                    var state = db.tblHoltStates.Where(v => v.PageName == pageName && v.UserId == user).FirstOrDefault();
                    if (state != null)
                    {
                        carTabPage.ActiveTabIndex = int.Parse(state.Holt_State.ToString());
                    }
                }

                if (carTabPage.ActiveTabIndex == 1)
                {
                    ASPxButton2.Text = "Main Menu";
                    ASPxButton1.Text = "Start";
                }
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //btnNext.ClientEnabled = false;


            var c = new ControlFinder<ASPxRadioButtonList>();
            c.FindChildControlsRecursive(carTabPage);
            var ctrls = c.FoundControls;

            var data = new Dictionary<int, int>();
            int index = 1;
            foreach (var item in ctrls)
            {
                data.Add(index, Convert.ToInt32(item.SelectedItem.Value));
                index++;

            }

            var guid = Guid.NewGuid().ToString();

            //1.Prepare the name for renaming
            //string newName = string.Format("{0}_{1}_{2}", Session["UserName"].ToString(), txtCompany.Text, DateTime.Now.Ticks.ToString());
            string newName = string.Format("{0}_{1}_{2}", Session["UserName"].ToString(), txtCompany.Text, guid);
            string modifiedName = string.Format("{0}_{1}_{2}_Edited", Session["UserName"].ToString(), txtCompany.Text, DateTime.Now.ToString("yyyyMMddHHmm"));

            //2.Create the Folder if it doesn't already exist
            if (!Directory.Exists(Server.MapPath("~") + @"\Files\Docx\"))
                Directory.CreateDirectory(Server.MapPath("~") + @"\Files\Docx\");

            //3.Copy the file with the new name
            string newFileName = Server.MapPath("~") + @"\Files\Docx\" + newName + ".xlsx";
            //string modifiedFileName = Server.MapPath("~") + @"Files\Docx\" + modifiedName + ".xlsx";


            File.Copy(Server.MapPath("~") + @"\Templates\V2\Interaction-Style-assessment.xlsx", newFileName);


            ProcessExcel(newFileName, data);
        }

        public static class ResponseHelper
        {
            public static void Redirect(string url, string target, string windowFeatures)
            {
                HttpContext context = HttpContext.Current;

                if ((String.IsNullOrEmpty(target) ||
                    target.Equals("_self", StringComparison.OrdinalIgnoreCase)) &&
                    String.IsNullOrEmpty(windowFeatures))
                {

                    context.Response.Redirect(url);
                }
                else
                {
                    Page page = (Page)context.Handler;
                    if (page == null)
                    {
                        throw new InvalidOperationException(
                            "Cannot redirect to new window outside Page context.");
                    }
                    url = page.ResolveClientUrl(url);

                    string script;
                    if (!String.IsNullOrEmpty(windowFeatures))
                    {
                        script = @"window.open(""{0}"", ""{1}"", ""{2}"");";
                    }
                    else
                    {
                        script = @"window.open(""{0}"", ""{1}"");";
                    }

                    script = String.Format(script, url, target, windowFeatures);
                    ScriptManager.RegisterStartupScript(page,
                        typeof(Page),
                        "Redirect",
                        script,
                        true);
                }
            }
        }

        void ProcessExcel(string fileName, Dictionary<int, int> data)
        {

            

            Workbook workbook = new Workbook();
            workbook.LoadDocument(fileName);

            var worksheet = workbook.Worksheets[0];
            //var worksheet = workbook.getSheet(0);

            //Write 20 in Cell - C3
            worksheet.Cells[6, 2].Value = txtName.Text;

            worksheet.Cells[65, 3].Value = txtCompany.Text + ", " + txtEmail.Text;

            //worksheet.writeStr(3, 3, txtName.Text);
            //worksheet.writeStr(66, 4, txtCompany.Text + ", " + txtEmail.Text);

            var curRow = 9;
            foreach (var item in data)
            {

                if (item.Value == 0)
                    worksheet.Cells[curRow, 4].Value = 1;
                //worksheet.writeNum(curRow, 5, 1);
                else
                    worksheet.Cells[curRow + 1, 4].Value = 1;
                //worksheet.writeNum(curRow + 1, 5, 1);

                curRow += 2;
            }

            //Save work book (.xlsx format)
            //workBook.SaveAs(fileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlOpenXMLWorkbook, null, null, false,
            //false, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlShared, false, false, null, null, null);

            //excelAppObj.Quit();

            //workBook.WriteXLSX(fileName);
            //workbook.save(fileName);
            workbook.SaveDocument(fileName);
            var pdfFileName = fileName.Replace(".xlsx", ".pdf");
            workbook.ExportToPdf(pdfFileName);
            Session["ReportFilePath"] = pdfFileName;

            var reportID = ins.SaveDownloads(int.Parse(Session["userId"].ToString()), "Interaction Personality Type", pdfFileName);
            Session["ReportID"] = reportID;

            string errorFileName = Server.MapPath("~") + @"\Files\Docx\EmailError.txt";
           

            var res = 1; //Basics.email_send(pdfFileName, string.Format("Interaction Personality Assessment - {0}-{1}", txtName.Text, txtCompany.Text), "Your assessment report is ready to download.", txtEmail.Text, errorFileName);
            var CurrentPage = "Interaction-Style-assessment.aspx";
            ins.DeleteHolt(int.Parse(Session["userId"].ToString()), CurrentPage);
            ins.DeleteAnsState(CurrentPage, int.Parse(Session["userId"].ToString()));
            if (res == 1)
                Response.Redirect("Home.aspx");
            else
                Response.Redirect("Error.aspx");

            //ASPxWebControl.RedirectOnCallback("Home.aspx");

        }
        public string GetCurrentPageName()
        {
                string sPath = Request.Url.AbsolutePath;
                System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
                string sRet = oInfo.Name;
                return sRet;
        }
        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            try
            {
                var CurrentPage = GetCurrentPageName();
                var activeTab = carTabPage.ActiveTabIndex;
                ins.InsertUpdateHoltState(int.Parse(Session["userId"].ToString()), activeTab, CurrentPage);
                var c = new ControlFinder<ASPxRadioButtonList>();
                c.FindChildControlsRecursive(carTabPage);
                var ctrls = c.FoundControls.ToList();
                foreach (var item in ctrls)
                {
                    if (item.SelectedItem != null)
                    {
                        ins.InsertQuestion(int.Parse(Session["userId"].ToString()), CurrentPage, item.ID.ToString(), int.Parse(item.SelectedIndex.ToString()));
                    }
                }
            }
            catch (System.Exception ex)
            {

            }
        }

        protected void ASPxCallback1_Callback(object source, CallbackEventArgs e)
        {
            try
            {
                var CurrentPage = GetCurrentPageName();
                var activeTab = carTabPage.ActiveTabIndex;
                ins.InsertUpdateHoltState(int.Parse(Session["userId"].ToString()), activeTab, CurrentPage);
                var c = new ControlFinder<ASPxRadioButtonList>();
                c.FindChildControlsRecursive(carTabPage);
                var ctrls = c.FoundControls.ToList();
                foreach (var item in ctrls)
                {
                    if (item.SelectedItem != null)
                    {
                        ins.InsertQuestion(int.Parse(Session["userId"].ToString()), CurrentPage, item.ID.ToString(), int.Parse(item.SelectedIndex.ToString()));
                    }
                }
            }
            catch (System.Exception ex)
            {

            }
        }

        protected void ASPxCallback2_Callback(object source, CallbackEventArgs e)
        {
            
            //QueryString=
            //string url = "~\\ReportViewers\\ReportViewer.aspx?" + SecurityCodesEncrypt + QueryString;

            //System.Web.HttpBrowserCapabilities browser = Request.Browser;


            //if (browser.MobileDeviceModel == "Unknown")
            //    TKI_Interaction_Style_assessment.ResponseHelper.Redirect(url, "_blank", "menubar=0,width=1300,height=700");
            //else
            //    TKI_Interaction_Style_assessment.ResponseHelper.Redirect(url, "_new", "");
        }

        //[WebMethod]
        //public static string GetDate()
        //{
        //    return DateTime.Now.ToString();
        //}

        //[System.Web.Services.WebMethod]
        //public static string Next()
        //{
        //    try
        //    {

        //        if (HttpContext.Current != null)
        //        {
        //            Page page = (Page)HttpContext.Current.Handler;
        //            ASPxPageControl carTabPage = (ASPxPageControl)page.FindControl("carTabPage");
        //            TKI_Interaction_Style_assessment style_assessment = new TKI_Interaction_Style_assessment();
        //            var CurrentPage = "Interaction-Style-assessment.aspx";
        //            var activeTab = carTabPage.ActiveTabIndex;
        //            style_assessment.ins.InsertUpdateHoltState(int.Parse(page.Session["userId"].ToString()), activeTab, CurrentPage);
        //            var c = new ControlFinder<ASPxRadioButtonList>();
        //            c.FindChildControlsRecursive(carTabPage);
        //            var ctrls = c.FoundControls.ToList();
        //            foreach (var item in ctrls)
        //            {
        //                if (item.SelectedItem != null)
        //                {
        //                    style_assessment.ins.InsertQuestion(int.Parse(page.Session["userId"].ToString()), CurrentPage, item.ID.ToString(), int.Parse(item.SelectedIndex.ToString()));
        //                }
        //            }
        //        }

        //    }
        //    catch (System.Exception ex)
        //    {

        //    }
        //    return "Hello";
        //}

        //public void NextIns(int activeTab)
        //{
        //    try
        //    {
        //        //Page page = (Page)HttpContext.Current.Handler;
        //        //ASPxPageControl carTabPage = (ASPxPageControl)page.FindControl("carTabPage");
        //        //TKI_Interaction_Style_assessment style_assessment = new TKI_Interaction_Style_assessment();
        //        var CurrentPage = "Interaction-Style-assessment.aspx";
        //        //var activeTab = carTabPage.ActiveTabIndex;
        //        ins.InsertUpdateHoltState(int.Parse(Session["userId"].ToString()), activeTab, CurrentPage);
        //        var c = new ControlFinder<ASPxRadioButtonList>();
        //        c.FindChildControlsRecursive(carTabPage);
        //        var ctrls = c.FoundControls.ToList();
        //        foreach (var item in ctrls)
        //        {
        //            if (item.SelectedItem != null)
        //            {
        //              ins.InsertQuestion(int.Parse(Session["userId"].ToString()), CurrentPage, item.ID.ToString(), int.Parse(item.SelectedIndex.ToString()));
        //            }
        //        }
        //    }
        //    catch(System.Exception ex)
        //    {

        //    }

        //}
    }
}