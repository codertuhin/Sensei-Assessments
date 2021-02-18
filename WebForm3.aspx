﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="coopors.WebForm3" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<%--    <div class="container">
        <div class="form-group">
            <div class="col-md-2">
                <dx:ASPxLabel ID="lbl" runat="server" Text="Title"></dx:ASPxLabel>
                
            </div>
            <div class="col-md-4">
                <dx:BootstrapTextBox ID="txtTitle" runat="server"/>
               
            </div>
            <div class="col-md-6">
               
            </div>
                     
        </div>
        <div class="form-group">
            <div class="col-md-2">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Name"></dx:ASPxLabel>
                
            </div>
            <div class="col-md-4">
                <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server"/>
               <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="First Name"></dx:ASPxLabel>
                
            </div>
            <div class="col-md-4">
                <dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server"/>
               
            </div>
                <div class="col-md-2">
                
            </div>
              </div>
        
              
    </div>--%>
    <dx:BootstrapFormLayout runat="server">
        <SettingsItemCaptions HorizontalAlign="Left" />
    <SettingsItemHelpTexts HorizontalAlign="Left" />
    <Items>      <dx:BootstrapLayoutItem Caption="" ColSpanMd="12" >
                <ContentCollection>
                    <dx:ContentControl>
                     <h1>Training Course Signup</h1>
    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <h3>Participant Registration From</h3>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="Title" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtTitle" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="Name" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="First Name" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtFirstName" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Last Name" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtLastName" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
           <dx:BootstrapLayoutItem Caption="Position" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPosition" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
         <dx:BootstrapLayoutItem Caption="Company" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtCompany" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            
           <dx:BootstrapLayoutItem Caption="Address" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Street Address" ColSpanMd="8" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtAddress1" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem> 
        <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Street Address Line 2" ColSpanMd="8" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtAddress2" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
           <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="City" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtCity" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="State/Province" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtState" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem> 
        <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Postal/Zip Code" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPostal" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Country" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                     <dx:BootstrapDropDownEdit ID="dropCountry" runat="server"></dx:BootstrapDropDownEdit>
        </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
             <dx:BootstrapLayoutItem Caption="Email" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtEmail"  runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="Password" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="New Password" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPassword" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption=""  HelpText="Confirm Password" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtConfirmPassword" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
               <dx:BootstrapLayoutItem Caption="Phone Number" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem Caption="" ColSpanMd="4" >
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPhoneNumber" runat="server" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
           
          <%--  <dx:BootstrapLayoutItem Caption="Address Type" BeginRow="true">
                <ContentCollection>
                    <dx:ContentControl>
                        <div class="form-control-plaintext">
                            <dx:BootstrapRadioButton runat="server" Text="Home" GroupName="AddressTypeGroup">
                                <SettingsBootstrap InlineMode="true" />
                            </dx:BootstrapRadioButton>
                            <dx:BootstrapRadioButton runat="server" Text="Work" GroupName="AddressTypeGroup" Checked="true">
                                <SettingsBootstrap InlineMode="true" />
                            </dx:BootstrapRadioButton>
                        </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>--%>
        </Items>
    </dx:BootstrapFormLayout><br />
     <h1>Payment Method</h1><br />
            <h4>Add a payment method here from the Payment Tools on the left side.</h4>
    <dx:BootstrapButton ID="btnSubmit" CssClasses-Control="align:center" OnClick="btnSubmit_Click" runat="server" AutoPostBack="false" Text="Submit"></dx:BootstrapButton>
</asp:Content>
