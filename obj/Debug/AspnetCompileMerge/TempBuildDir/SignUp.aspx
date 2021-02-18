﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="coopors.SignUp" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-12" style="margin-top: 20px">
                         <div class="text-center">
                             <label style="color:#5B963E">Welcome to Sensei-Assessments</label>
                         
                             <div class="center-block">
                             Participant Registration Form
                         </div>
                         </div>
         </div>

     <%--<asp:UpdatePanel runat="server" ID="UpdatePanel1">
       
        <ContentTemplate>--%>
    <dx:BootstrapFormLayout runat="server">
        <SettingsItemCaptions HorizontalAlign="Left" />
        <SettingsItemHelpTexts HorizontalAlign="Left" />
        <Items>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <%--<label>Welcome to Sensei-Assessments</label>--%> 
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
           
            <%--<dx:BootstrapLayoutItem Caption="Title" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>
            <%--<dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtTitle" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Title" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>
            <dx:BootstrapLayoutItem Caption="Name" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="First Name" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtFirstName" runat="server" >
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter First Name" />
                                </ValidationSettings>
                             </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="Last Name" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtLastName" runat="server" >
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Last Name" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Designation" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPosition" runat="server" >
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Position" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Company" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtCompany" runat="server">
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Company Name" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Address" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="Street Address" ColSpanMd="8">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtAddress1" runat="server" >
                          <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Street Address" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <%--<dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>
            <%--<dx:BootstrapLayoutItem Caption="" HelpText="Street Address Line 2" ColSpanMd="8">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtAddress2" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>
            <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="City" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtCity" runat="server">
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField  IsRequired="true" ErrorText="Please Enter City" />
                                </ValidationSettings>
                             </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="State/Province" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtState" runat="server">
                         <ValidationSettings ValidationGroup="Validation">
                                    <%--<RequiredField IsRequired="true" ErrorText="Please Enter State/Province" />--%>
                                </ValidationSettings>
                             </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="Postal/Zip Code" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPostal" runat="server">
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Postal/Zip Code" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="Country" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                   <dx:BootstrapComboBox ID="cmbCountry" ClientInstanceName="cmbCountry" runat="server" NullText="Enter Country" AutoPostBack="false" OnInit="cmbCountry_Init1" >
                       <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Country" />
                                </ValidationSettings>
                           
                                    </dx:BootstrapComboBox>
                                
                        <%--<dx:BootstrapComboBox ID="cmbCountry"  OnInit="cmbCountry_Init1" runat="server"></dx:BootstrapComboBox>--%>
                       </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Email" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtEmail" runat="server">
<%--                            <ClientSideEvents LostFocus="emailTextBoxLostFocus" />--%>
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Email" />
                                    <RegularExpression ErrorText="Please Enter Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

           <%-- <dx:BootstrapLayoutItem Caption="" BeginRow="false" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                        <small runat="server" id="passedInfo">Inner Text</small>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>

            <dx:BootstrapLayoutItem Caption="Password" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="New Password" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPassword" Password="true" ClientInstanceName="txtPassword" runat="server">
                        <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Password" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" HelpText="Confirm Password" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtConfirmPassword" Password="true" ClientInstanceName="txtConfirmPassword" runat="server">
                 <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Confirm Password" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Phone Number" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPhoneNumber" runat="server">
                         <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Phone Number" />
                                </ValidationSettings>
                             </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>


        </Items>
    </dx:BootstrapFormLayout>

    
    <%--<br />
    <h1>Payment Method</h1>
    <br />
    <h4>Add a payment method here from the Payment Tools on the left side.</h4>--%>
    <div class="col-md-6 col-md-offset-2" style="margin-top: 50px">

        <div class="form-group" style="margin-bottom: 15%">
            <label class="col-md-4"></label>
            <div class="col-md-4">
                   
                                <dx:BootstrapButton ID="btnSubmit"  ClientInstanceName="btnSubmit" ValidationGroup="Validation" AutoPostBack="true" OnClick="btnSubmit_Click" runat="server" Text="Submit">
                                        
                                    <%--<ClientSideEvents Click="doSubmit" />--%>
                                    
                                    <SettingsBootstrap RenderOption="Primary" />
                                    <CssClasses Control="form-control" />
                                </dx:BootstrapButton>
                            

            </div>
           <div class="col-md-4">
                     <dx:BootstrapButton ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel">
                    <SettingsBootstrap RenderOption="Danger" />
                    <CssClasses Control="form-control" />

                </dx:BootstrapButton>
                </div>
        </div>
        

    </div>

    <%--<dx:BootstrapCallbackPanel runat="server" ClientInstanceName="callbackPanel" OnCallback="CallbackPanel_Callback">
    
    </dx:BootstrapCallbackPanel>--%>

    
        <%--</ContentTemplate>
     </asp:UpdatePanel>--%>
   <script type="text/javascript">
       function Validate()
       {
           var password = txtPassword.value;
           var confirmPassword = txtConfirmPassword.value;
           if (password != confirmPassword) {
               alert("Passwords do not match.");
               return false;
           }
           return true;
       }

       function doSubmit(s, e) {
           if (Page_IsValid) {
               alert("message");
               btnSubmit.SetEnabled(false);
           }
           else
           {
               return;
           }
       }

       function emailTextBoxLostFocus(s,e)
       {
               callbackPanel.PerformCallback("Email already exists.");

       }

</script>
</asp:Content>
