﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="coopors.WebForm2" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script  type="text/javascript">
        function onUpdateClick(s, e) {
    alert('Text');
    callbackPanel.PerformCallback("caused on the button click");
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<dx:BootstrapCallbackPanel runat="server" ClientInstanceName="callbackPanel" OnCallback="CallbackPanel_Callback">
    <ContentCollection>
        <dx:ContentControl>
            <div class="card">
                <div class="card-body">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sem lorem, rutrum at tincidunt aliquam, vulputate sit amet tellus. In hac habitasse platea dictumst. Morbi in dui a massa volutpat tristique. Aenean ultrices, elit ac commodo vestibulum, nisl neque pharetra est, id egestas neque leo dignissim augue. Vestibulum sodales metus at est maximus dictum. Quisque cursus felis id nisi auctor, volutpat imperdiet neque feugiat. Sed aliquet elit sem, ut vulputate lectus ultricies sit amet.</p>
                    <p><span class="badge badge-info"><%= IsCallback ? "The content was updated at " + DateTime.Now.ToLongTimeString() : "" %></span></p>
                    <small runat="server" id="passedInfo"></small>
                </div>
            </div>
        </dx:ContentControl>
    </ContentCollection>
</dx:BootstrapCallbackPanel>
<dx:BootstrapButton Text="Update" AutoPostBack="false" UseSubmitBehavior="false" runat="server">
    <ClientSideEvents Click="onUpdateClick(s,e)" />
</dx:BootstrapButton>

</asp:Content>
