﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Technical-Adaptive-Assessment.aspx.cs" Inherits="coopors.Technical_Adaptive_Assessment" %>

    <%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

        <%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
     <%--       <asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
            </asp:Content>--%>

            <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                <%--     <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>--%>
             
           
                <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                <ContentTemplate>
              <div>
                <dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="IQ-EQ Assessment" HorizontalAlign="Center">
                    <PanelCollection>
                        <dx:PanelContent>


                            <dx:ASPxPageControl ClientInstanceName="carTabPage" ShowTabs="false" ID="carTabPage" runat="server" ActiveTabIndex="1" EnableHierarchyRecreation="True" Border-BorderStyle="None" Border-BorderWidth="0" ActiveTabStyle-Border-BorderStyle="None">
                                <TabPages>

                                   


                                    <dx:TabPage Visible="false">
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server">
                                                    <Items>

                                                        <dx:LayoutGroup Caption="Basic Information">
                                                            <Items>
                                                                <dx:LayoutItem Caption="Your Name">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxTextBox ID="txtName" ClientInstanceName="tName" Width="300px" runat="server" Text="">
                                                                                <ValidationSettings>
                                                                                    <RegularExpression ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" />
                                                                                    <RequiredField ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>

                                                                <dx:LayoutItem Caption="Company Name">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxTextBox ID="txtCompany" ClientInstanceName="tCom" Width="300px" runat="server" Text="">
                                                                                <ValidationSettings>
                                                                                    <RequiredField ErrorText="Enter company name." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>

                                                                <dx:LayoutItem Caption="Email">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxTextBox ID="txtEmail" ClientInstanceName="tEmail" Width="300px" runat="server" Text="">
                                                                                <ValidationSettings>
                                                                                    <RegularExpression ErrorText="Enter valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                                                                    <RequiredField ErrorText="Enter valid email address." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxTextBox>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>
                                                        </dx:LayoutGroup>
                                                    </Items>
                                                </dx:ASPxFormLayout>

                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                     <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <p>
                                                    Welcome to IQ-EQ Assessment. This assessment should take 10 to 15 Mts to complete. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used
                                                    towards your own development.

                                                </p>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>

                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="1/12. When you wake up in the morning, do you;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q1" ClientInstanceName="Q1" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Plan the activities for the day." Value="0" />
                                                                                    <dx:ListEditItem Text="Start working on what you feel needs to be done." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="2/12.When deciding what to wear to work, you select." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q2" ClientInstanceName="Q2" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Clothes based on the activities planned for the day." Value="0" />
                                                                                    <dx:ListEditItem Text="What you feel good wearing." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings  ErrorText="" ErrorTextPosition="Bottom" ErrorDisplayMode="None">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="3/12.When selecting a birthday present, you will select." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q3" ClientInstanceName="Q3" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Something you feel will make him/her happy." Value="0" />
                                                                                    <dx:ListEditItem Text="Something that is practical based on the age and gender ." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="4/12. When deciding what to eat, you select." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q4" ClientInstanceName="Q4" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="something you feel like eating depending on your mood at the time." Value="0" />
                                                                                    <dx:ListEditItem Text="food that is nutritionally valuable." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="5/12. At team meetings you prefer to discuss." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q5" ClientInstanceName="Q5" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Strategies, plans and processes." Value="0" />
                                                                                    <dx:ListEditItem Text="Relationships, communications and trust issues." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="6/12. The most important aspects of a plan for you is;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q6" ClientInstanceName="Q6" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Objectives, strategies, action plans, timelines and responsibilities." Value="0" />
                                                                                    <dx:ListEditItem Text="People who will implement the plan, values, relationships and corporate culture." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="7/12. More budgets should be allocated to;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q7" ClientInstanceName="Q7" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Buying new equipment and maintaining them." Value="0" />
                                                                                    <dx:ListEditItem Text="Developing people and building teamwork." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="8/12. When a team does not meet committments, you would first." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q8" ClientInstanceName="Q8" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Check if people supported each other to implement plans." Value="0" />
                                                                                    <dx:ListEditItem Text="Check if the strategy was implemented as planned." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="9/12. Organization success depends on;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q9" ClientInstanceName="Q9" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Excellent trust between each other. " Value="0" />
                                                                                    <dx:ListEditItem Text="Having the best people for respective functions." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>

                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="10/12. When appreciating someone, you would first;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q10" ClientInstanceName="Q10" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="Tell them what they did and contribution they made." Value="0" />
                                                                                    <dx:ListEditItem Text="Tell them how you felt." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>

                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="11/12. When someone is worried about a tough target;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q11" ClientInstanceName="Q11" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="You will listen and understand what’s bothering him/her." Value="0" />
                                                                                    <dx:ListEditItem Text="Give them reasons to help them not to worry." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>

                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                    <Items>
                                                        <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="12/12. When hiring someone to your team;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                            <Border BorderStyle="None"></Border>
                                                            <Items>
                                                                <dx:LayoutItem Caption="">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
                                                                                <Items>
                                                                                    <dx:ListEditItem Text="They should be technically competent" Value="0" />
                                                                                    <dx:ListEditItem Text="They should fit into the team." Value="1" />
                                                                                </Items>
                                                                                <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                    <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                                </ValidationSettings>
                                                                            </dx:ASPxRadioButtonList>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <%-- And other layout items --%>
                                                            </Items>

                                                            <SettingsItemCaptions HorizontalAlign="Right"></SettingsItemCaptions>
                                                        </dx:LayoutGroup>
                                                    </Items>

                                                    <Border BorderStyle="None"></Border>
                                                </dx:ASPxFormLayout>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>


                                    <dx:TabPage>
                                        <ContentCollection>
                                            <dx:ContentControl runat="server">
                                                <b> <h4 style="color:red;">The assessment is not complete yet, until you click the [FINISH] button below. Please click [Finish] to complete and submit your assessment. Once submitted please wait until we generate your report. Do not close, refresh or go back.</h4></b>
                                            </dx:ContentControl>
                                        </ContentCollection>
                                    </dx:TabPage>
                                </TabPages>

                                <ActiveTabStyle Border-BorderStyle="None"></ActiveTabStyle>

                                <Border BorderStyle="None" BorderWidth="0px"></Border>
                            </dx:ASPxPageControl>





                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxRoundPanel>

                <dx:ASPxProgressBar ClientInstanceName="ASPxProgressBar1" Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None" ShowPosition="false" runat="server" Maximum="12" Width="100%" Height="5px" Position="0" DisplayMode="Custom" EnableTheming="False"
                    DisplayFormatString="">
                    <IndicatorStyle BackColor="Lime">
                    </IndicatorStyle>
                    <RootStyle BackColor="White">
                    </RootStyle>
                    <Border BorderStyle="None"></Border>
                </dx:ASPxProgressBar>

                <br />

                    

                <div class="row">
                     <div class="col-6 col-sm-2">

                        <dx:BootstrapButton ID="ASPxButton2" Width="150px" ClientInstanceName="btnPre" runat="server" Text="Previous" AutoPostBack="false">
                          											<SettingsBootstrap RenderOption="Danger" />
		

                                 <ClientSideEvents Click="function(s,e){
                                    var activeTab = carTabPage.GetActiveTabIndex();
                                      if(activeTab==1)
                                     {
                                            window.location.href = 'AssessmentSelectingPage.aspx';         
                                     }
                                            
                               
                                else if(activeTab==2)
                                {
                                         
                                  carTabPage.SetActiveTabIndex(1);
                                     btnFinish.SetVisible(false);
                                     btn.SetVisible(true);
                                     btnPre.SetText('Main Menu');
                                     btn.SetText('Start');

                                }
                                 else if(activeTab == 3)
                                 {
                                   carTabPage.SetActiveTabIndex(2);
                                     btnFinish.SetVisible(false);
                                     btn.SetVisible(true);

                                  }
                               else if(activeTab == 4)
                                 {
                                   carTabPage.SetActiveTabIndex(3);
                                     btnFinish.SetVisible(false);
                                     btn.SetVisible(true);

                                  }
                               else if(activeTab == 5)
                                 {
                                   carTabPage.SetActiveTabIndex(4);
                                     btnFinish.SetVisible(false);
                                  }
                               else if(activeTab == 6)
                                 {
                                   carTabPage.SetActiveTabIndex(5);
                                     btn.SetVisible(true);

                                  }
                               else if(activeTab == 7)
                                 {
                                   carTabPage.SetActiveTabIndex(6);
                                     btnFinish.SetVisible(false);
                                                                              btn.SetVisible(true);

                                  }
                               else if(activeTab == 8)
                                 {
                                   carTabPage.SetActiveTabIndex(7);
                                     btnFinish.SetVisible(false);
                                                                              btn.SetVisible(true);

                                  }
                               else if(activeTab ==9)
                                 {
                                   carTabPage.SetActiveTabIndex(8);
                                     btnFinish.SetVisible(false);
                                                                              btn.SetVisible(true);

                                  }
                               else if(activeTab == 10)
                                 {
                                   carTabPage.SetActiveTabIndex(9);
                                     btnFinish.SetVisible(false);
                                                                              btn.SetVisible(true);

                                  }
                               else if(activeTab == 11)
                                 {
                                   carTabPage.SetActiveTabIndex(10);
                                     btnFinish.SetVisible(false);
                                      btn.SetVisible(true);

                                  }
                               else if(activeTab == 12)
                                 {
                                   carTabPage.SetActiveTabIndex(11);
                                     btnFinish.SetVisible(false);
                                         btn.SetVisible(true);
                                  }
                                else if(activeTab==13)
                                     {
                                     carTabPage.SetActiveTabIndex(12);
                                        btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                     }
                                     else if(activeTab==14)
                                     {
                                     carTabPage.SetActiveTabIndex(13);
                                       btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                     }
         
                               else
                               {
                               return false;
                               }
                                }" />
                        </dx:BootstrapButton>
                    </div>
                    <div class="col-6 col-sm-2">
                                                                 <dx:BootstrapButton Text="Finish" Width="150px" runat="server" ClientInstanceName="btnFinish" ID="btnNext" UseSubmitBehavior="false" OnClick="btnNext_Click">
                                                                     				<SettingsBootstrap RenderOption="Warning" />

                                                                     <ClientSideEvents Click="function(s, e) 
                                                                        {
                                                                              LoadingPanel.SetText('Generating report...');
                                                                            LoadingPanel.Show();
                                                                          //btnFinish.SetVisible(false);
                                                                          //btnPre.SetVisible(false);
                                                                          }" />
                                                                 </dx:BootstrapButton>


                        <dx:BootstrapButton ID="ASPxButton1" Width="150px" ClientInstanceName="btn" runat="server" Text="Next"   AutoPostBack="false" UseSubmitBehavior="false">
							<SettingsBootstrap RenderOption="Primary" />
                            <ClientSideEvents Click="function(s, e) 
                               {

                                Callback.PerformCallback();
                                LoadingPanel.SetText('Saving...Please wait...');
                                LoadingPanel.Show();
                               var activeTab = carTabPage.GetActiveTabIndex();

                                //ASPxRoundPanel1.SetHeaderText( activeTab);


                                if(activeTab == 0)
                                   {
                                        carTabPage.SetActiveTabIndex(1);
                                   }
                                else if(activeTab==1 )
                                   {
                                    btnPre.SetText('Previous');
                                btn.SetText('Next');
                                                                btnFinish.SetVisible(false);


                                  carTabPage.SetActiveTabIndex(2);
                                   }
                                 else if(activeTab == 2 && Q1.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(3);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 3 && Q2.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(4);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 4 && Q3.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(5);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 5 && Q4.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(6);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 6 && Q5.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(7);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 7 && Q6.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(8);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 8 && Q7.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(9);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 9 && Q8.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(10);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 10 && Q9.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(11);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 11 && Q10.GetIsValid())
                                  {
                                   carTabPage.SetActiveTabIndex(12);
                                                                btnFinish.SetVisible(false);

                                  }
                              else if(activeTab == 12 && Q11.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(13);
                                                                btnFinish.SetVisible(false);

                                  }
                               else if(activeTab == 13 && Q12.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(14);
                                    //btn.SetEnabled(false);
                               btn.SetVisible(false);
                                //btn.SetText('Finish');
                               btnFinish.SetVisible(true);
                               btnFinish.SetEnabled(true);
                                  }
                               else
                               {
                               return false;
                               }
               
                               if(activeTab>0 && activeTab<12)
                               {
                               
                               //ASPxRoundPanel1.SetHeaderText('IQ-EQ Assessment ' + activeTab + ' of 12');
                              
                               lblImportant.SetVisible(true);
                               }

                               if(activeTab==12)
                                {
                                lblImportant.SetVisible(false);
                                }
            
                                //data[carTabPage.GetActiveTabIndex()] =  carTabPage.GetActiveTabIndex();
                                //var d = data[0];
                                //alert(data[0]);

                                //return fun();
                                
                                
                               
                               }" />
                        </dx:BootstrapButton>

                    </div>

                   <%-- <div class="col-6 col-sm-6">
                        <dx:ASPxButton RenderMode="Danger" ID="btnSaveState" CausesValidation="false" Text="Save and continue later" OnClick="btnSaveState_Click"  runat="server">
                            <ClientSideEvents Click="function(s,e)
                                {

                                    LoadingPanel.Show();


                                }" />
                        </dx:ASPxButton> 

                    </div>--%>
                   
                </div>



                <br />
                <br />
            <dx:ASPxLabel runat="server" ID="ASPxLabel1" ForeColor="Red" ClientInstanceName="lblImportant" Font-Size="Small" Text="">
                </dx:ASPxLabel>

                <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="Callback" OnCallback="ASPxCallback1_Callback">
                    <ClientSideEvents CallbackComplete="function(s, e) { LoadingPanel.Hide(); }" />
                </dx:ASPxCallback>

                <dx:ASPxLoadingPanel Text="Please wait..." ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True">
                </dx:ASPxLoadingPanel>
    

           </div>
                    
             </ContentTemplate>
                    <Triggers>
                        <%--<asp:AsyncPostBackTrigger ControlID="ASPxButton1" EventName="Click" />--%>
                    </Triggers>
            </asp:UpdatePanel>
               <script type="text/javascript">
                   var activeTab = carTabPage.GetActiveTabIndex();
                    btnFinish.SetVisible(false);
                   if (activeTab == 1) {
                       btnPre.SetText('Main Menu');
                       btn.SetText('Start');
                   }
                   else
                   {
                       btnPre.SetText('Previous');
                       btn.SetText('Next');
                   }

                   

                   if (activeTab == 14) {
                        btn.SetVisible(false);
                   }
                   if (activeTab != 14) {
                       btnFinish.SetVisible(false);
                       btnFinish.SetEnabled(false);
                      
                   }
                      lblImportant.SetVisible(false);
                  
                   
                </script>

                 
            </asp:Content>