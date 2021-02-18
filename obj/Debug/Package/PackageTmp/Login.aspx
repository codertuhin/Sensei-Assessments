<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="coopors.Login" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <script type="text/javascript">





         var visibleIndex;
         function OnCustomButtonClick() {


             alertify.alert('Ready!', 'Hello how are you!', function () { alertify.success('Ok'); });
             //popup.Show();

             //alertify.success('Ok');
             //alertify.alert('Modal: true').set('modal', true);
             var pre = document.createElement('pre');
             //custom style.
             pre.style.maxHeight = "400px";
             pre.style.margin = "0";
             pre.style.padding = "24px";
             pre.style.whiteSpace = "pre-wrap";
             pre.style.textAlign = "justify";


             pre.appendChild(document.createTextNode("This is a sample button..."));

             alertify.confirm(pre, function () {
                 alertify.alert('Modal: true').set('modal', true);
                 alertify.success('Accepted');
                 e.processOnServer = true;

             }, function () {
                 alertify.error('Declined');
             }).set({ labels: { ok: 'Accept', cancel: 'Decline' }, padding: false });
         }


            </script>

                <div class="col-md-12" style="margin-top: 20px">
                     <div class="text-center">
                         <label style="color:#5B963E">Log in and get to the Sensei-Assessments</label>
                         
                         <div class="center-block">
                             Please enter your valid credentials then click Login
                         </div>
                     </div>
                 </div>

                <div class="col-md-6 col-md-offset-2" style="margin-top: 20px">
                    <div class="form-group" style="margin-bottom: 10%">
                        <label class="col-md-4"></label>
                        <div class="col-md-8">
                            <dx:BootstrapTextBox ID="txtEmail" NullText="Email" Email="true" runat="server">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RegularExpression ErrorText="Enter valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Email" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </div>
                    </div>
                    <div class="form-group" style="padding-bottom: 40px">
                        <label class="col-md-4"> </label>
                        <div class="col-md-8">
                            <dx:BootstrapTextBox ID="txtPassword" NullText="Password " Password="true" runat="server">
                                <ValidationSettings ValidationGroup="Validation">
                                    <RequiredField IsRequired="true" ErrorText="Please Enter Password" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </div>
                    </div>

                    

                    <div class="form-group">
                        <label class="col-md-4"></label>
                        <div class="col-md-8">
                           
                            <dx:BootstrapButton ID="LoginButton" ClientInstanceName="LoginButton" runat="server" AutoPostBack="true" Text="Login" ValidationGroup="Validation"  TabIndex="0" OnClick="LoginButton_Click">
                                <SettingsBootstrap RenderOption="Primary" />
                                <CssClasses Control="form-control" />
                            <ClientSideEvents Click="function(s,e){
                                  //  if(Page_IsValid())
                                //LoginButton.SetEnabled(false);
                                //LoadingPanel.Show();
                                
                                }" />
                            </dx:BootstrapButton>

                        
                     <a style="font-size:small;text-decoration:none" href="ForgotPassword.aspx">Forgot Password? </a>
                   
                        </div>
                        
                    </div> 

                   

                   
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


     <div class="col-md-12" style="margin-top: 50px">
                         <div class="text-center">
                             <label style="color:#5B963E; font-size:medium">New to Sensei-Assessments?</label>
                         </div>

          <div class="text-center" style="margin-top: 20px">

              
                    <dx:BootstrapButton Width="250px" ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up" TabIndex="1">
                             <SettingsBootstrap RenderOption="Success" />
                                <CssClasses Control="form-control" />
                       
                            </dx:BootstrapButton>
              </div>
              
              
       
                    

                   </div>
            <%--</div>

        </div>--%>

  <%--  <dx:BootstrapPopupControl runat="server" ID="popup" PopupElementCssSelector="#default-popup-control-5"
    PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Width="500px" CloseAction="CloseButton"
    Modal="true">
    
</dx:BootstrapPopupControl>--%>
 
       <dx:ASPxLoadingPanel ID="LoadingPanel"  Text="Loading..." runat="server" ClientInstanceName="LoadingPanel" Modal="True">
    </dx:ASPxLoadingPanel>
</asp:Content>


