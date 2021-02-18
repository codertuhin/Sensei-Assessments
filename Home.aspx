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
                    <label style="color: #5B963E">Your Sensei-Assessment Report is ready!</label>

                    <div class="center-block">
                        Click the button below to download your brief report and receive it by email. Stay on this page to see how to get your comprehensive report.                  
                    </div>

                    <div class="col-md-12" style="margin-top: 20px">
                        <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" Text="Download Report" OnClick="BootstrapButton1_Click">
                            <SettingsBootstrap RenderOption="Success" />
                        </dx:BootstrapButton>
                    </div>

                </div>



            </div>






        </div>



    </div>




</asp:Content>
