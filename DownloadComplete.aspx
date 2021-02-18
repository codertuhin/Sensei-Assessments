<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DownloadComplete.aspx.cs" Inherits="coopors.DownloadComplete" %>

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
                    <label style="color: #5B963E">Congratulations! Your Sensei-Assessment Report has been downloaded by you and emailed to you!</label>


                    <p>The download will begin in <span id="countdowntimer">5</span> Seconds</p>
            <p>if this auto download doesn't work, please click this button: <asp:LinkButton ID="LinkButton1"  ClientIDMode="Static" runat="server" OnClick="LinkButton1_Click"  >Click</asp:LinkButton> </p>

                </div>

            </div>




            <div class="col-md-12" style="margin-top: 20px">
                <div class="text-center">
                    <label style="color: #0073AA">Sensei-Assessments Comprehensive Report</label>

                    <div class="center-block">
For a deeper exploration, we invite you to invest in a comprehensive report for only US$ 15. 
Once you click below, you will be taken to a payment gateway. 
Once you complete your payment, you will receive a confirmation email and be taken to a payment confirmation page. 
You report will be customised and sent to you within 24 hours. 
If you feel that the brief report does not reflect your personality, please repeat the assessment before you buy the comprehensive report at <a href="AssessmentSelectingPage.aspx">Selection Page</a></div>

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
                    If you want to take another assessment go to the <a href="AssessmentSelectingPage.aspx">Selection Page</a>. 

                <br />
                If you are interested in attending any learning experience go to <a target="_blank" href="http://www.ranjandesilva.com/events">www.ranjandesilva.com/events</a>


                <br />
                If you are interested in engaging us in keynote speeches, executive coaching, corporate interventions, etc. please visit <a target="_blank" href="www.ranjandesilva.com/services">www.ranjandesilva.com/services</a> and send us your contact details using the contact form.
    <br />
                <br />
    <br />
                    
                <br />
                </div>
               

            </div>



        </div>



    </div>

    
    <script type="text/javascript">
        var timeleft = 5;
        var downloadTimer = setInterval(function () {
            timeleft--;
            document.getElementById("countdowntimer").textContent = timeleft;
            if (timeleft <= 0) {
                clearInterval(downloadTimer);
                __doPostBack('LinkButton1', '');
            }
        }, 1000);
            </script>

</asp:Content>
