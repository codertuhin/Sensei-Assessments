<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="coopors.Home" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="panel panel-primary">
        <div class="panel-heading text-left">
            Assessment Report
        </div>
        <div class="panel-body">

            <div class="col-md-12" style="margin-top: 20px">
                <div class="text-center">
                    <label style="color: #5B963E">Congratulations! Your Sensei-Assessment Report is ready!</label>

                    <div class="center-block">
                        Click the button below to download the report.                   
                    </div>

                    <div class="col-md-12" style="margin-top: 20px">
                        <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" Text="Download Report" OnClick="BootstrapButton1_Click">
                            <SettingsBootstrap RenderOption="Success" />
                        </dx:BootstrapButton>
                    </div>

                </div>



            </div>




            <div class="col-md-12" style="margin-top: 20px">
                <div class="text-center">
                    <label style="color: #5B963E">Sensei-Assessments Comprehensive Report</label>

                    <div class="center-block">
                        For a deeper exploration, we invite you to invest in a comprehensive report for only US$ 10. You may first take the free assessment and decide if you would like to invest in the comprehensive report. However, if you would like to do the comprehensive report, please click the button below. 
                    </div>

                    <dx:BootstrapButton Style="margin-top: 20px" ID="btnComprehensiveReport" runat="server" AutoPostBack="false" Text="Get Comprehensive Report" OnClick="btnComprehensiveReport_Click">
                        <SettingsBootstrap RenderOption="Primary" />
                    </dx:BootstrapButton>
                </div>


            </div>
            <br />
            <div class="row">

            </div>
            <div class="center-block" >
                <div Style="margin-top: 20px">
                     <br />
                <br />
                <br />
                If you are interested in attending any learning experience go to <a target="_blank" href="http://www.ranjandesilva.com/events">www.ranjandesilva.com/events</a>


                <br />
                If you are interested in engaging us in keynote speeches, executive coaching, corporate interventions, etc. Visit <a target="_blank" href="www.ranjandesilva.com/services">www.ranjandesilva.com/services</a> and send us your contact details using the contact form.
    <br />
                <br />
                If you want to take another assessment go to the <a href="AssessmentSelectingPage.aspx">Main Page</a>. 
    <br />
                <br />
                </div>
               

            </div>



        </div>



    </div>




</asp:Content>
