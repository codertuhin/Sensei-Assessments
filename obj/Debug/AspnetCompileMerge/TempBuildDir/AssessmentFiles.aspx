<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssessmentFiles.aspx.cs" Inherits="coopors.AssessmentFiles" %>
<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxFileManager ID="fileManager" runat="server">
        <Settings  EnableMultiSelect="true" RootFolder="~/Files/Docx" ThumbnailFolder="~/Files/Docx"
            AllowedFileExtensions=".xlsx"
            InitialFolder="~/Files/Docx" />
        <SettingsEditing AllowCreate="false" AllowDelete="false" AllowMove="false" AllowRename="false" AllowCopy="false" AllowDownload="true" />
        <SettingsPermissions>
            <AccessRules>
                <dx:FileManagerFolderAccessRule Path="System" Edit="Deny" />
                <dx:FileManagerFileAccessRule Path="System\*" Download="Deny" />
            </AccessRules>
        </SettingsPermissions>
        <SettingsFolders Visible="false" />
        <SettingsFileList View="Details" ShowFolders="false" ShowParentFolder="false" />
        <SettingsBreadcrumbs Visible="false" ShowParentFolderButton="true" Position="Top" />
        <SettingsUpload Enabled="false" UseAdvancedUploadMode="true">
            <AdvancedModeSettings EnableMultiSelect="true" />
        </SettingsUpload>
        <SettingsAdaptivity Enabled="true" EnableCollapseFolderContainer="false" />
        <Styles FolderContainer-Width="30%" />
    </dx:ASPxFileManager>
</asp:Content>
