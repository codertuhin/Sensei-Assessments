using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using DevExpress.Web.Export;
using DevExpress.XtraPrinting;
using System.Text;
using coopors.Codes;
using System.Web.Script.Serialization;
//using iTextSharp.text.pdf;
//using iTextSharp.text.html.simpleparser;
//using iTextSharp.text;

namespace coopors
{
    public partial class UserReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Session["AppID"] = Convert.ToInt64(Request.QueryString["AppID"]); ;
                if (Session["SocietyName"] != null)
                {
                    var txtSocName = FindControl("txtSocietyName") as TextBox;
                    txtSocName.Text = Session["SocietyName"].ToString();

                }
                   
                

                if (Session["UserID"] != null)
                {
                    //    Session["AppID"] = Convert.ToInt64(DataAccess.ExecSqlScalar("select ApplicationID from Applications where UserId=" + Session["UserID"]));
                    int AppStep = Convert.ToInt16(Session["AppStep"]);// Convert.ToInt16(DataAccess.ExecSqlScalar("select AppStep from Applications where UserId=" + Session["UserID"]));
                    control(AppStep);
                    if (AppStep == 0)
                    {

                        gvUser.ClientSideEvents.Init =
                          "function(s,e)" +
                          "{" +
                           "  grid.AddNewRow();" +
                           "  }";
                    }
                    else
                    {
                        gvUser.FilterExpression = "";
                        gvUser.StartEdit(gvUser.VisibleStartIndex);
                    }
                    pc.ActiveTabIndex = AppStep;
                    
                    if (AppStep >= 2)
                    {
                        int? conMemID = DataAccess.RunSqlMaxNL("select MemberID from CommitteeMembers where MemberRoleID=4 and ApplicationID=" + Convert.ToInt64(Session["AppID"]));
                        int? presMemID =DataAccess.RunSqlMaxNL("select MemberID from CommitteeMembers where MemberRoleID=5 and ApplicationID=" + Convert.ToInt64(Session["AppID"]));
                        int nom = Convert.ToInt16(DataAccess.RunSqlMaxNL("select isnull(CommitteeMembers,6) from Applications where ApplicationID=" + Convert.ToInt64(Session["AppID"])));
                        RadioButton6.Checked = (6 == nom);
                        RadioButton9.Checked = (9 == nom);
                        RadioButton12.Checked = (12 == nom);
                        if (conMemID != null)
                        {
                            clsUserInfo obj = clsUserInfo.getData( Convert.ToInt16(conMemID));
                            ASPxMemoCont.Text = obj.Address; cbocontactID.Value = conMemID;
                        }
                        if (presMemID != null)
                        {
                            clsUserInfo obj2 = clsUserInfo.getData( Convert.ToInt16(presMemID));
                            ASPxMemoPres.Text = obj2.Address;
                            txtPhone.Text = obj2.PhoneNo;cbopres.Value = presMemID;
                        }
                       
                        
                    }
                }
                else
                {
                    Response.Redirect("frmLogin.aspx");
                }
            }
        }
        void control(int AppStep)
        {
            //Disable Tab pages//
            foreach (TabPage tabpage in pc.TabPages)
            {
                tabpage.Enabled = false;
            }

            pc.TabPages[0].Enabled = (AppStep == 0);
            pc.TabPages[1].Enabled = (AppStep > 0);
            pc.TabPages[2].Enabled = (AppStep > 1);
            pc.TabPages[3].Enabled = (AppStep > 2);
            if (AppStep > 2)
            {

                lbAppId.Text = Convert.ToString(DataAccess.ExecSqlScalar("select ApplicationNo from Applications where UserId=" + Session["UserID"])); ;
                lblocation.Text = DataAccess.RunSqlString("select DetailsAddress from Societies b  left join OfficeLocations a on a.OfficeLocID=b.OfficeLocID where b.ApplicationID= " + Convert.ToInt64(Session["AppID"])); 
            }
        }
        void AddError(Dictionary<GridViewColumn, string> errors, GridViewColumn column, string errorText)
        {
            if (errors.ContainsKey(column)) return;
            errors[column] = errorText;
        }
        protected void gvUser_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
        {
            ASPxGridView grid = (ASPxGridView)sender; 
            ASPxTextBox tbTotalMember = (ASPxTextBox)grid.FindEditFormTemplateControl("tbTotalMember"); 

            ASPxTextBox txtOfficeAddress = (ASPxTextBox)grid.FindEditFormTemplateControl("txtOfficeAddress"); 
            ASPxTextBox tbEMail = (ASPxTextBox)grid.FindEditFormTemplateControl("tbEMail");
            ASPxTextBox txtUserId = (ASPxTextBox)grid.FindEditFormTemplateControl("txtUserId");
            ASPxTextBox txtMobile = (ASPxTextBox)grid.FindEditFormTemplateControl("txtMobile");
            ASPxComboBox cboSocietiesLevel = (ASPxComboBox)grid.FindEditFormTemplateControl("cboSocietiesLevel");
            ASPxComboBox cboUpazilaName = (ASPxComboBox)grid.FindEditFormTemplateControl("cboUpazilaName");
            ASPxComboBox cboZilla = (ASPxComboBox)grid.FindEditFormTemplateControl("cboZilla");
            ASPxComboBox cboDivName = (ASPxComboBox)grid.FindEditFormTemplateControl("cboDivName");

            if (cboUpazilaName.Value == null)
            {
                cboUpazilaName.IsValid = false;
                //cboConfirmedBy.ValidationSettings.ErrorText = "ASPxComboBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[3], "Error Text");
            }   
            if (cboDivName.Value == null)
            {
                cboDivName.IsValid = false;
                //cboConfirmedBy.ValidationSettings.ErrorText = "ASPxComboBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[3], "Error Text");
            }  if (cboZilla.Value == null)
            {
                cboZilla.IsValid = false;
                //cboConfirmedBy.ValidationSettings.ErrorText = "ASPxComboBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[3], "Error Text");
            }
            if (tbEMail.Value == null)
            {
                tbEMail.IsValid = false;
                // txtDescription.ValidationSettings.ErrorText = "ASPxTextBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[1], "Error Text");
            } if (tbTotalMember.Value == null)
            {
                tbTotalMember.IsValid = false;
                // txtDescription.ValidationSettings.ErrorText = "ASPxTextBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[1], "Error Text");
            }
            if (txtOfficeAddress.Value == null)
            {
                txtOfficeAddress.IsValid = false;
                // txtDescription.ValidationSettings.ErrorText = "ASPxTextBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[1], "Error Text");
            }
           /* if (txtUserId.Value == null)
            {
                txtUserId.IsValid = false;
                // txtDescription.ValidationSettings.ErrorText = "ASPxTextBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[1], "Error Text");
            }*/
            if (txtMobile.Value == null)
            {
                txtMobile.IsValid = false;
                // txtDescription.ValidationSettings.ErrorText = "ASPxTextBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[1], "Error Text");
            }
            if (cboSocietiesLevel.Value == null)
            {
                cboSocietiesLevel.IsValid = false;
                //cboConfirmedBy.ValidationSettings.ErrorText = "ASPxComboBox.ValidationSettings - Error Text";
                AddError(e.Errors, grid.Columns[3], "Error Text");
            }
            if (e.Errors.Count > 0) isValid = false;
            else isValid = true;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            gvUser.UpdateEdit();
            if (isValid)
            {
                pc.ActiveTabIndex += 1;
                gvSItems.DataBind();
                gvUser.FilterExpression = "";
                gvUser.StartEdit(gvUser.VisibleStartIndex);
                control(1);
            }
            else
            {
                control(0);
            }

        }
        private bool processAddNewRow; private bool isValid;
        protected void gvUser_DataBound(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            if (!processAddNewRow)
            {
                gvUser.FilterExpression = "";
                gvUser.StartEdit(gvUser.VisibleStartIndex);

            }
            else
                processAddNewRow = false;
        }

        protected void gvSItems_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            if (Session["AppID"] != null)
            {
                //if (e.Parameters == "POST")
                //{
                //    //for (int i = 0; i < gvSItems.VisibleRowCount; i++)
                //    //{
                //    //    GridViewDataColumn column1 = gvSItems.Columns["MemNID"] as GridViewDataColumn;
                //    //    ASPxTextBox txtBox1 = (ASPxTextBox)gvSItems.FindRowCellTemplateControl(i, column1, "txtMNID");
                //    //    string a = txtBox1.Text;
                //    //}

                //    //for (int i = 0; i < gvSItems.VisibleRowCount; i++)
                //    //{

                //    //    GridViewDataColumn column1 = gvSItems.Columns["MemNID"] as GridViewDataColumn;
                //    //    ASPxTextBox txtBox1 = (ASPxTextBox)gvSItems.FindRowCellTemplateControl(i, column1, "txtMNID");
                //    //    string ID = gvSItems.GetRowValues(i, "ID").ToString();
                //    //    string NID = txtBox1.Text;
                //    //    DataAccess.ExecSqlScalar("update SocietyMembers set MemNID ='" + NID + "' where ID=" + ID);
                //    //}

                //}
                //else 
                if (e.Parameters.IndexOf("|") != -1)
                {
                    int index = Convert.ToInt32(e.Parameters.Substring(0, e.Parameters.IndexOf("|")));
                    int btndownup = Convert.ToInt32(e.Parameters.Substring(e.Parameters.IndexOf("|") + 1));
                    Int64 ID = Convert.ToInt64(gvSItems.GetRowValues(index, "ID"));
                    if (btndownup == 1)
                    {                       string NID = "";
                    GridViewDataColumn column2 = gvSItems.Columns["MemName"] as GridViewDataColumn;
                        ASPxTextBox txtName = (ASPxTextBox)gvSItems.FindRowCellTemplateControl(index, column2, "txtMemName");
                        GridViewDataColumn column1 = gvSItems.Columns["MemNID"] as GridViewDataColumn;
                        ASPxTextBox txtBox1 = (ASPxTextBox)gvSItems.FindRowCellTemplateControl(index, column1, "txtMNID");
                        NID = txtBox1.Text;
                        if (NID != "")
                        {
                            using (FileStream fs = File.Open(Server.MapPath("~/ReportPDF/json.txt"), FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
                            using (BufferedStream bs = new BufferedStream(fs))
                            using (StreamReader sr = new StreamReader(bs))
                            {
                                string line;
                                while ((line = sr.ReadLine()) != null)
                                {

                            
                            JavaScriptSerializer serializer = new JavaScriptSerializer();
                            clsNID objNID = serializer.Deserialize<clsNID>(line);
                            objNID.InsertData(ID, NID);
                                }
                            } 
                            //DataAccess.ExecSqlScalar("update SocietyMembers set MemNID ='" + NID + "',MemName='" + txtName.Text + "',isVerified =1 where ID=" + ID);
                        }


                        else
                            showErrorPopup("User Message", "আপনার সদস্যের জাতীয় পরিচয়পত্র নাম্বার দেওয়া হয়নি!");
                    }

                }
                 gvSItems.DataBind();
            }
        }





        protected void gvUser_HtmlRowCreated(object sender, ASPxGridViewTableRowEventArgs e)
        {
            if (e.RowType == GridViewRowType.EditForm)
            {
                ASPxGridView grid = (ASPxGridView)sender;

                ASPxComboBox comboBox = null;
                ASPxComboBox comboBox2 = null;
                ASPxComboBox comboBox3 = null;

                string strType = "0";
                string strDyeGroup = "0";

                comboBox = (ASPxComboBox)grid.FindEditFormTemplateControl("cboDivName");
                comboBox2 = (ASPxComboBox)grid.FindEditFormTemplateControl("cboZilla");


                if (comboBox != null)
                {
                    comboBox.Items.Clear();
                    comboBox.DataSource = SqlDivName; ;
                    comboBox.DataBindItems();
                    //if (e.KeyValue != null)
                    //{
                    string DivisionID = Convert.ToString(gvUser.GetRowValues(e.VisibleIndex, "DivisionID"));
                    strType = DivisionID;// (comboBox.SelectedItem == null ? "0" : comboBox.SelectedItem.Value.ToString());
                    // }
                    comboBox.ClientSideEvents.SelectedIndexChanged =
                       "function(s,e)" +
                       "{" +
                        "  cDyeBase1.PerformCallback(s.GetValue().toString());" +
                        "  cAux.PerformCallback('" + strType + "|'+" + "s.GetValue().toString());" +
                       "}";


                    comboBox2.ClientSideEvents.SelectedIndexChanged =
                      "function(s,e)" +
                      "{" +
                       "  cAux.PerformCallback('" + strType + "|'+" + "s.GetValue().toString());" +
                      "}";

                }

                comboBox = (ASPxComboBox)grid.FindEditFormTemplateControl("cboZilla");
                comboBox3 = (ASPxComboBox)grid.FindEditFormTemplateControl("cboUpazilaName");
                if (comboBox != null)
                {

                    comboBox.Callback += new CallbackEventHandlerBase(cboZilla_Callback);
                    SqlZilla.SelectParameters[0].DefaultValue = strType;
                    comboBox.DataSource = SqlZilla;
                    comboBox.DataBindItems();
                    if (e.KeyValue != null)
                    {
                        string ZillaID = gvUser.GetRowValues(e.VisibleIndex, "ZillaID").ToString();
                        strDyeGroup = ZillaID;// (comboBox.SelectedItem == null ? "0" : comboBox.SelectedItem.Value.ToString());
                    }
                    comboBox3.Callback += new CallbackEventHandlerBase(cboUpazilaName_Callback);


                    ASPxComboBox comboBox88 = null;
                    comboBox88 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboDivName");


                    SqlUpazilaName.SelectParameters[0].DefaultValue = strType;
                    SqlUpazilaName.SelectParameters[1].DefaultValue = strDyeGroup;
                    comboBox3.DataSource = SqlUpazilaName;
                    comboBox3.DataBindItems();

                }
            }

        }

        protected void cboZilla_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e)
        {
            ASPxComboBox comboBox = (ASPxComboBox)sender;

            comboBox.Items.Clear();

            ASPxComboBox comboBox88 = null;
            comboBox88 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboDivName");
            ASPxComboBox comboBox99 = null;
            comboBox99 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboZilla");
            if (SqlZilla != null)
            {
                SqlZilla.SelectParameters[0].DefaultValue = comboBox88.Value.ToString();
                comboBox.DataSource = SqlZilla;
                comboBox.DataBindItems();
            }

            ASPxComboBox comboBox3 = null;
            comboBox3 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboUpazilaName");
            comboBox3.Callback += new CallbackEventHandlerBase(cboUpazilaName_Callback);


        }

        protected void cboUpazilaName_Callback(object sender, CallbackEventArgsBase e)
        {
            ASPxComboBox comboBox = (ASPxComboBox)sender;
            comboBox.Items.Clear();

            ASPxComboBox comboBox88 = null;
            ASPxComboBox comboBox99 = null;
            comboBox88 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboDivName");
            comboBox99 = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboZilla");
            if (SqlUpazilaName != null)
            {
                SqlUpazilaName.SelectParameters[0].DefaultValue = comboBox88.Value.ToString();
                SqlUpazilaName.SelectParameters[1].DefaultValue = (comboBox99.Value == null ? "0" : comboBox99.Value.ToString());
                comboBox.DataSource = SqlUpazilaName;
                comboBox.DataBindItems();
            }
        }

        protected void ASPxCallbackOffice_Callback(object sender, CallbackEventArgsBase e)
        {
            ASPxCallbackPanel cbPanel = (ASPxCallbackPanel)sender;
            int upId = Convert.ToInt32(e.Parameter.ToString());
            ASPxTextBox lbOffice = (ASPxTextBox)cbPanel.FindControl("txtOffice");
            ASPxTextBox txtofficeid = (ASPxTextBox)cbPanel.FindControl("txtofficeid");
            ASPxComboBox cboZilla = (ASPxComboBox)gvUser.FindEditFormTemplateControl("cboZilla");
            //sdsUser.InsertParameters["OfficeLocID"].DefaultValue 
            txtofficeid.Text = DataAccess.RunSqlString("select OfficeLocID from OfficeLocations where ZillaID=" + cboZilla.Value + " and UpazilaID= " + upId);
            /// sdsUser.UpdateParameters["OfficeLocID"].DefultValue = DataAccess.RunSqlString("select OfficeLocID from OfficeLocations where ZillaID=" + cboZilla.Value + " and UpazilaID= " + upId);
            lbOffice.Text = DataAccess.RunSqlString("select DetailsAddress from OfficeLocations where ZillaID=" + cboZilla.Value + " and UpazilaID= " + upId);
        }



        protected void gvUser_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

            ASPxGridView gridView = sender as ASPxGridView;
            ASPxCallbackPanel cbPanel = gridView.FindEditFormTemplateControl("ASPxCallbackOffice") as ASPxCallbackPanel;
            ASPxTextBox txtofficeid = (ASPxTextBox)cbPanel.FindControl("txtofficeid");
            e.NewValues["OfficeLocID"] = txtofficeid.Value;
        }

        protected void gvUser_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;
            ASPxCallbackPanel cbPanel = gridView.FindEditFormTemplateControl("ASPxCallbackOffice") as ASPxCallbackPanel;
            ASPxTextBox txtofficeid = (ASPxTextBox)cbPanel.FindControl("txtofficeid");
            e.NewValues["OfficeLocID"] = txtofficeid.Value;
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            sdsSitems.InsertParameters[0].DefaultValue = Convert.ToString(Session["AppID"]);
            sdsSitems.InsertParameters[1].DefaultValue = Convert.ToString(gvUser.GetRowValues(0, "ID"));
            sdsSitems.Insert();
            gvSItems.DataBind();
        }


        protected void btnNext2_Click(object sender, EventArgs e)
        {
            bool isgvValid = true;
            for (int i = 0; i < gvSItems.VisibleRowCount; i++)
            {

               // GridViewDataColumn column1 = gvSItems.Columns["MemNID"] as GridViewDataColumn;
               // ASPxTextBox txtBox1 = (ASPxTextBox)gvSItems.FindRowCellTemplateControl(i, column1, "txtMNID");
               //Convert.ToBoolean( gvSItems.GetRowValues(i, "isVerified"));
                if (!Convert.ToBoolean( gvSItems.GetRowValues(i, "isVerified")))
                {
                    showErrorPopup("User Message", "আপনার সকল সদস্যদের জাতীয় পরিচয়পত্র নাম্বার যাচিত করা হয়নি!");
                    isgvValid = false;
                    break;

                }
            }
            if (isgvValid)
            {
                if (DataAccess.CreateCommiteeMember(Convert.ToInt64(Session["AppID"]), Convert.ToInt64(gvUser.GetRowValues(0, "ID"))) == true)
                {
                    int nom = Convert.ToInt16(DataAccess.RunSqlMax("select isnull(CommitteeMembers,6) from Applications where ApplicationID=" + Convert.ToInt64(Session["AppID"])));
                    RadioButton6.Checked = (6 == nom);
                    RadioButton9.Checked = (9 == nom);
                    RadioButton12.Checked = (12 == nom); 
                    pc.ActiveTabIndex += 1;
                    control(2);
                }
              
            }  
           gvCommitteeMembers.DataBind();
            gvPowerCommitee.DataBind();
        }
        void showErrorPopup(string header, string Error)
        {
            lblPopupErrorMessage.Text = Error;
            ErrorPopup.ShowCloseButton = true;
            ErrorPopup.HeaderText = header;
            ErrorPopup.ShowOnPageLoad = true;
        }

      

        protected void gvPowerCommitee_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            if (Session["AppID"] != null)
            {
                if (e.Parameters == "POST")
                {
                    for (int i = 0; i < gvPowerCommitee.VisibleRowCount; i++)
                    {
                        GridViewDataColumn column1 = gvPowerCommitee.Columns["MemberID"] as GridViewDataColumn;
                        ASPxComboBox cbMID = (ASPxComboBox)gvPowerCommitee.FindRowCellTemplateControl(i, column1, "cboMemberID");
                        if (cbMID.Value == null) continue;
                        string ID = gvPowerCommitee.GetRowValues(i, "ID").ToString();
                        DataAccess.ExecSqlScalar("update CommitteeMembers set MemberID ='" + cbMID.Value + "' where ID=" + ID);
                    }
                }

                gvPowerCommitee.DataBind();
            }

        }
        protected void btnNext3_Click(object sender, EventArgs e)
        {
            bool isgvValid = true;
           // ASPxGridView gvCommitteeMembers = (ASPxGridView)ASPxCallbackPanelradio.FindControl("gvCommitteeMembers");
            for (int i = 0; i < gvCommitteeMembers.VisibleRowCount; i++)
            {

                GridViewDataColumn column1 = gvCommitteeMembers.Columns["MemNID"] as GridViewDataColumn;
               ASPxComboBox cbMID = (ASPxComboBox)gvCommitteeMembers.FindRowCellTemplateControl(i, column1, "cboMemberID");
               ASPxDateEdit dAssignDate = (ASPxDateEdit)gvCommitteeMembers.FindRowCellTemplateControl(i, column1, "dAssignDate");
                if (cbMID.Value == null)
                {
                    showErrorPopup("User Message", "আপনার সকল সদস্যের নাম দেওয়া হয়নি!");
                    isgvValid = false;
                    break;
                }
                string ID = gvCommitteeMembers.GetRowValues(i, "ID").ToString();
                DataAccess.ExecSqlScalar("update CommitteeMembers set MemberID ='" + cbMID.Value + "',AssignDate='" + (dAssignDate.Value==null? DateTime.Now.ToString("yyyy-MM-dd"):Convert.ToDateTime(dAssignDate.Value).ToString("yyyy-MM-dd") ) + "' where ID=" + ID);

            }

            for (int i = 0; i < gvPowerCommitee.VisibleRowCount; i++)
            {

                GridViewDataColumn column1 = gvPowerCommitee.Columns["MemNID"] as GridViewDataColumn;
                ASPxComboBox cbMID = (ASPxComboBox)gvPowerCommitee.FindRowCellTemplateControl(i, column1, "cboMemberID");
                if (cbMID.Value == null)
                {
                    showErrorPopup("User Message", "আপনার সকল সদস্যের নাম দেওয়া হয়নি!");
                    isgvValid = false;
                    break;

                }
            }
            if (isgvValid)
            {
                if (cbocontactID.Value == null)
                {
                    showErrorPopup("User Message", "আপনার সকল সদস্যের নাম দেওয়া হয়নি!");
                    isgvValid = false;
                }
                else
                    DataAccess.RunSql("update CommitteeMembers set MemberID=" + cbocontactID.Value + " where ApplicationID=" + Convert.ToString(Session["AppID"]) + " and MemberRoleID=4");

                if (cbopres.Value == null)
                {
                    showErrorPopup("User Message", "আপনার সকল সদস্যের নাম দেওয়া হয়নি!");
                    isgvValid = false;
                }
                else
                    DataAccess.RunSql("update CommitteeMembers set MemberID=" + cbopres.Value + " where ApplicationID=" + Convert.ToString(Session["AppID"]) + " and MemberRoleID=5");
                if (isgvValid)
                {
                    DataAccess.UpdateAppDoc(Convert.ToInt64(Session["AppID"]) );
                    pc.ActiveTabIndex += 1;
                    gvCommitteeMembers.DataBind();
                    control(3);
                }

            } 
        }

        protected void ASPxCallbackcon_Callback(object sender, CallbackEventArgsBase e)
        {
            ASPxCallbackPanel cbPanel = (ASPxCallbackPanel)sender;
            int upId = Convert.ToInt32(e.Parameter.ToString());
            clsUserInfo obj2 = clsUserInfo.getData(upId);            
            ASPxTextBox txtPhone = (ASPxTextBox)cbPanel.FindControl("txtPhone");
            ASPxMemo ASPxMemoPres = (ASPxMemo)cbPanel.FindControl("ASPxMemoPres");
            txtPhone.Text = obj2.PhoneNo;ASPxMemoPres.Text = obj2.Address;

        }

        protected void ASPxCallbackPanelradio_Callback(object sender, CallbackEventArgsBase e)
        {int MemNo=0;
            if(Convert.ToBoolean( RadioButton6.Value)==true)MemNo=6;
            if(Convert.ToBoolean( RadioButton9.Value)==true)MemNo=9;
            if(Convert.ToBoolean( RadioButton12.Value)==true)MemNo=12;
            if(MemNo==0)return;
            if (DataAccess.UpdateCommiteeMember(Convert.ToInt64(Session["AppID"]), Convert.ToInt64(gvUser.GetRowValues(0, "ID")), MemNo) == MemNo)
            {
                showErrorPopup("User Message", "কমিটির সদস্য সংখ্যা পরিবর্তন করা যাবে না।");
                RadioButton6.Checked = (6 == MemNo);
                RadioButton9.Checked = (9 == MemNo);
                RadioButton12.Checked = (12 == MemNo);
            }
            gvCommitteeMembers.DataBind();
        }

        protected void ASPxCallbackPanelcont_Callback(object sender, CallbackEventArgsBase e)
        {
            ASPxCallbackPanel cbPanel = (ASPxCallbackPanel)sender;
            int upId = Convert.ToInt32(e.Parameter.ToString());
            clsUserInfo obj = clsUserInfo.getData(upId);
           ASPxMemo ASPxMemoCont = (ASPxMemo)cbPanel.FindControl("ASPxMemoCont");ASPxMemoCont.Text = obj.Address;
        }
        class ImageTemplate : ITemplate
        {
            public void InstantiateIn(Control container)
            {

                GridViewDataItemTemplateContainer gridContainer = (GridViewDataItemTemplateContainer)container;
                string textField = DataBinder.Eval(gridContainer.DataItem, "IsUpdated").ToString();

                ASPxImage image = (ASPxImage)container.FindControl("imgStatus");
                if (textField == "True")
                    image.ImageUrl = "~/Images/synced.png";
                else
                    image.ImageUrl = "~/Images/delete.png";
                container.Controls.Add(image);
            }
        }


        protected void gvSItems_HtmlRowPrepared(object sender, ASPxGridViewTableRowEventArgs e)
        {
            if (e.RowType == GridViewRowType.Data)
            {
                ASPxGridView grid = (ASPxGridView)sender;
                GridViewDataColumn column1 = gvSItems.Columns["isVerified"] as GridViewDataColumn;
                ASPxImage imgStatus = (ASPxImage)gvSItems.FindRowCellTemplateControl(e.VisibleIndex, column1, "imgStatus");
                if (e.GetValue("isVerified").ToString() == "")
                {
                    imgStatus.ImageUrl = "";

                }
                else
                {
                    bool value = (bool)e.GetValue("isVerified");
                    if (value == true)
                        imgStatus.ImageUrl = "~/Images/synced.png";
                    else
                        imgStatus.ImageUrl = "~/Images/Delete.png";
                }
            }
        }

        protected void gvUser_InitNewRow(object sender, DevExpress.Web.Data.ASPxDataInitNewRowEventArgs e)
        {
            ASPxGridView gridView = sender as ASPxGridView;
            ASPxRadioButtonList ASPxRadioButtonList2 = gridView.FindEditFormTemplateControl("ASPxRadioButtonList2") as ASPxRadioButtonList;
            ASPxRadioButtonList ASPxRadioButtonList1 = gridView.FindEditFormTemplateControl("ASPxRadioButtonList1") as ASPxRadioButtonList;
            ASPxRadioButtonList1.Value = 1;
            ASPxRadioButtonList1.SelectedIndex = 0;
            ASPxRadioButtonList2.Value = 2;
            ASPxRadioButtonList2.SelectedIndex = 0;
        }

        protected void gvDoc_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            if (Session["AppID"] != null)
            {
                if (e.Parameters == "POST")
                {


                    for (int i = 0; i < gvDoc.VisibleRowCount; i++)
                    {

                        GridViewDataColumn column1 = gvDoc.Columns["Status"] as GridViewDataColumn;
                        ASPxCheckBox Status = (ASPxCheckBox)gvDoc.FindRowCellTemplateControl(i, column1, "chkDocID");
                        string ID = gvDoc.GetRowValues(i, "ID").ToString();
                        DataAccess.ExecSqlScalar("update ApplicationDocuments set Status =" +Convert.ToByte( Status.Value) + " where ID=" + ID);
                    }

                }
                else  if (e.Parameters.IndexOf("|") != -1)
                {
                    int index = Convert.ToInt32(e.Parameters.Substring(0, e.Parameters.IndexOf("|")));
                    int btndownup = Convert.ToInt32(e.Parameters.Substring(e.Parameters.IndexOf("|") + 1));
                    string ID = gvSItems.GetRowValues(index, "ID").ToString();
                    if (btndownup == 1)
                    {
                      
                       // if (NID != "")
                          //  DataAccess.ExecSqlScalar("update ApplicationDocuments set isUploaded =1,FileLocation='" + txtName.Text + "' where ID=" + ID);
                        
                    }

                }
                gvSItems.DataBind();
            }
        }

        protected void gvDoc_HtmlRowPrepared(object sender, ASPxGridViewTableRowEventArgs e)
        {
            //if (e.RowType == GridViewRowType.Data)
            //{
            //    ASPxGridView grid = (ASPxGridView)sender;
            //    GridViewDataColumn column1 = gvDoc.Columns["isUploaded"] as GridViewDataColumn;
            //    ASPxImage imgStatus = (ASPxImage)gvDoc.FindRowCellTemplateControl(e.VisibleIndex, column1, "imgStatus");
            //    if (e.GetValue("isUploaded").ToString() == "")
            //    {
            //        imgStatus.ImageUrl = "";

            //    }
            //    else
            //    {
            //        bool value = (bool)e.GetValue("isUploaded");
            //        if (value == true)
            //            imgStatus.ImageUrl = "~/Images/synced.png";
            //        else
            //            imgStatus.ImageUrl = "~/Images/Delete.png";
            //    }
            //}
        }

        protected void gvCommitteeMembers_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            int MemNo = 0;
            if (Convert.ToBoolean(RadioButton6.Value) == true) MemNo = 6;
            if (Convert.ToBoolean(RadioButton9.Value) == true) MemNo = 9;
            if (Convert.ToBoolean(RadioButton12.Value) == true) MemNo = 12;
            if (MemNo == 0) return;
            if (DataAccess.UpdateCommiteeMember(Convert.ToInt64(Session["AppID"]), Convert.ToInt64(gvUser.GetRowValues(0, "ID")), MemNo) == MemNo)
            {
                showErrorPopup("User Message", "কমিটির সদস্য সংখ্যা পরিবর্তন করা যাবে না।");
                RadioButton6.Checked = (6 == MemNo);
                RadioButton9.Checked = (9 == MemNo);
                RadioButton12.Checked = (12 == MemNo);
            }
            gvCommitteeMembers.DataBind();
        }
        protected void ASPxButton3_Click(object sender, EventArgs e)
        {
            MemoryStream stream = new MemoryStream();
            Response.Clear();
            XtraRptUserReg report = new XtraRptUserReg(Convert.ToInt64(Session["AppID"]));
            report.ExportToRtf(stream);
            Response.ContentType = "application/rtf";
            Response.AddHeader("Accept-Header", stream.Length.ToString());
            Response.AddHeader("Content-Disposition", (true ? "Inline" : "Attachment") + "; filename=" + Convert.ToString(DataAccess.ExecSqlScalar("select ApplicationNo from Applications where UserId=" + Session["UserID"])) + ".rtf");
            Response.AddHeader("Content-Length", stream.Length.ToString());
            //Response.ContentEncoding = System.Text.Encoding.Default;
            Response.BinaryWrite(stream.ToArray());
            Response.End();
        }
    }
}