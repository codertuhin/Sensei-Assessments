<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrganizationContactForm.aspx.cs" Inherits="coopors.OrganizationContactForm" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12" style="margin-top: 20px">
        <div class="text-center">
            <label style="font-size: 2em; color: #5B963E">Organization Contact Form</label>

            <div class="center-block">
                Please fill the form below and click Submit           
            </div>
        </div>
    </div>


    <dx:BootstrapFormLayout runat="server">
        <SettingsItemCaptions HorizontalAlign="Left" />
        <SettingsItemHelpTexts HorizontalAlign="Left" />
        <Items>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <%--<label>Welcome to Sensei-Assessments</label>--%>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>


            <dx:BootstrapLayoutItem Caption="Organization" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="" ColSpanMd="8">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtOrganizatioName" NullText="Name" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter Organization Name" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>


            <dx:BootstrapLayoutItem Caption="Contact Person" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtContactPersonName" NullText="Name" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter Contact person name" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtDesignation" NullText="Designation" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter contact person designation" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>



            <dx:BootstrapLayoutItem Caption="Participants" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox NullText="No. of Participants" ID="txtParticipants" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter no. of participants" />
                                <RegularExpression ValidationExpression="^[0-9]*$" ErrorText="Enter valid number" />

                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>



            <dx:BootstrapLayoutItem Caption="" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="8">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapMemo ID="txtProblem" NullText="Brief description of the problem you intend solving through this assessment, if any." runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" />
                            </ValidationSettings>
                        </dx:BootstrapMemo>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Contact" BeginRow="true" ColSpanMd="2">
                <ContentCollection>
                    <dx:ContentControl>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtEmail" NullText="Email Address" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter Email" />
                                <RegularExpression ErrorText="Please Enter Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>
            <dx:BootstrapLayoutItem Caption="" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox ID="txtPhone" NullText="Phone Number" runat="server">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Please Enter Phone Number" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>





        </Items>
    </dx:BootstrapFormLayout>



    <div class="col-md-6 col-md-offset-2" style="margin-top: 50px">

        <div class="form-group" style="margin-bottom: 15%">
            <label class="col-md-4"></label>
            <div class="col-md-4">

                <dx:BootstrapButton ID="btnSubmit" ClientInstanceName="btnSubmit" ValidationGroup="Validation" AutoPostBack="true" OnClick="btnSubmit_Click" runat="server" Text="Submit">



                    <SettingsBootstrap RenderOption="Primary" />
                    <CssClasses Control="form-control" />
                </dx:BootstrapButton>


            </div>
            <div class="col-md-4">
                <dx:BootstrapButton ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel">
                    <SettingsBootstrap RenderOption="Danger" />
                    <CssClasses Control="form-control" />

                </dx:BootstrapButton>
            </div>
        </div>


    </div>





</asp:Content>
