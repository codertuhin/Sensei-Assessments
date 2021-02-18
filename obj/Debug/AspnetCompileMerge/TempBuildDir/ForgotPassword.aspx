﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="coopors.ForgotPassword" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-12" style="margin-top: 20px">
         <div class="text-center">
             <label style="color:#5B963E">Forgot your password?</label>
             <div class="center-block">
                 Please enter your registered email and click Send Password.
             </div>
         </div>
     </div>

     <div class="col-md-6 col-md-offset-2" style="margin-top: 30px">
         
                    <div class="form-group" style="margin-bottom: 10%">
                        <label class="col-md-4"></label>
                        <div class="col-md-8">
                            <dx:BootstrapTextBox ID="txtEmail" NullText="Email" Email="true" runat="server">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorText="Enter valid email address." />
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Email" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <label class="col-md-4"></label>

                        <%-- <div class="row">
                             <br />
                             <dx:ASPxCaptcha runat="server" ID="captcha" >
                                 <ValidationSettings RequiredField-IsRequired="true" RequiredField-ErrorText="Prove us you are not a robot." ErrorText="Prove us you are not a robot." />
                             </dx:ASPxCaptcha>
                             <br />
                         </div>--%>

                        <div class="col-md-8">
                           
                            <dx:BootstrapButton ClientInstanceName="btnOK" ID="btnOK" runat="server" AutoPostBack="true" Text="Send Password" ValidationGroup="Validation"  OnClick="btnOK_Click">
                                <SettingsBootstrap RenderOption="Primary" />
                                <CssClasses Control="form-control" />
                            <ClientSideEvents Click="function(s,e){
                                //LoadingPanel.Show();
                                //btnOK.SetEnabled(false);
                                }" />
                            </dx:BootstrapButton>
                        </div>
                        
                    </div> 
                    <br /><br />
                  <%--  <div class="form-group">
                         <label class="col-md-4"></label>
                        <div class="col-md-8">
                           
                          </div>
                    </div>--%>
                    
                        
                  

                    <%--<div class="form-group" style="margin-bottom: 15%">
                        <label class="col-md-4"></label>
                        <div class="col-md-8 text-center">
                            <dx:BootstrapHyperLink ID="lnkForgotUserNameAndPass"  Text="ব্যবহার কারীর নাম/পাসওয়ার্ড ভুলে গেছেন?" runat="server" Visible="false"></dx:BootstrapHyperLink>
                        </div>
                    </div>--%>
                </div>

   
</asp:Content>
