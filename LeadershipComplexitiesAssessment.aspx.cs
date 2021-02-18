using coopors.Class;
using coopors.ORM;
using DevExpress.Spreadsheet;
using DevExpress.Web;
using DevExpress.XtraSpreadsheet.Export;
using DevExpress.XtraSpreadsheet.Services;
using DevExpress.XtraSpreadsheet.Services.Implementation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class LeadershipComplexitiesAssessment : System.Web.UI.Page
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
        public string GetCurrentPageName()
        {
            string sPath = Request.Url.AbsolutePath;
            System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
            string sRet = oInfo.Name;

            return sRet;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //var dic = Session["Data"] as Dictionary<int, int>;
            //lblError.Text = "";
            btnNext.ClientEnabled = false;

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
            string modifiedName = string.Format("{0}_{1}_{2}_Edited", txtName.Text.Replace(" ", "_"), txtCompany.Text, DateTime.Now.ToString("yyyyMMddHHmm"));

            //2.Create the Folder if it doesn't already exist
            if (!Directory.Exists(Server.MapPath("~") + @"\Files\Docx\"))
                Directory.CreateDirectory(Server.MapPath("~") + @"\Files\Docx\");

            //3.Copy the file with the new name
            string newFileName = Server.MapPath("~") + @"\Files\Docx\" + newName + ".xlsx";

            File.Copy(Server.MapPath("~") + @"\Templates\V2\LeadershipAssessment.xlsx", newFileName);



            ProcessExcel(newFileName, data);


        }
        void ProcessExcel(string fileName, Dictionary<int, int> data)
        {

            //fileName = @"C:\Users\Mushfikur Rahman\Downloads\Technical-Adaptive Assessment.xlsx";

            //Microsoft.Office.Interop.Excel.Application excelAppObj = new Microsoft.Office.Interop.Excel.Application();
            //excelAppObj.DisplayAlerts = false;

            //Open the excel work book
            //Microsoft.Office.Interop.Excel.Workbook workBook = excelAppObj.Workbooks.Open(fileName, 0, false, 5, "", "", false, Microsoft.Office.Interop.Excel.XlPlatform.xlWindows, "", true, false, 0, false, false);

            //Get the first sheet of the selected work book
            //Microsoft.Office.Interop.Excel.Worksheet worksheet = (Microsoft.Office.Interop.Excel.Worksheet)workBook.Worksheets.get_Item(1);
            //ExcelWorkbook workBook = ExcelWorkbook.ReadXLSX(fileName);
            //var worksheet = workBook.Worksheets[0];

            //Book workbook = new BinBook();
            //workbook.load(fileName);


            //var worksheet = workbook.getSheet(0);
            Workbook workbook = new DevExpress.Spreadsheet.Workbook();
            workbook.LoadDocument(fileName);
            Worksheet worksheet = workbook.Worksheets[0];



            //Write 20 in Cell - C3
            //worksheet.Cells[4, 4].Value = txtName.Text;

            //worksheet.Cells[30, 3].Value = txtCompany.Text + ", " + txtEmail.Text;

            //worksheet.writeStr(4, 4, txtName.Text);


            //worksheet.writeStr(30, 3, txtCompany.Text + ", " + txtEmail.Text);


            worksheet.Cells[4, 2].Value = txtName.Text;
            //worksheet.Cells[29, 2].Value = txtCompany.Text + ", " + txtEmail.Text;

            int technical = 0;
            int adaptive = 0;

            var technicalResult = 0D;
            var adaptiveResult = 0D;


            var curRow = 6;
            foreach (var item in data)
            {

                if (item.Value == 0)
                {
                    worksheet.Cells[curRow, 3].Value = 1;
                    //technical++;
                }
                //worksheet.writeNum(curRow, 5, 1);
                else if (item.Value == 1)
                {
                    worksheet.Cells[curRow + 1, 3].Value = 1;
                    //adaptive++;
                }
                else if (item.Value == 2)
                {
                    worksheet.Cells[curRow + 2, 3].Value = 1;
                }
                else
                {
                    worksheet.Cells[curRow + 3, 3].Value = 1;

                }
                //worksheet.writeNum(curRow + 1, 5, 1);

                curRow += 4;
            }

            //technicalResult = (technical / 12) * 100;
            //adaptiveResult = (adaptive / 12) * 100;

            //Save work book (.xlsx format)
            //workBook.SaveAs(fileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlOpenXMLWorkbook, null, null, false,
            //false, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlShared, false, false, null, null, null);

            //excelAppObj.Quit();
            //workBook.WriteXLSX(fileName);
            //workbook.save(fileName);

            workbook.AddService(typeof(IChartControllerFactoryService), new ChartControllerFactoryService());
            workbook.AddService(typeof(IChartImageService), new ChartImageService());

            workbook.SaveDocument(fileName);

            var pdfFileName = fileName.Replace(".xlsx", ".pdf");
            workbook.ExportToPdf(pdfFileName);
            Session["ReportFilePath"] = pdfFileName;
            //workbook.ExportToHtml(fileName + ".pdf", 1);

            //Save to downloads//
            var reportID = ins.SaveDownloads(int.Parse(Session["userId"].ToString()), "Leadership Complexities", pdfFileName);
            Session["ReportID"] = reportID;


            string errorFileName = Server.MapPath("~") + @"\Files\Docx\EmailError.txt";

            var res = 1; Basics.email_send(fileName.Replace(".xlsx", ".pdf"), string.Format("Leadership Complexities Assessment - {0}-{1}", txtName.Text, txtCompany.Text), "Your assessment report is ready to download.", txtEmail.Text, errorFileName);
            var CurrentPage = GetCurrentPageName();
            ins.DeleteHolt(int.Parse(Session["userId"].ToString()), CurrentPage);
            ins.DeleteAnsState(CurrentPage, int.Parse(Session["userId"].ToString()));
            if (res == 1)
                Response.Redirect("Home.aspx");
            else
                Response.Redirect("Error.aspx");
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