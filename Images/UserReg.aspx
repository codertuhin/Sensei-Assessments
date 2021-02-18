<%@ Page Title="নিবন্ধন ফরম" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="coopors.UserReg" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


















<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">

        function pageLoad() {
        }

        function OnNewClick(s, e) {
            grid.AddNewRow();
        }
    </script>



    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="নিবন্ধন ফরম"
        Width="100%" Height="100%" HorizontalAlign="Left">
        <ContentPaddings PaddingBottom="5px" PaddingLeft="5px" PaddingRight="5px" PaddingTop="5px" />
        <Content BackColor="White">
        </Content>
        <HeaderStyle Font-Bold="False" Font-Names="Tahoma" Font-Size="22px" ForeColor="#405497"
            Height="25px">
            <Paddings PaddingTop="5px" />
        </HeaderStyle>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent1" runat="server">


                <dx:ASPxPageControl ID="pc" ClientInstanceName="pc" runat="server" ActiveTabIndex="1" Width="100%" Height="400px">
                    <TabPages>
                        <dx:TabPage Text="নিবন্ধন ফরম">
                            <ContentCollection>
                                <dx:ContentControl ID="ContentControl2" runat="server">
                                    <dx:ASPxGridView ID="gvUser" runat="server"
                                        AutoGenerateColumns="False" DataSourceID="sdsUser" OnRowValidating="gvUser_RowValidating" OnHtmlRowCreated="gvUser_HtmlRowCreated" OnRowUpdating="gvUser_RowUpdating"
                                        OnRowInserting="gvUser_RowInserting" KeyFieldName="ID" Width="100%" EnableRowsCache="False" OnDataBound="gvUser_DataBound" OnInitNewRow="gvUser_InitNewRow"
                                        EnableViewState="False"
                                        ClientInstanceName="grid">
                                        <SettingsBehavior AllowFocusedRow="True" />
                                        <SettingsPager PageSize="1" CurrentPageNumberFormat=" [{0}]" Summary-Text="" Visible="False">
                                            <Summary Text=""></Summary>
                                        </SettingsPager>
                                        <SettingsEditing EditFormColumnCount="3" Mode="EditForm" NewItemRowPosition="Bottom" />
                                        <Settings ShowTitlePanel="false" ShowColumnHeaders="False" />
                                        <Styles>
                                            <CommandColumnItem Cursor="pointer" />
                                        </Styles>
                                        <Columns>
                                            <dx:GridViewCommandColumn ButtonType="Image" VisibleIndex="0" Width="60px" Caption="#" ShowEditButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                            <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="0" Visible="true" Width="120px">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="SocietyName" VisibleIndex="1" Width="140px">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="Fax" VisibleIndex="5" Width="160px" ReadOnly="true" CellStyle-Wrap="False" Visible="false">
                                                <CellStyle Wrap="False"></CellStyle>
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="6" Width="200px" ReadOnly="true" CellStyle-Wrap="False">
                                                <CellStyle Wrap="False"></CellStyle>
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Mobile" VisibleIndex="6" Width="200px" ReadOnly="true" CellStyle-Wrap="False">
                                                <CellStyle Wrap="False"></CellStyle>
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                        </Columns>

                                        <Templates>
                                            <EditForm>
                                                <table border="0" class="table custom-table1">
                                                  <tr>
                                                        <td>
                                                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="প্রস্তাবিত সমিতির নামঃ" Font-Bold="True">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td colspan="2">
                                                            <dx:ASPxTextBox ID="txtSocietyName" Width="100%" MaxLength="200" runat="server" Text='<%# Bind("SocietyName") %>'
                                                                Value='<%# Bind("SocietyName") %>' >
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="প্রস্তাবিত সমিতির নাম লিখুন">
                                                                    <RequiredField ErrorText="প্রস্তাবিত সমিতির নাম লিখুন" IsRequired="True" />
                                                                    <ErrorFrameStyle ForeColor="Red">
                                                                    </ErrorFrameStyle>
                                                                </ValidationSettings>
                                                            </dx:ASPxTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="white-space: nowrap">
                                                            <b>প্রস্তাবিত সমিতির ঠিকানাঃ</b></td>
                                                        <td style="white-space: nowrap">
                                                            <b>বিভাগ</b>
                                                            <dx:ASPxComboBox ID="cboDivName" runat="server" TextField="DivName" ValueField="DivisionID" Width="70%"
                                                                Value='<%# Bind("DivisionID") %>' ValueType="System.Int16" EnableIncrementalFiltering="True"
                                                                EnableViewState="False" EncodeHtml="False" ClientVisible="true">
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="বিভাগ নির্বচন করুন">
                                                                    <RequiredField ErrorText="বিভাগ নির্বচন করুন" IsRequired="True" />
                                                                </ValidationSettings>

                                                            </dx:ASPxComboBox>
                                                        </td>


                                                        <td style="white-space: nowrap">
                                                            <b>জেলা</b>

                                                            <dx:ASPxComboBox ID="cboZilla" runat="server" TextField="ZillaName" ValueField="ZillaID" Width="100%"
                                                                Value='<%# Bind("ZillaID") %>' ValueType="System.Int16" EnableIncrementalFiltering="True"
                                                                EnableViewState="False" EncodeHtml="False"
                                                                ClientInstanceName="cDyeBase1" OnCallback="cboZilla_Callback">
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="জেলা নির্বচন করুন">
                                                                    <RequiredField ErrorText="জেলা নির্বচন করুন" IsRequired="True" />
                                                                </ValidationSettings>
                                                                <ClientSideEvents EndCallback="function(s, e) {	
        s.SetSelectedIndex(-1);  
        }" />


                                                            </dx:ASPxComboBox>

                                                        </td>

                                                        <td style="white-space: nowrap">
                                                            <b>উপজেলা/থানা</b>
                                                            <dx:ASPxComboBox ID="cboUpazilaName" runat="server" TextField="UpazilaName" ValueField="UpazilaID"
                                                                Value='<%# Bind("UpazilaID") %>' Width="100%"
                                                                ValueType="System.Int32" EnableIncrementalFiltering="True"
                                                                EnableViewState="False" ClientInstanceName="cAux" EncodeHtml="False">

                                                                <ClientSideEvents EndCallback="function(s, e) {	  s.SetSelectedIndex(-1);  
}"
                                                                    SelectedIndexChanged="function(s, e) {
	 cbPanelOffice.PerformCallback(s.GetValue().toString());
}" />

                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="উপজেলা নির্বচন করুন">
                                                                    <RequiredField ErrorText="উপজেলা নির্বচন করুন" IsRequired="True" />
                                                                </ValidationSettings>

                                                            </dx:ASPxComboBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>গ্রাম/ ইউনিয়ন</b></td>
                                                        <td colspan="3">
                                                            <dx:ASPxTextBox ID="txtOfficeAddress" Width="96%" MaxLength="100" runat="server" Value='<%# Bind("OfficeAddress") %>'>
                                                               <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="গ্রাম/ ইউনিয়নের নাম লিখুন">
                                                                    <RequiredField ErrorText="গ্রাম/ ইউনিয়নের নাম লিখুন" IsRequired="True" />
                                                                    <ErrorFrameStyle ForeColor="Red">
                                                                    </ErrorFrameStyle>
                                                                </ValidationSettings> </dx:ASPxTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="white-space: nowrap; vertical-align: top;" colspan="2">
                                                            <b>সংশ্লিষ্ট সমবায় অধিদপ্তরের কার্যালয়ঃ</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="2">

                                                            <dx:ASPxCallbackPanel ID="ASPxCallbackOffice" runat="server" ClientInstanceName="cbPanelOffice"
                                                                OnCallback="ASPxCallbackOffice_Callback" Width="100%">
                                                                <PanelCollection>
                                                                    <dx:PanelContent>
                                                                        <dx:ASPxTextBox ID="txtofficeid" ClientVisible="false" Width="100%" runat="server" EnableViewState="False" Value='<%# Bind("OfficeLocID") %>'>
                                                                        </dx:ASPxTextBox>
                                                                        <dx:ASPxTextBox ID="txtOffice" Width="100%" Font-Bold="true" Font-Size="Medium" ReadOnly="true" Border-BorderColor="#F0F0F0" BackColor="#F0F0F0" ForeColor="Green" Enabled="false" runat="server" Value='<%# Bind("DetailsAddress") %>'>
                                                                        </dx:ASPxTextBox>

                                                                    </dx:PanelContent>
                                                                </PanelCollection>
                                                            </dx:ASPxCallbackPanel>

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tdValign">
                                                            <dx:ASPxLabel ID="ASPxLabellay" runat="server" Text="সমিতির স্তরঃ" Font-Bold="true">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList2" runat="server" CssClass="rdListCustom"
                                                                Value='<%# Bind("LayerID") %>' RepeatColumns="4" RepeatLayout="Table">
                                                                <Items>
                                                                    <dx:ListEditItem Text="প্রাথমিক" Value="1" />
                                                                    <dx:ListEditItem Text="কেন্দ্রীয়" Value="2" />
                                                                    <dx:ListEditItem Text="জাতীয়" Value="3" />
                                                                </Items>
                                                            </dx:ASPxRadioButtonList>
                                                        </td>
                                                        <%-- </tr>
                                        <tr>--%>
                                                        <td class="col-right tdValign">
                                                            <dx:ASPxLabel ID="ASPxLabel14" runat="server" Text="সমিতির শ্রেণীঃ" Font-Bold="true">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td class="tdValign">
                                                            <dx:ASPxComboBox ID="cboSocietiesLevel" runat="server" DataSourceID="sdsSocietiesLevel" TextField="SocietiesLevel"
                                                                Value='<%# Bind("LevelID") %>' ValueField="LevelID" ValueType="System.Int32" Width="100%"
                                                                EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="সমিতির শ্রেণী নির্বচন করুন">
                                                                    <RequiredField ErrorText="সমিতির শ্রেণী নির্বচন করুন" IsRequired="True" />
                                                                    <ErrorFrameStyle ForeColor="Red">
                                                                    </ErrorFrameStyle>
                                                                </ValidationSettings>

                                                            </dx:ASPxComboBox>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="শেয়ারের ধরনঃ" Font-Bold="True" Fax="True">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td colspan="3">
                                                            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" CssClass="rdListCustom"
                                                                Value='<%# Bind("ShareType") %>' RepeatColumns="4" RepeatLayout="Table">
                                                                <Items>
                                                                    <dx:ListEditItem Text="শেয়ারের ভিত্তিতে" Value="1" />
                                                                    <dx:ListEditItem Text="শেয়ার বহির্ভূতভাবে" Value="2" />
                                                                </Items>
                                                            </dx:ASPxRadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="white-space: nowrap; vertical-align: top;" colspan="4">সর্বোচ্চ ২০০ শব্দের মধ্যে প্রস্তাবিত সমিতি গঠনের উদ্দেশ্য সংক্ষেপে উল্লেখ করুনঃ
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td colspan="4">
                                                            <dx:ASPxMemo ID="ASPxMemo2" runat="server" Height="40px"
                                                                Value='<%# Bind("Intension") %>' Width="100%">
                                                            </dx:ASPxMemo>
                                                        </td>
                                                    </tr>


                                                       <tr>
                                                        <td>
                                                            <dx:ASPxLabel ID="lbMobile" runat="server" Text="মোবাইল নংঃ" Font-Bold="True" Fax="True">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="txtMobile" Width="100%" MaxLength="20" NullText="মোবাইল নং ..." runat="server" Text='<%# Bind("Mobile") %>'
                                                                Value='<%# Bind("Mobile") %>'>
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="মোবাইল নম্বর লিখুন">
                                                                    <RequiredField ErrorText="মোবাইল নম্বর লিখুন" IsRequired="True" />
                                                                    <ErrorFrameStyle ForeColor="Red">
                                                                    </ErrorFrameStyle>
                                                                </ValidationSettings>
                                                            </dx:ASPxTextBox>
                                                        </td>
                                                        <td class="col-right">
                                                            <dx:ASPxLabel ID="lbPhone" runat="server" Text="ফোন নংঃ">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="txtPhone" Width="100%" MaxLength="20" NullText="ফোন নং ..." runat="server" Text='<%# Bind("Phone") %>'
                                                                Value='<%# Bind("Phone") %>'>
                                                            </dx:ASPxTextBox>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="ফ্যাক্সঃ" Fax="True">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="txtFax" Width="90%" MaxLength="50" NullText="ফ্যাক্স ..." runat="server" Fax="True" Text='<%# Bind("Fax") %>'
                                                                Value='<%# Bind("Fax") %>'>
                                                            </dx:ASPxTextBox>
                                                        </td>


                                                        <td class="col-right">
                                                            <dx:ASPxLabel ID="lbWebsite" runat="server" Text="ওয়েবসাইটঃ">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="tbWebsite" runat="server" Width="100%" MaxLength="100" NullText="ওয়েবসাইট ..." Font-Size="Small" Text='<%# Bind("Website") %>'
                                                                Value='<%# Bind("Website") %>'>
                                                            </dx:ASPxTextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxLabel ID="lbTotalMember" runat="server" Text="আবেদনকারীর সংখ্যাঃ" Font-Bold="true">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="tbTotalMember" runat="server" Width="100%" NullText="আবেদনকারীর সংখ্যা ..." HorizontalAlign="Right" Font-Size="Small" Text='<%# Bind("TotalMember") %>'
                                                                Value='<%# Bind("TotalMember") %>'>
                                                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorText="আবেদনকারীর সংখ্যা লিখুন">
                                                                    <RequiredField ErrorText="আবেদনকারীর সংখ্যা লিখুন" IsRequired="True" />
                                                                    <ErrorFrameStyle ForeColor="Red">
                                                                    </ErrorFrameStyle>
                                                                </ValidationSettings>
                                                            </dx:ASPxTextBox>
                                                        </td>

                                                        <td class="col-right">
                                                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="ইমেইলঃ" Font-Bold="true">
                                                            </dx:ASPxLabel>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxTextBox ID="tbEMail" runat="server" Width="100%" MaxLength="50" NullText="ইমেইল ..." Font-Size="Small" Text='<%# Bind("Email") %>'
                                                                Value='<%# Bind("Email") %>'>
                                                                <ValidationSettings EnableCustomValidation="True" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" SetFocusOnError="true">
                                                                    <ErrorFrameStyle Font-Size="Smaller" ForeColor="Red"/>
                                                                    <RegularExpression ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                                                                        ErrorText="ভুল ইমেইল" />
                                                                    <RequiredField IsRequired="True" ErrorText="ইমেইল লিখুন" />
                                                                </ValidationSettings>

                                                            </dx:ASPxTextBox>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"></td>
                                                        <td>

                                                            <dx:ASPxButton ID="btnNext" ClientInstanceName="btnNext" runat="server" Text="পরবর্তী অংশ"
                                                                AutoPostBack="false" CausesValidation="false" UseSubmitBehavior="true" OnClick="btnNext_Click">
                                                            </dx:ASPxButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </EditForm>
                                        </Templates>
                                        <SettingsCommandButton>
                                            <EditButton>
                                                <Image Height="20px" Url="~/Images/edit.png" Width="20px"/>
                                            </EditButton>
                                            <DeleteButton>
                                                <Image Height="20px" Url="~/Images/delete.png" Width="20px"/>
                                            </DeleteButton>
                                            <SelectButton>
                                                <Image Height="20px" Url="~/Images/select.png" Width="20px"/>
                                            </SelectButton>
                                            <CancelButton>
                                                <Image Height="20px" Url="~/Images/cancel.png" Width="20px"/>
                                            </CancelButton>
                                            <UpdateButton>
                                                <Image Height="20px" Url="~/Images/save.png" Width="20px"/>
                                            </UpdateButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>

                                            <ClearFilterButton>
                                                <Image Height="20px" Url="~/Images/clear.png" Width="20px"/>
                                            </ClearFilterButton>
                                        </SettingsCommandButton>

                                    </dx:ASPxGridView>

                                    <asp:SqlDataSource ID="SqlDivName" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
                                        SelectCommand="SELECT DivisionID, DivName FROM Division"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlZilla" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
                                        SelectCommand="SELECT ZillaID, ZillaName FROM Zilla where DivisionID=@DivisionID">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="-1" Name="DivisionID" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <asp:SqlDataSource ID="SqlUpazilaName" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
                                        SelectCommand="SELECT UpazilaID, UpazilaName FROM Upazila where ZillaID=@ZillaID and DivisionID=@DivisionID">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="-1" Name="DivisionID" />
                                            <asp:Parameter DefaultValue="-1" Name="ZillaID" />

                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="sdsShareType" runat="server"
                                        SelectCommand="select 'শেয়ারের ভিত্তিতে'  as ShareType
union select 'শেয়ার বহির্ভূতভাবে' as ShareType"
                                        ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"></asp:SqlDataSource>

                                    <asp:SqlDataSource ID="sdsSocietiesLevel" runat="server"
                                        SelectCommand="select LevelID, SocietiesLevel from SocietiesLevel"
                                        ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="sdsUser" runat="server" ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
                                        OldValuesParameterFormatString="original_{0}"
                                        InsertCommand="INSERT INTO Societies(SocietyName,Mobile,Fax,Email,LayerID,ApplicationID,RegistrationNo,ApplicationDate,RegistrationDate,ShareType,Intension,LevelID
,Website,TotalMember,Phone,OfficeLocID,OfficeAddress) VALUES (@SocietyName,@Mobile,@Fax,@Email,@LayerID,@AppID,@RegistrationNo,getdate(),getdate(),@ShareType,@Intension,@LevelID,@Website,@TotalMember,@Phone,@OfficeLocID,@OfficeAddress);SET @ID = Scope_Identity(); update Applications set AppStep=1 where ApplicationID=@AppID and AppStep=0;"
                                        SelectCommand="select a.*,b.DetailsAddress,b.ZillaID,b.DivisionID,b.UpazilaID,c.DivName,d.ZillaName,e.UpazilaName from Societies a
left join OfficeLocations b on a.OfficeLocID=b.OfficeLocID
left join Division c on b.DivisionID=c.DivisionID
left join Zilla d on b.ZillaID=d.ZillaID
left join Upazila e on b.UpazilaID=e.UpazilaID
 where ApplicationID=@AppID"
                                        UpdateCommand="update Societies set OfficeAddress=@OfficeAddress, OfficeLocID=@OfficeLocID,SocietyName=@SocietyName,LayerID=@LayerID,Fax=@Fax,Email=@Email,Mobile=@Mobile,RegistrationNo=@RegistrationNo,ApplicationDate=getdate(),RegistrationDate=getdate(),ShareType=@ShareType
                            ,Intension=@Intension,LevelID=@LevelID,Website=@Website,TotalMember=@TotalMember,Phone=@Phone where ID=@ID">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="AppID" SessionField="AppID" Type="Int64" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="LevelID" />
                                            <asp:Parameter Name="OfficeLocID" />
                                            <asp:Parameter Name="TotalMember" />
                                            <asp:Parameter Name="Website" />
                                            <asp:Parameter Name="RegistrationNo" />
                                            <asp:Parameter Name="Intension" />
                                            <asp:Parameter Name="ShareType" />
                                            <asp:Parameter Name="OfficeAddress" />
                                            <asp:Parameter Name="SocietyName" />
                                            <asp:Parameter Name="LayerID" />
                                            <asp:Parameter Name="Fax" />
                                            <asp:Parameter Name="Email" />
                                            <asp:Parameter Name="Mobile" />
                                            <asp:Parameter Name="Phone" />
                                            <asp:Parameter Name="ID" />
                                        </UpdateParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_ID" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="LevelID" />
                                            <asp:Parameter Name="OfficeAddress" />
                                            <asp:Parameter Name="OfficeLocID" />
                                            <asp:Parameter Name="TotalMember" />
                                            <asp:Parameter Name="Website" />
                                            <asp:Parameter Name="RegistrationNo" />
                                            <asp:Parameter Name="Intension" />
                                            <asp:Parameter Name="ShareType" />
                                            <asp:Parameter Name="SocietyName" />
                                            <asp:Parameter Name="LayerID" />
                                            <asp:Parameter Name="Fax" />
                                            <asp:Parameter Name="Email" />
                                            <asp:Parameter Name="Phone" />
                                            <asp:Parameter Name="Mobile" />
                                            <asp:SessionParameter Name="AppID" SessionField="AppID" Type="Int64" />
                                            <asp:Parameter Name="ID" />
                                        </InsertParameters>

                                    </asp:SqlDataSource>
                                </dx:ContentControl>


                            </ContentCollection>
                        </dx:TabPage>

                        <dx:TabPage Text="সদস্যদের তথ্য" >
                            <ContentCollection>
                                <dx:ContentControl ID="ContentControl1" runat="server">
                                    <table style="margin-bottom: 4px;">
                                        <tr>
                                            <td>
                                                <dx:ASPxButton ID="btnNew" runat="server" ToolTip="নতুন সদস্য" Text="নতুন সদস্য" AutoPostBack="false" OnClick="btnNew_Click"
                                                    HorizontalAlign="Center" VerticalAlign="Middle">
                                                    <Image Height="18px" Url="Images/add.png"></Image>
                                                </dx:ASPxButton>
                                            </td>
                                        </tr>
                                    </table>
                                    <dx:ASPxGridView ID="gvSItems" runat="server" AutoGenerateColumns="False" OnHtmlRowPrepared="gvSItems_HtmlRowPrepared"
                                        DataSourceID="sdsSitems" ClientInstanceName="DetailsGrid" OnCustomCallback="gvSItems_CustomCallback" EnableViewState="False" EnableRowsCache="False"
                                        KeyFieldName="ID" Width="100%">
                                        <ClientSideEvents CustomButtonClick="function(s, e) {
if(e.buttonID == 'CustomButton1'){    
DetailsGrid.PerformCallback(e.visibleIndex+'|1'); 
      }
    if(e.buttonID == 'CustomButton2'){
         DetailsGrid.PerformCallback(e.visibleIndex+'|2');
    }
    
  
}" />
                                        <SettingsBehavior ColumnResizeMode="Control"  />
                                     <SettingsPager Mode="ShowAllRecords">
                                            <Summary Text=""></Summary>
                                        </SettingsPager>
                                        <Styles>
                                        </Styles>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="ক্রমিক" FieldName="RowNo" VisibleIndex="0" MinWidth="40" Width="50px">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="ID" Visible="False" VisibleIndex="7"
                                                Width="100px">
                                            </dx:GridViewDataTextColumn>
                                            <%--Caption="জাতীয় পরিচয়পত্র নাম্বার"--%>
                                            <dx:GridViewDataTextColumn Caption="জাতীয় পরিচয়পত্র নাম্বার" FieldName="MemNID" VisibleIndex="1" MinWidth="100" Width="200px"
                                               >
                                                <DataItemTemplate>
                                                    <dx:ASPxTextBox ID="txtMNID" ClientInstanceName="cMemNID" Width="100%" runat="server" Value='<%# Eval("MemNID")%>'>
                                                      </dx:ASPxTextBox>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn>
                                               <dx:GridViewDataTextColumn Caption="সদস্যের নাম" FieldName="MemName" VisibleIndex="1" MinWidth="100"  Width="200px">
                                                <DataItemTemplate>
                                                    <dx:ASPxTextBox ID="txtMemName" ClientInstanceName="cMemName" Width="100%" runat="server" Value='<%# Eval("MemName")%>'>
                                                    </dx:ASPxTextBox>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="2"  MinWidth="70" Width="90px" Caption="">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="CustomButton1" Text="যাচাই">
                                                        <%--<Image Height="20px" Width="20px" Url="~/Images/onebit_25.png" />--%>
                                                    </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>


                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="4" MinWidth="100" Caption="" Visible="false">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="GridViewCommandColumnCustomButton1" Text="Image">
                                                        <%--<Image Height="20px" Width="20px" Url="~/Images/onebit_25.png" />--%>
                                                    </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5" Caption="" MinWidth="200" ShowDeleteButton="True">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="CustomButton2" Text="বিস্তারিত">
                                                        <%--<Image Height="20px" Width="20px" Url="~/Images/onebit_25.png" />--%>
                                                    </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>
                                            </dx:GridViewCommandColumn>
<%--                                            <dx:GridViewDataCheckColumn VisibleIndex="3" FieldName="isVerified" Caption="যাচিত" Width="60px" ></dx:GridViewDataCheckColumn>--%>
                                             <dx:GridViewDataColumn FieldName="isVerified" MinWidth="50" Width="60px" Caption="যাচিত" >
      <DataItemTemplate>

<dx:ASPxImage ID="imgStatus"  runat="server" Width="20px" Height="20px"></dx:ASPxImage>

</DataItemTemplate>
    </dx:GridViewDataColumn>
                                        </Columns>
                                          <Settings ShowHorizontalScrollBar="True"  />
                                         <SettingsBehavior ConfirmDelete="True"  />
                                         <SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>

                                             <DeleteButton Text="বাদ">
                                                 <Image Height="20px" Url="~/Images/delete.png" Width="50px"/>
                                             </DeleteButton>
                                         </SettingsCommandButton>
                                    </dx:ASPxGridView>
                                    <div style="float: right; width: 20%">
                                        <table class="table">
                                            <tr>

                                                <td>
                                                    <dx:ASPxButton ID="btnBack" ClientInstanceName="btnBack" runat="server" Text="পিছনে"
                                                        AutoPostBack="false" CausesValidation="false" UseSubmitBehavior="False">
                                                        <ClientSideEvents Click="OnBackButtonClick" />
                                                    </dx:ASPxButton>
                                                </td>
                                                <td>
                                                    <dx:ASPxButton ID="btnNext2" ClientInstanceName="btnNext" runat="server" Text="পরবর্তী অংশ"
                                                        AutoPostBack="false" CausesValidation="false" UseSubmitBehavior="true" OnClick="btnNext2_Click">
                                                    </dx:ASPxButton>
                                                </td>

                                            </tr>
                                        </table>
                                    </div>


                                    <asp:SqlDataSource ID="sdsSitems" runat="server" ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
                                        DeleteCommand="delete from SocietyMembers WHERE ID = @ID"
                                        UpdateCommand=" update SocietyMembers set MemNID=123123  WHERE ID = @ID"
                                        InsertCommand="insert into SocietyMembers(ScoietiesID,ApplicationID)values(@SocietiesID,@ApplicationID)"
                                        SelectCommand="select row_number() over(  ORDER BY ID) AS RowNo, ID,MemNID,MemName,isVerified from SocietyMembers where ApplicationID=@ApplicationID">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
                                        </SelectParameters>
                                        <InsertParameters>
                                            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
                                            <asp:Parameter Name="SocietiesID" />
                                        </InsertParameters>


                                    </asp:SqlDataSource>
                                </dx:ContentControl>



                            </ContentCollection>
                        </dx:TabPage>

                        <dx:TabPage Text="কমিটির সদস্য">
                            <ContentCollection>
                                <dx:ContentControl ID="ContentControl3" runat="server">
                                    <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate> --%>

                                    <table>
                                        <tr>
                                            <td>
                                                <dx:ASPxLabel ID="ASPxLabellay" runat="server" Text="কমিটির সদস্য সংখ্যাঃ">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td>
                                                <dx:ASPxRadioButton ID="RadioButton6" AutoPostBack="false" RepeatColumns="3" RepeatLayout="Table" GroupName="1" runat="server" Text="ছয়" CssClass="rdListCustom">
                                                    <ClientSideEvents ValueChanged="function(s, e) {
	 CommitteeMembersGrid.PerformCallback(s.GetValue().toString());
}" />
                                                </dx:ASPxRadioButton>
                                            </td>
                                            <td>
                                                <dx:ASPxRadioButton ID="RadioButton9" AutoPostBack="false" RepeatColumns="3" RepeatLayout="Table" GroupName="1" runat="server" Text="নয়" CssClass="rdListCustom">
                                                    <ClientSideEvents ValueChanged="function(s, e) {
	 CommitteeMembersGrid.PerformCallback(s.GetValue().toString());
}" />
                                                </dx:ASPxRadioButton>
                                            </td>
                                            <td>
                                                <dx:ASPxRadioButton ID="RadioButton12" AutoPostBack="false" RepeatColumns="3" RepeatLayout="Table" GroupName="1" runat="server" Text="বার" CssClass="rdListCustom">
                                                    <ClientSideEvents ValueChanged="function(s, e) {
                                                       
	 CommitteeMembersGrid.PerformCallback(s.GetValue().toString());
}" />
                                                </dx:ASPxRadioButton>
                                            </td>
                                            <%--<td>  <dx:ASPxRadioButtonList ID="ASPxRadioButtonList2" runat="server"
                                                                 RepeatColumns="3" RepeatLayout="Table" >
                                                                <Items>
                                                                    <dx:ListEditItem Text="ছয়" Value="6" />
                                                                    <dx:ListEditItem Text="নয়" Value="9" />
                                                                    <dx:ListEditItem Text="বার" Value="12" />
                                                                </Items>
                                                            </dx:ASPxRadioButtonList>
                                                        </td>--%>
                                        </tr>
                                        <tr>
                                            <td colspan="4">প্রস্তাবিত প্রথম বাবস্থাপনা কমটির সদস্যগনের নাম ও শেয়ার ক্রয়ের তারিখঃ</td>
                                        </tr>
                                    </table>
                                    <dx:ASPxCallbackPanel ID="ASPxCallbackPanelradio" runat="server" ClientInstanceName="cbPanelradio"
                                        OnCallback="ASPxCallbackPanelradio_Callback" Width="100%">
                                        <PanelCollection>
                                            <dx:PanelContent>
                                            </dx:PanelContent>
                                        </PanelCollection>
                                    </dx:ASPxCallbackPanel>
                                    <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
                                    <dx:ASPxGridView ID="gvCommitteeMembers" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="sdsCommitteeMembers" ClientInstanceName="CommitteeMembersGrid" EnableViewState="False" EnableRowsCache="False" 
                                        KeyFieldName="ID" Width="100%" OnCustomCallback="gvCommitteeMembers_CustomCallback" >
                                      
                                        <SettingsBehavior ColumnResizeMode="Control" />

<SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
</SettingsCommandButton>

                                        <SettingsText Title="Purchase Order Items" />
                                        <Styles>
                                        </Styles>
                                          <SettingsPager Mode="ShowAllRecords">
                                            <Summary Text=""></Summary>
                                        </SettingsPager>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="ক্রমিক" FieldName="RowNo" VisibleIndex="0"
                                                Width="5%">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="ID" Visible="False" VisibleIndex="7"
                                                Width="5%">
                                            </dx:GridViewDataTextColumn>
                                            <%--Caption="জাতীয় পরিচয়পত্র নাম্বার"--%>
                                            <dx:GridViewDataTextColumn Caption="সদস্যর নাম" FieldName="MemberID" VisibleIndex="1"
                                                Width="53%">
                                                <DataItemTemplate>
                                                    <dx:ASPxComboBox ID="cboMemberID" runat="server" DataSourceID="sdsSitems" TextField="MemName"
                                                        Value='<%# Bind("MemberID") %>' ValueField="ID" ValueType="System.Int32" Width="100%"
                                                        EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                    </dx:ASPxComboBox>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="RoleName" Caption="পদের নাম" VisibleIndex="3" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Center"
                                                Width="15%">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<CellStyle HorizontalAlign="Center"></CellStyle>
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn Caption="তারিখ" FieldName="MemberID" VisibleIndex="4"
                                                Width="15%">
                                                <DataItemTemplate>
                                                    <dx:ASPxDateEdit ID="dAssignDate" Width="100%" runat="server" Value='<%# Bind("AssignDate") %>'
                                                        EnableViewState="False" EncodeHtml="False" EditFormat="Custom" DisplayFormatString="dd/MM/yyyy"
                                                        EditFormatString="dd/MM/yyyy">
                                                    </dx:ASPxDateEdit>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5" Width="12%" Caption="সদস্যদের তথ্য">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="GridViewCommandColumnCustomButton4" Text="বিস্তারিত">
                                                    </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>
                                            </dx:GridViewCommandColumn>

                                        </Columns>

                                    </dx:ASPxGridView>
<%--  </dx:PanelContent>
                                        </PanelCollection>
                                    </dx:ASPxCallbackPanel>--%>
                                    <table class="table">
                                        <tr>
                                            <td style="width: 30%">
                                                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="সমতির নিবন্ধনের পূর্বে যোগাযোগের প্রয়োজন হইলে যাহার সহিত যোগাযোগ করতে হবে তার পূ্ণ ঠিকানাঃ">
                                                </dx:ASPxLabel>
                                            </td>
                                            <td style="width: 20%">
                                                <dx:ASPxComboBox ID="cbocontactID" runat="server" DataSourceID="sdsSitems" TextField="MemName" AutoPostBack="false"
                                                    ValueField="ID" ValueType="System.Int32"
                                                    EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	 cbPanelcont.PerformCallback(s.GetValue().toString());
}" />
                                                </dx:ASPxComboBox>
                                            </td>
                                            <td>
                                                <dx:ASPxCallbackPanel ID="ASPxCallbackPanelcont" runat="server" ClientInstanceName="cbPanelcont"
                                                    OnCallback="ASPxCallbackPanelcont_Callback" Width="100%">
                                                    <PanelCollection>
                                                        <dx:PanelContent>
                                                            <dx:ASPxMemo ID="ASPxMemoCont" runat="server" Height="40px" Width="86%" ReadOnly="true">
                                                            </dx:ASPxMemo>
                                                        </dx:PanelContent>
                                                    </PanelCollection>
                                                </dx:ASPxCallbackPanel>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30%">
                                                <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="সংগঠকের নামঃ">
                                                </dx:ASPxLabel>
                                            </td>

                                            <td style="width: 20%">
                                                <dx:ASPxComboBox ID="cbopres" runat="server" DataSourceID="sdsSitems" TextField="MemName"
                                                    ValueField="ID" ValueType="System.Int32"
                                                    EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	 cbPanelpres.PerformCallback(s.GetValue().toString());
}" />

                                                </dx:ASPxComboBox>
                                            </td>

                                            <td style="width: 50%">
                                                <dx:ASPxCallbackPanel ID="ASPxCallbackcon" runat="server" ClientInstanceName="cbPanelpres"
                                                    OnCallback="ASPxCallbackcon_Callback" Width="100%">
                                                    <PanelCollection>
                                                        <dx:PanelContent>
                                                            <table class="table">
                                                                <tr>
                                                                    <td>
                                                                        <dx:ASPxLabel ID="lbPhone" runat="server" Text="ফোন নংঃ" ReadOnly="true">
                                                                        </dx:ASPxLabel>
                                                                    </td>

                                                                    <td>

                                                                        <dx:ASPxTextBox ID="txtPhone" Width="80%" NullText="ফোন নং ..." runat="server" ReadOnly="true">
                                                                        </dx:ASPxTextBox>
                                                                    </td>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <dx:ASPxMemo ID="ASPxMemoPres" runat="server" Height="40px" Width="87%" ReadOnly="true">
                                                                            </dx:ASPxMemo>
                                                                        </td>
                                                                    </tr>
                                                            </table>
                                                        </dx:PanelContent>
                                                    </PanelCollection>
                                                </dx:ASPxCallbackPanel>
                                            </td>

                                        </tr>


                                    </table>


                                    <dx:ASPxGridView ID="gvPowerCommitee" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="sdsPowerCommitee" ClientInstanceName="gcPowerCommitee" EnableViewState="False" EnableRowsCache="False" OnCustomCallback="gvPowerCommitee_CustomCallback"
                                        KeyFieldName="ID" Width="100%">
                                        <SettingsBehavior ColumnResizeMode="Control" />

<SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
</SettingsCommandButton>

                                        <SettingsText Title="Purchase Order Items" />
                                        <Styles>
                                        </Styles>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="ক্রমিক" FieldName="RowNo" VisibleIndex="0"
                                                Width="50px">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="ID" Visible="False" VisibleIndex="7"
                                                Width="100px">
                                            </dx:GridViewDataTextColumn>
                                            <%--Caption="জাতীয় পরিচয়পত্র নাম্বার"--%>
                                            <dx:GridViewDataTextColumn Caption="সদস্যার নাম" FieldName="MemberID" VisibleIndex="1"
                                                Width="40%">
                                                <DataItemTemplate>
                                                    <dx:ASPxComboBox ID="cboMemberID" runat="server" DataSourceID="sdsSitems" TextField="MemName"
                                                        Value='<%# Bind("MemberID") %>' ValueField="ID" ValueType="System.Int32" Width="100%"
                                                        EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                        <ClientSideEvents SelectedIndexChanged="function(s, e) {gcPowerCommitee.PerformCallback('POST'); }" />
                                                    </dx:ASPxComboBox>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="MemPhone" Caption="মোবাইল নং" VisibleIndex="3"
                                                Width="20%">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn Caption="ঠিকানা" FieldName="MemVillage_Road" VisibleIndex="4"
                                                Width="40%">
                                            </dx:GridViewDataTextColumn>
                                            <%--   <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5" Width="10%" Caption="সদস্যদের তথ্য">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="GridViewCommandColumnCustomButton2" Text="বিস্তারিত">
                                                      </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>                                               
                                            </dx:GridViewCommandColumn>
                                            --%>
                                        </Columns>

                                    </dx:ASPxGridView>

                                    <div style="float: right; width: 25%">
                                        <table class="table">
                                            <tr>

                                                <td style="width: 5%">
                                                    <dx:ASPxButton ID="ASPxButton4" ClientInstanceName="btnBack" runat="server" Text="পিছনে"
                                                        AutoPostBack="false" CausesValidation="false" UseSubmitBehavior="False">
                                                        <ClientSideEvents Click="OnBackButtonClick" />
                                                    </dx:ASPxButton>
                                                </td>
                                                <td>
                                                    <dx:ASPxButton ID="btnNext3" ClientInstanceName="btnNext" runat="server" Text="পরবর্তী অংশ"
                                                        AutoPostBack="false" CausesValidation="false" UseSubmitBehavior="true" OnClick="btnNext3_Click">
                                                    </dx:ASPxButton>
                                                </td>
                                                <td></td>

                                            </tr>
                                        </table>
                                    </div>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                        <dx:TabPage Text="কাগজপত্র">
                            <ContentCollection>
                                <dx:ContentControl ID="ContentControl4" runat="server">
                                    <table border="0" class="table">
                                        <tr>
                                            <td>
                                                <p class="paparTab" >আপনার আবেদনটি প্রাথমিকভাবে গৃহীত হয়েছে। আপনার আবেদন নাম্বারঃ <dx:ASPxLabel ID="lbAppId" runat="server" Text="" Font-Size="Medium" Font-Bold="true" ForeColor="#a378d6" ></dx:ASPxLabel> </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="paparTab">নিম্নোক্ত দলিল পত্র ও চালানের কপি সংশ্লিষ্ট কার্যালয়ে (<dx:ASPxLabel ID="lblocation" runat="server" Text="" Font-Bold="true" Font-Size="Medium" ForeColor="#a378d6" ></dx:ASPxLabel>)আগামী --- দিনের মধ্যে দাখিল করতে অনুরোধ করা হল।</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="paparTab">আপনার সমস্ত কাগজপত্র যাচাই বাছাই সাপেক্ষে পরবর্তী --- দিনের মধ্যে আপনাকে ইমেইল এবং এসএমএস এর মাধ্যমে কর্তিপক্ষের চূড়ান্ত সিদ্ধান্ত জানানো হবে।</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="font-size: 14px; font-weight: bold">অবশ্যই দাখিল করতে হবে:</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="font-size: 14px;">
                                                    ১। নিবন্ধন ফী জমার চালানের কপি। <a href="http://google.com">নির্দেশনা</a><br />২। তিন প্রস্থ উপ আইন। <a href="http://google.com">নির্দেশনা</a><br />৩। নাগরিকত্ব ও স্থায়ী ঠিকানা সংক্রান্ত প্রমানপত। <a href="http://google.com">নির্দেশনা</a><br />৪। আবেদনকারী সদস্যদের প্রত্যেকের এক কপি সত্যায়িত পাসপোর্ট সাইজের ছবি। <a href="http://google.com">নির্দেশনা</a><br />
                                                    <br />
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="font-size: 14px; font-weight: bold;">অন্তত একটি অথবা একাধিক দাখিল করতে হবে (যদি থাকে):</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p style="font-size: 14px;">সনাক্ত করুন:</p>
                                            </td>
                                        </tr> </table>
                                       <div style="float:right; padding-right:20%"> <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" ClientInstanceName="btnNext" Text="ইতোমধ্যে গঠিত কমিটি"><ClientSideEvents Click="function (s, e) {clientPopup.Show();
                        
                        }" />
                                                            </dx:ASPxButton></div>
                                                          <dx:ASPxGridView ID="gvDoc" runat="server" AutoGenerateColumns="False" OnHtmlRowPrepared="gvDoc_HtmlRowPrepared"
                                        DataSourceID="sdsDoc" ClientInstanceName="gcDoc" EnableViewState="False" EnableRowsCache="False" OnCustomCallback="gvDoc_CustomCallback"
                                        KeyFieldName="ID" Width="60%">
                                                                <ClientSideEvents CustomButtonClick="function(s, e) {
if(e.buttonID == 'CustomButton1'){    
gcDoc.PerformCallback(e.visibleIndex+'|1'); 
      }
   
  
}" />
                                        <SettingsBehavior ColumnResizeMode="Control" />
                                        <Styles>
                                        </Styles>

<SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
</SettingsCommandButton>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="ক্রমিক" FieldName="RowNo" VisibleIndex="0"
                                                Width="8%">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="ID" Visible="False" VisibleIndex="7"
                                                Width="100px">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="সঃযুক্তি" FieldName="Status" VisibleIndex="1"
                                                Width="8%">
                                                <DataItemTemplate>
                                                    <dx:ASPxCheckBox ID="chkDocID" runat="server"  Value='<%# Bind("Status") %>' ValueField="Status" ValueType="System.Boolean" Width="100%"
                                                        EnableIncrementalFiltering="True" EnableViewState="False" EncodeHtml="False">
                                                        <ClientSideEvents CheckedChanged="function(s, e) {gcDoc.PerformCallback('POST'); }" />
                                                    </dx:ASPxCheckBox>
                                                </DataItemTemplate>
                                            </dx:GridViewDataTextColumn> <dx:GridViewDataTextColumn Caption="কাগজপত্র" FieldName="DocName" VisibleIndex="1"
                                                Width="84%"></dx:GridViewDataTextColumn>
                                              <%--  <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="2" Width="25%" Caption="কাগজপত্র দাখিল">
                                               <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="GridViewCommandColumnCustomButton3" Text="কাগজপত্র দাখিল">
                                                       </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>  </dx:GridViewCommandColumn>

                                             <dx:GridViewDataColumn FieldName="isVerified" Width="10%" Caption="দাখিল " >
      <DataItemTemplate>

<dx:ASPxImage ID="imgStatus"  runat="server" Width="20px" Height="20px"></dx:ASPxImage>

</DataItemTemplate>
    </dx:GridViewDataColumn>--%>
                                                                                  </Columns>

                                    </dx:ASPxGridView>
                                                   <%-- <tr>
                                                        <td>১।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">সাংগঠনিক সভার সত্যায়িত রেজুলেশ।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>২।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox2" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">জমা খরচ হিসাব।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>৩।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox3" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">আগামী দুই বছরের প্রস্তাবিত বাজেট।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>৪।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox4" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">সরকারি সাহায্য ছাড়া চলতে পারার অঙ্গিকারনামা।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>৫।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox5" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">সরকারি সাহায্য ছাড়া চলতে পারার অঙ্গিকারনামা।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td>৬।  </td>
                                                        <td>
                                                            <p>
                                                                <dx:ASPxCheckBox ID="ASPxCheckBox6" runat="server" Font-Bold="False" Font-Size="10px"></dx:ASPxCheckBox>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="font-size: 14px;">উপ আইন মেনে চলার অঙ্গিকারনামা।<a href="http://google.com">নির্দেশনা</a></p>
                                                        </td>
                                                        <td></td>
                                                    </tr>--%>
                                  
                                                    <table border="0" class="table" style="margin-top:10px;">   
                                                      
                                                    <tr>
                                                        <td colspan="2">
                                                            <p style="font-size: 14px; font-weight: bold;">আপনার সনাক্ত করা দলিল পত্র অবশ্যই আবেদন পত্রের সাথে সংযুক্ত করতে হবে। অন্যথায় আবেদন পত্র বাতিল বলে গণ্য হবে।</p>
                                                        </td>
                                                    </tr>
                                                    <%--<tr>
                                                        <td colspan="4">
                                                            <p style="font-size: 14px;"></p>
                                                            <br />
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td>
                                                            <dx:ASPxButton ID="ASPxButton3" runat="server" AutoPostBack="False" OnClick="ASPxButton3_Click" ClientInstanceName="btnDownload"  Text="আপনার প্রদত্ত তথ্য অনুযায়ী তৈরিকৃত আবেদনপত্র ডাউনলোড করুন">
                                                            </dx:ASPxButton>
                                                        </td>
                                                        <td>
                                                            <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" PostBackUrl="~/frmLogin.aspx" ClientInstanceName="btnfirstPage" Text="প্রথম পাতায় ফিরে যান">
                                                            </dx:ASPxButton>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <p style="font-size: 14px;"></p>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>
                                         


                                     <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="clientCallback">
                <PanelCollection>
                    <dx:PanelContent runat="server">
                    <dx:ASPxPopupControl ID="ASPxPopupControl2" runat="server" 
                        ClientInstanceName="clientPopup" EnableViewState="False" EncodeHtml="False" 
                        HeaderText="কমিটির সদস্য" Modal="True" PopupHorizontalAlign="WindowCenter" 
                        PopupVerticalAlign="WindowCenter" Width="600px">
                        <ContentCollection>
                            <dx:PopupControlContentControl runat="server">
                                 <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="sdsCommitteeMembers" ClientInstanceName="CommitteeMembersGrid" EnableViewState="False" EnableRowsCache="False"
                                        KeyFieldName="ID" Width="100%">
                                       
                                        <SettingsBehavior ColumnResizeMode="Control" />

<SettingsCommandButton>
<ShowAdaptiveDetailButton ButtonType="Image"></ShowAdaptiveDetailButton>

<HideAdaptiveDetailButton ButtonType="Image"></HideAdaptiveDetailButton>
</SettingsCommandButton>

                                        <SettingsText Title="কমিটির সদস্য" />
                                        <Styles>
                                        </Styles>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="ক্রমিক" FieldName="RowNo" VisibleIndex="0"
                                                Width="8%">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="ID" Visible="False" VisibleIndex="7"
                                                Width="5%">
                                            </dx:GridViewDataTextColumn>
                                            <%--Caption="জাতীয় পরিচয়পত্র নাম্বার"--%>
                                            <dx:GridViewDataComboBoxColumn Caption="সদস্যার নাম" FieldName="MemberID" VisibleIndex="1"
                                                Width="45%">
                                                   <PropertiesComboBox DataSourceID="sdsSitems" TextField="MemName"
                                                    ValueField="ID" ValueType="System.Int32" EnableIncrementalFiltering="True"     >
                            </PropertiesComboBox>
                                              
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn FieldName="RoleName" Caption="পদের নাম" VisibleIndex="3" HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Center"
                                                Width="15%">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<CellStyle HorizontalAlign="Center"></CellStyle>
                                            </dx:GridViewDataTextColumn>
                                           
                                            <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5" Width="20%" Caption="সদস্যদের তথ্য">
                                                <CustomButtons>
                                                    <dx:GridViewCommandColumnCustomButton ID="GridViewCommandColumnCustomButton2" Text="বিস্তারিত">
                                                    </dx:GridViewCommandColumnCustomButton>
                                                </CustomButtons>
                                            </dx:GridViewCommandColumn>

                                        </Columns>

                                    </dx:ASPxGridView>

                                </dx:PopupControlContentControl>
                            </ContentCollection>
                        </dx:ASPxPopupControl>
                    </dx:PanelContent>
                </PanelCollection>
                <ClientSideEvents EndCallback="function(s, e) {clientPopup.Show(); }" />
            </dx:ASPxCallbackPanel>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>
                    </TabPages>
                </dx:ASPxPageControl>
                <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter"
                    Modal="True">
                    <ContentCollection>
                        <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
                            <dx:ASPxLabel ID="ASPxLabel7" runat="server"></dx:ASPxLabel>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>




            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

    <dx:ASPxPopupControl ID="ErrorPopup" runat="server" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter"
        Modal="true" ShowHeader="true">
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server">
                <dx:ASPxLabel ID="lblPopupErrorMessage" runat="server"></dx:ASPxLabel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    
    <asp:SqlDataSource ID="sdsDoc" runat="server" ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
        UpdateCommand=" update ApplicationDocuments set Status=@Status  WHERE ID = @ID"
        SelectCommand="select row_number() over(  ORDER BY a.ID) AS RowNo,a.*,b.DocName from ApplicationDocuments a 
                                        left join Documents b on a.DocumentID=b.ID where a.ApplicationID=@ApplicationID and b.DocType in (1)">
        <SelectParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
            <asp:Parameter Name="Status" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sdsPowerCommitee" runat="server" ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
        UpdateCommand=" update CommitteeMembers set MemberID=@MemberID  WHERE ID = @ID"
        SelectCommand="select row_number() over(  ORDER BY a.ID) AS RowNo,a.*,b.MemNID,b.MemName,b.MemPhone,b.MemVillage_Road from CommitteeMembers a 
                                        left join SocietyMembers b on a.MemberID=b.ID where a.ApplicationID=@ApplicationID and a.MemberRoleID in (6)">
        <SelectParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
            <asp:Parameter Name="MemberID" />
        </UpdateParameters>

    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sdsCommitteeMembers" runat="server" ConnectionString="<%$ ConnectionStrings:cooporsDBConnectionString %>"
        UpdateCommand=" update CommitteeMembers set MemberID=@MemberID,AssignDate=@AssignDate WHERE ID = @ID"
        SelectCommand="select row_number() over(  ORDER BY a.ID) AS RowNo,a.*,b.RoleName from CommitteeMembers a 
                                        left join MemberRoles b on a.MemberRoleID=b.ID where a.ApplicationID=@ApplicationID and a.MemberRoleID in (1,2,3)">
        <SelectParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="ApplicationID" SessionField="AppID" Type="Int32" />
            <asp:Parameter Name="SocietiesID" />
            <asp:Parameter Name="AssignDate" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <dx:ASPxGridViewExporter ID="gridExport" runat="server" GridViewID="gvUser">
    </dx:ASPxGridViewExporter>
</asp:Content>
