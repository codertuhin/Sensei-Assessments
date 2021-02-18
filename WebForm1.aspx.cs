using DevExpress.Spreadsheet;
using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coopors
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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


            //1.Prepare the name for renaming
            string newName = string.Format("{0}_{1}_{2}", txtName.Text.Replace(" ", "_"), txtCompany.Text, DateTime.Now.Ticks.ToString());
            string modifiedName = string.Format("{0}_{1}_{2}_Edited", txtName.Text.Replace(" ", "_"), txtCompany.Text, DateTime.Now.ToString("yyyyMMddHHmm"));

            //2.Create the Folder if it doesn't already exist
            if (!Directory.Exists(Server.MapPath("~") + @"\Files\Docx\"))
                Directory.CreateDirectory(Server.MapPath("~") + @"\Files\Docx\");

            //3.Copy the file with the new name
            string newFileName = Server.MapPath("~") + @"\Files\Docx\" + newName + ".xlsx";

            File.Copy(Server.MapPath("~") + @"\Templates\Technical-Adaptive-Assessment.xlsx", newFileName);



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


            worksheet.Cells[3, 3].Value = txtName.Text;
            worksheet.Cells[29, 2].Value = txtCompany.Text + ", " + txtEmail.Text;

            int technical = 0;
            int adaptive = 0;

            var technicalResult = 0D;
            var adaptiveResult = 0D;


            var curRow = 5;
            foreach (var item in data)
            {

                if (item.Value == 0)
                {
                    worksheet.Cells[curRow, 4].Value = 1;
                    technical++;
                }
                //worksheet.writeNum(curRow, 5, 1);
                else
                {
                    worksheet.Cells[curRow + 1, 4].Value = 1;
                    adaptive++;
                }
                //worksheet.writeNum(curRow + 1, 5, 1);

                curRow += 2;
            }

            technicalResult = (technical / 12) * 100;
            adaptiveResult = (adaptive / 12) * 100;

            //Save work book (.xlsx format)
            //workBook.SaveAs(fileName, Microsoft.Office.Interop.Excel.XlFileFormat.xlOpenXMLWorkbook, null, null, false,
            //false, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlShared, false, false, null, null, null);

            //excelAppObj.Quit();
            //workBook.WriteXLSX(fileName);
            //workbook.save(fileName);
            workbook.SaveDocument(fileName);

            workbook.ExportToPdf(fileName + ".pdf");

            var res = Basics.email_send(fileName, string.Format("Technical Adaptive Assessment Submission - {0}-{1}", txtName.Text, txtCompany.Text), "A new assessment has been submitted.");

            if (res == 1)
                Response.Redirect("Home.aspx");
            else
                Response.Redirect("Error.aspx");
        }


        //void ShowError()
        //{
        //    lblError.Text = "Please make sure that you selected one item from the list.\n";
        //}


    }
}