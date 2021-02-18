<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComprehensiveReport.aspx.cs" Inherits="coopors.ComprehensiveReport" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="panel panel-primary">
        <div class="panel-heading text-left">
        </div>
        <div class="panel-body">

            <div class="col-md-12" style="margin-top: 20px">
                <div class="text-center">
                    <label style="color: #5B963E">Welcome to Sensei-Assessment Comprehensive Report!</label>

                    <div class="center-block">
                        Thank you for showing interest in comprehensive report section. Please confirm the following information and proceed to check out. Once the payment is successful, we will send the comprehensive report to your email address within 24 hours.                 
                    </div>

                    <div style="margin-top: 20px">
                        <label>Assessment Name</label>
                        <label style="color: #5B963E"><%= this.AssessmentName %></label>
                        <label>Date Taken</label>
                        <label style="color: #5B963E"><%= this.DateTaken %></label>

                        <label>Price</label>
                        <label style="color: #5B963E">USD $10</label>
                    </div>


                    <div class="col-md-12" style="margin-top: 20px">
                        <dx:BootstrapButton ID="btnCheckOut"  OnClick="btnCheckOut_Click" runat="server" AutoPostBack="false" Text="Proceed to Checkout">
                            <SettingsBootstrap RenderOption="Danger" />
                        </dx:BootstrapButton>
                    </div>

                </div>



            </div>



        </div>

    </div>
</asp:Content>
