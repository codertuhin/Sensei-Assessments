<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TCPage.aspx.cs" Inherits="coopors.TCPage" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <dx:BootstrapFormLayout runat="server">
            <Items>
                <dx:BootstrapLayoutItem Caption="Address" ColSpanMd="12">
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem Caption="City">
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem Caption="Postal/ZIP Code">
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem Caption="Country">
                </dx:BootstrapLayoutItem>
                <dx:BootstrapLayoutItem Caption="Address Type" BeginRow="true">
                    <ContentCollection>
                        <dx:ContentControl>
                            <div class="form-control-plaintext">
                                <dx:BootstrapRadioButton runat="server" Text="Home" GroupName="AddressTypeGroup">
                                    <SettingsBootstrap InlineMode="true" />
                                </dx:BootstrapRadioButton>
                                <dx:BootstrapRadioButton runat="server" Text="Work" GroupName="AddressTypeGroup" Checked="true">
                                    <SettingsBootstrap InlineMode="true" />
                                </dx:BootstrapRadioButton>
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapLayoutItem>
            </Items>
        </dx:BootstrapFormLayout>
    </form>
</body>
</html>
