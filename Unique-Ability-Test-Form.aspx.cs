using coopors.Class;
using coopors.ORM;
using coopors.Reports;
using DevExpress.Spreadsheet;
using DevExpress.Web;
using DevExpress.XtraReports.UI;
using DevExpress.XtraSpreadsheet.Services;
using DevExpress.XtraSpreadsheet.Services.Implementation;
using libxl;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class Unique_Ability_Test_Form : System.Web.UI.Page
    {
        InsertUpdate ins = new InsertUpdate();
        SenseiPortalEntities2 db = new SenseiPortalEntities2();
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


            if (!IsPostBack)
            {

                btnNext.ClientVisible = false;

                var pageName = GetCurrentPageName();
                var user = int.Parse(Session["userId"].ToString());
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
            //var dic = Session["UNIQUE"] as List<KeyValuePair<int, int>>;
            btnNext.ClientEnabled = false;

            var c = new ControlFinder<ASPxRadioButtonList>();
            c.FindChildControlsRecursive(carTabPage);
            var ctrls = c.FoundControls.ToList();

            var data = new List<KeyValuePair<int, int>>();


            for (int i = 0; i < ctrls.Count(); i++)
            {
                data.Add(new KeyValuePair<int, int>(Convert.ToInt32(ctrls[i].SelectedItem.Value), Convert.ToInt32(ctrls[i + 1].SelectedItem.Value)));

                i += 1;
            }


            var guid = Guid.NewGuid().ToString();

            //1.Prepare the name for renaming
            string newName = string.Format("{0}_{1}_{2}", Session["UserName"].ToString(), txtCompany.Text, guid);
            //string newName = string.Format("{0}_{1}_{2}", Session["UserName"].ToString(), txtCompany.Text, DateTime.Now.Ticks.ToString());
            string modifiedName = string.Format("{0}_{1}_{2}_Edited", txtName.Text.Replace(" ", "_"), txtCompany.Text, DateTime.Now.ToString("yyyyMMddHHmm"));

            //2.Create the Folder if it doesn't already exist
            if (!Directory.Exists(Server.MapPath("~") + @"\Files\Docx\"))
                Directory.CreateDirectory(Server.MapPath("~") + @"\Files\Docx\");

            //3.Copy the file with the new name
            string newFileName = Server.MapPath("~") + @"\Files\Docx\" + newName + ".xlsx";
            string pdf = Server.MapPath("~") + @"\Files\Docx\" + newName + ".pdf";


            File.Copy(Server.MapPath("~") + @"\Templates\V2\Unique-Ability-Test-Form.xlsx", newFileName);

            //ProcessToReport(pdf,data);
            ProcessExcel(newFileName, data);
        

        }

        void ProcessExcel(string fileName, List<KeyValuePair<int, int>> data)
        {

            //fileName = @"C:\Users\Mushfikur Rahman\Downloads\Technical-Adaptive Assessment.xlsx";

            //Microsoft.Office.Interop.Excel.Application excelAppObj = new Microsoft.Office.Interop.Excel.Application();
            //excelAppObj.DisplayAlerts = false;

            //Open the excel work book
            //Microsoft.Office.Interop.Excel.Workbook workBook = excelAppObj.Workbooks.Open(fileName, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, false, false);

            //ExcelWorkbook workBook = ExcelWorkbook.ReadXLSX(fileName);


            //Get the first sheet of the selected work book
            //Microsoft.Office.Interop.Excel.Worksheet worksheet = (Microsoft.Office.Interop.Excel.Worksheet)workBook.Worksheets.get_Item(1);
            //var worksheet = workBook.Worksheets[0];

            //Book workbook = new BinBook();
            //workbook.load(fileName);
            Workbook workbook = new Workbook();
            workbook.LoadDocument(fileName);

            //var worksheet = workbook.getSheet(0);
            var worksheet = workbook.Worksheets[0];
            //Write 20 in Cell - C3
            worksheet.Cells[4, 3].Value = txtName.Text;
            worksheet.Cells[186, 1].Value = txtCompany.Text + ", " + txtEmail.Text;

            //worksheet.writeStr(5, 4, txtName.Text);
            //worksheet.writeStr(187, 2, txtCompany.Text + ", " + txtEmail.Text);

            var curRow = 6;
            foreach (var item in data)
            {

                worksheet.Cells[curRow + item.Key - 1, 3].Value = 1;
                worksheet.Cells[curRow + item.Value - 1, 4].Value = 1;

                //worksheet.writeNum(curRow + item.Key - 1, 4, 1);
                //worksheet.writeNum(curRow + item.Value - 1, 5, 1);

                curRow += 4;
            }

            //Save work book (.xlsx format)
            //workBook.SaveAs(fileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlOpenXMLWorkbook, null, null, false,
            //false, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlShared, false, false, null, null, null);
            //workBook.WriteXLSX(fileName);
            //workbook.save(fileName);

            //excelAppObj.Quit();
            workbook.AddService(typeof(IChartControllerFactoryService), new ChartControllerFactoryService());
            workbook.AddService(typeof(IChartImageService), new ChartImageService());


            workbook.SaveDocument(fileName);
            var pdfFileName = fileName.Replace(".xlsx", ".pdf");
            workbook.ExportToPdf(pdfFileName);
            Session["ReportFilePath"] = pdfFileName;

            var reportID = ins.SaveDownloads(int.Parse(Session["userId"].ToString()), "Natural Ability", pdfFileName);
            Session["ReportID"] = reportID;

            string errorFileName = Server.MapPath("~") + @"\Files\Docx\EmailError.txt";

            var res = 1;// Basics.email_send(fileName.Replace(".xlsx", ".pdf"), string.Format("Natural Ability Assessment  - {0}-{1}", txtName.Text, txtCompany.Text), "Your assessment report is ready to download.", txtEmail.Text, errorFileName);
            var CurrentPage = GetCurrentPageName();
            ins.DeleteHolt(int.Parse(Session["userId"].ToString()), CurrentPage);
            ins.DeleteAnsState(CurrentPage, int.Parse(Session["userId"].ToString()));
            if (res == 1)
                Response.Redirect("Home.aspx");
            else
                Response.Redirect("Error.aspx");
        }

        void ProcessToReport(string newFileName, List<KeyValuePair<int, int>> data)
        {

       
            int technical = 0;
            int adaptive = 0;
            double technicalResult = 0D;
            double adaptiveResult = 0D;
           

            rptNaturalAbility rpt = new rptNaturalAbility();
            XRLabel lblName = (XRLabel)rpt.FindControl("lblName", false);
            rpt.ExportToPdf(newFileName);
        }

        void ShowError()
        {
            //lblError.Text = "Please make sure that:\n1. You selected one item from each section.\n" +
            //    "2. Same item is not selected for both sections.\n";
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
                foreach(var item in ctrls)
                {
                    if(item.SelectedItem!=null)
                    {
                        ins.InsertQuestion(int.Parse(Session["userId"].ToString()), CurrentPage, item.ID.ToString(), int.Parse(item.SelectedIndex.ToString()));
                    }
                }
            }
            catch (System.Exception ex)
            {

            }
        }


        public string GetCurrentPageName()
        {
            string sPath = Request.Url.AbsolutePath;
            System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
            string sRet = oInfo.Name;
            return sRet;
        }

        protected void btnSaveState_Click(object sender, EventArgs e)
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

                Response.Redirect("AssessmentSelectingPage.aspx");
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

                Response.Redirect("AssessmentSelectingPage.aspx");
            }
            catch (System.Exception ex)
            {

            }
        }
    }
}