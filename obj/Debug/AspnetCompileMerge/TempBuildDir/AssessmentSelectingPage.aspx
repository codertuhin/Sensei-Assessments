<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssessmentSelectingPage.aspx.cs" Inherits="coopors.AssessmentSelectingPage" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <label style="margin-top: 20px">Please select an assessment then click Next</label>

    <dx:ASPxFormLayout runat="server">
        <Items>
            <dx:LayoutItem Caption="" CaptionSettings-Location="Top">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <dx:ASPxRadioButtonList runat="server" AutoPostBack="false" ID="rdoAssessmentList" ClientInstanceName="rdoAssessmentList" ValueType="System.Int32">

                            <Items>
                                <dx:ListEditItem Text="Interaction Personality Type Assessment" Value="0" Selected="true" />
                                <dx:ListEditItem Text="IQ-EQ Assessment" Value="1" />
                                <dx:ListEditItem Text="Natural Ability Assessment" Value="2" />
                                <dx:ListEditItem Text="Leadership Complexities Assessment" Value="3" />
                            </Items>
                        </dx:ASPxRadioButtonList>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>

            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer>
                        <br />
                        <dx:BootstrapButton ID="btnNext" Width="150px" runat="server" AutoPostBack="false" Text="Next">
                            <SettingsBootstrap RenderOption="Primary" />

                            <ClientSideEvents Click="function(s,e){
                                LoadingPanel.Show();

                                 var i = rdoAssessmentList.GetValue();
                                if(i==0)
                                {
                                window.location.href = 'Interaction-Style-assessment.aspx';
                                }
                                else if(i==1)
                                {
                                window.location.href = 'Technical-Adaptive-Assessment.aspx';
                                }
                                else if(i==2)
                                {
                                window.location.href = 'Unique-Ability-Test-Form.aspx';
                                }
                                else if(i==3)
                                {
                                    window.location.href = 'LeadershipComplexitiesAssessment.aspx';
                                }
                            
                                }" />
                        </dx:BootstrapButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>

    <dx:ASPxLoadingPanel ID="LoadingPanel" Text="Loading..." runat="server" ClientInstanceName="LoadingPanel" Modal="True">
    </dx:ASPxLoadingPanel>
</asp:Content>
