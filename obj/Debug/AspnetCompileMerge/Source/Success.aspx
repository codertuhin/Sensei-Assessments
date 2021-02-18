﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="coopors.Success" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12" style="margin-top: 20px">
        <div class="text-center">
            <label style="color: #5B963E">Transaction Successful!</label>

            <div class="center-block">
                We have received your payment for Comprehensive Report. We will send the report to your email address within 24 hours.
            </div>

            <dx:BootstrapButton Style="margin-top: 20px" ID="btnComprehensiveReport" runat="server" AutoPostBack="false" OnClick="btnComprehensiveReport_Click" Text="Return Main Page">
                <SettingsBootstrap RenderOption="Primary" />
            </dx:BootstrapButton>
        </div>
    </div>
</asp:Content>
