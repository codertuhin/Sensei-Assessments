<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViewer.aspx.cs" Inherits="coopors.ReportViewer.ReportViewer" %>
<%@ Register Assembly="DevExpress.XtraReports.v18.2.Web.WebForms, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
          <dx:ASPxDocumentViewer ID="vwDocuementViewer" OnUnload="vwDocuementViewer_Unload" runat="server" ToolbarMode="Ribbon" >
            <SettingsReportViewer ShouldDisposeReport="False"  />
        </dx:ASPxDocumentViewer>
        </div>
    </form>
</body>
</html>
