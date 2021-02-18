<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TransactionFailed.aspx.cs" Inherits="coopors.TransactionFailed" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12" style="margin-top: 20px">
        <div class="text-center">
            <label style="color: #5B963E">Transaction Failed!</label>

            <div class="center-block">
                We are sorry, We could not process your transaction. Please contract Sensei-Assessments for help.
            </div>

            <dx:bootstrapbutton style="margin-top: 20px" id="btnComprehensiveReport" OnClick="btnComprehensiveReport_Click" runat="server" autopostback="false" text="Return to Download Page" >
                        <SettingsBootstrap RenderOption="Primary" />
                    </dx:bootstrapbutton>
        </div>
    </div>
</asp:Content>
