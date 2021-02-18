<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Unique-Ability-Test-Form.aspx.cs" Inherits="coopors.Unique_Ability_Test_Form" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
    <%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        </asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

            <dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="Natural Ability Assessment" HorizontalAlign="Center">
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
                                                Welcome to Natural Ability Assessment . This assessment should take 30-40 Mts to complete.
                                                There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development.
                                                
                                            </p>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>

                                <dx:TabPage>
                                    <ContentCollection>
                                        <dx:ContentControl runat="server">
                                            <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                <Items>
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="1/36.When finding a solution for complicated problems, what is most useful is my:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q11" ClientInstanceName="Q11" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="technical skills" Value="1" />
                                                                                <dx:ListEditItem Text="research skills" Value="2" />
                                                                                <dx:ListEditItem Text="organisational skills" Value="3" />
                                                                                <dx:ListEditItem Text="testing skills" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="technical skills" Value="1" />
                                                                                <dx:ListEditItem Text="research skills" Value="2" />
                                                                                <dx:ListEditItem Text="organisational skills" Value="3" />
                                                                                <dx:ListEditItem Text="testing skills" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
                                                    </dx:LayoutGroup>
                                                </Items>

                                                <Border BorderStyle="None"></Border>
                                            </dx:ASPxFormLayout>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:TabPage>

                                <dx:TabPage>
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <dx:ASPxFormLayout runat="server">
                                                <Items>

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="2/36.If I thought of doing something useful for humanity, I would:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q21" ClientInstanceName="Q21" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="ask questions about it" Value="1" />
                                                                                <dx:ListEditItem Text="sketch it" Value="2" />
                                                                                <dx:ListEditItem Text="convince others about it" Value="3" />
                                                                                <dx:ListEditItem Text="start doing it" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>


                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q22" ClientInstanceName="Q22" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                     <dx:ListEditItem Text="ask questions about it" Value="1" />
                                                                                <dx:ListEditItem Text="sketch it" Value="2" />
                                                                                <dx:ListEditItem Text="convince others about it" Value="3" />
                                                                                <dx:ListEditItem Text="start doing it" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
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
                                            <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                <Items>
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="3/36.When in the middle of a task, If I was asked to speed it up, I would:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q31" ClientInstanceName="Q31" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="move on avoiding some steps" Value="1" />
                                                                                <dx:ListEditItem Text="select a few things that can be done well" Value="2" />
                                                                                <dx:ListEditItem Text="continue to focus as best I can until time was up" Value="3" />
                                                                                <dx:ListEditItem Text="focus on ensuring good artistry" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q32" ClientInstanceName="Q32" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="move on avoiding some steps" Value="1" />
                                                                                <dx:ListEditItem Text="select a few things that can be done well" Value="2" />
                                                                                <dx:ListEditItem Text="continue to focus as best I can until time was up" Value="3" />
                                                                                <dx:ListEditItem Text="focus on ensuring good artistry" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="4/36.When I try to avoid doing something not interesting to me, my reasoning would be:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q41" ClientInstanceName="Q41" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="coherent" Value="1" />
                                                                                <dx:ListEditItem Text="distinctive" Value="2" />
                                                                                <dx:ListEditItem Text="comprehensive " Value="3" />
                                                                                <dx:ListEditItem Text="practical" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q42" ClientInstanceName="Q42" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                               <dx:ListEditItem Text="coherent" Value="1" />
                                                                                <dx:ListEditItem Text="distinctive" Value="2" />
                                                                                <dx:ListEditItem Text="comprehensive " Value="3" />
                                                                                <dx:ListEditItem Text="practical" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="5/36.I am better at winning competitions related to:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q51" ClientInstanceName="Q51" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="artistry" Value="1" />
                                                                                <dx:ListEditItem Text="elegance" Value="2" />
                                                                                <dx:ListEditItem Text="novelty" Value="3" />
                                                                                <dx:ListEditItem Text="accuracy" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q52" ClientInstanceName="Q52" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="artistry" Value="1" />
                                                                                <dx:ListEditItem Text="elegance" Value="2" />
                                                                                <dx:ListEditItem Text="novelty" Value="3" />
                                                                                <dx:ListEditItem Text="accuracy" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="6/36.When producing my best work, I would:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q61" ClientInstanceName="Q61" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="re-check" Value="1" />
                                                                                <dx:ListEditItem Text="rehearse" Value="2" />
                                                                                <dx:ListEditItem Text="dare" Value="3" />
                                                                                <dx:ListEditItem Text="explore" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q62" ClientInstanceName="Q62" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="re-check" Value="1" />
                                                                                <dx:ListEditItem Text="rehearse" Value="2" />
                                                                                <dx:ListEditItem Text="dare" Value="3" />
                                                                                <dx:ListEditItem Text="explore" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="7/36. When I did something wrong, it was usually because I was:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q71" ClientInstanceName="Q71" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="uninterested" Value="1" />
                                                                                <dx:ListEditItem Text="interfered" Value="2" />
                                                                                <dx:ListEditItem Text="opposed" Value="3" />
                                                                                <dx:ListEditItem Text="inquisitive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q72" ClientInstanceName="Q72" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                             <dx:ListEditItem Text="uninterested" Value="1" />
                                                                                <dx:ListEditItem Text="interfered" Value="2" />
                                                                                <dx:ListEditItem Text="opposed" Value="3" />
                                                                                <dx:ListEditItem Text="inquisitive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="8/36.When I was making a decision about changing a method I use, I would check:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q81" ClientInstanceName="Q81" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="how practical it is" Value="1" />
                                                                                <dx:ListEditItem Text="How easy it is to understand" Value="2" />
                                                                                <dx:ListEditItem Text="the impact it can create" Value="3" />
                                                                                <dx:ListEditItem Text="how long lasting it is" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q82" ClientInstanceName="Q82" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="how practical it is" Value="1" />
                                                                                <dx:ListEditItem Text="How easy it is to understand" Value="2" />
                                                                                <dx:ListEditItem Text="the impact it can create" Value="3" />
                                                                                <dx:ListEditItem Text="how long lasting it is" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="9/36.As a member of a group, I prefer to:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q91" ClientInstanceName="Q91" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="take action" Value="1" />
                                                                                <dx:ListEditItem Text="provide ideas" Value="2" />
                                                                                <dx:ListEditItem Text="improve productivity" Value="3" />
                                                                                <dx:ListEditItem Text="focus on the outcome" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q92" ClientInstanceName="Q92" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="take action" Value="1" />
                                                                                <dx:ListEditItem Text="provide ideas" Value="2" />
                                                                                <dx:ListEditItem Text="improve productivity" Value="3" />
                                                                                <dx:ListEditItem Text="focus on the outcome" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="10/36.My preferred type of work should be related to:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q101" ClientInstanceName="Q101" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="providing security" Value="1" />
                                                                                <dx:ListEditItem Text="improving infrastructure" Value="2" />
                                                                                <dx:ListEditItem Text="generating revenue" Value="3" />
                                                                                <dx:ListEditItem Text="collecting information" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q102" ClientInstanceName="Q102" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                               <dx:ListEditItem Text="providing security" Value="1" />
                                                                                <dx:ListEditItem Text="improving infrastructure" Value="2" />
                                                                                <dx:ListEditItem Text="generating revenue" Value="3" />
                                                                                <dx:ListEditItem Text="collecting information" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="11/36.In my work I dislike having to:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q111" ClientInstanceName="Q111" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="make assumptions" Value="1" />
                                                                                <dx:ListEditItem Text="have meetings" Value="2" />
                                                                                <dx:ListEditItem Text="work with equipment" Value="3" />
                                                                                <dx:ListEditItem Text="stop what I am doing" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q112" ClientInstanceName="Q112" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                               <dx:ListEditItem Text="make assumptions" Value="1" />
                                                                                <dx:ListEditItem Text="have meetings" Value="2" />
                                                                                <dx:ListEditItem Text="work with equipment" Value="3" />
                                                                                <dx:ListEditItem Text="stop what I am doing" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="12/36.If I am rewarded for creative work, it is because:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q121" ClientInstanceName="Q121" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="simple and attractive designs" Value="1" />
                                                                                <dx:ListEditItem Text="practical view points or useful features" Value="2" />
                                                                                <dx:ListEditItem Text="colour coordination" Value="3" />
                                                                                <dx:ListEditItem Text="structures and carvings" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q122" ClientInstanceName="Q122" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                    <dx:ListEditItem Text="simple and attractive designs" Value="1" />
                                                                                <dx:ListEditItem Text="practical view points or useful features" Value="2" />
                                                                                <dx:ListEditItem Text="colour coordination" Value="3" />
                                                                                <dx:ListEditItem Text="structures and carvings" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="13/36.Those close to me tell me that I am:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q131" ClientInstanceName="Q131" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="Moody" Value="1" />
                                                                                <dx:ListEditItem Text="Reckless" Value="2" />
                                                                                <dx:ListEditItem Text="Detailed" Value="3" />
                                                                                <dx:ListEditItem Text="predictable" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q132" ClientInstanceName="Q132" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                     <dx:ListEditItem Text="Moody" Value="1" />
                                                                                <dx:ListEditItem Text="Reckless" Value="2" />
                                                                                <dx:ListEditItem Text="Detailed" Value="3" />
                                                                                <dx:ListEditItem Text="predictable" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="14/36.Those close to me tell me that I am talented in:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q141" ClientInstanceName="Q141" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="report writing" Value="1" />
                                                                                <dx:ListEditItem Text="creating designs" Value="2" />
                                                                                <dx:ListEditItem Text="making presentation" Value="3" />
                                                                                <dx:ListEditItem Text="making structures " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q142" ClientInstanceName="Q142" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="report writing" Value="1" />
                                                                                <dx:ListEditItem Text="creating designs" Value="2" />
                                                                                <dx:ListEditItem Text="making presentation" Value="3" />
                                                                                <dx:ListEditItem Text="making structures " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="15/36.When I am entrusted with an important task, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q151" ClientInstanceName="Q151" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="achieve standards set" Value="1" />
                                                                                <dx:ListEditItem Text="ensure the use of the best inputs" Value="2" />
                                                                                <dx:ListEditItem Text="improve productivity and reduce cost" Value="3" />
                                                                                <dx:ListEditItem Text="bring in my originality" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q152" ClientInstanceName="Q152" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                  <dx:ListEditItem Text="achieve standards set" Value="1" />
                                                                                <dx:ListEditItem Text="ensure the use of the best inputs" Value="2" />
                                                                                <dx:ListEditItem Text="improve productivity and reduce cost" Value="3" />
                                                                                <dx:ListEditItem Text="bring in my originality" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="16/36.when I work at my best ability, the work I do are usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q161" ClientInstanceName="Q161" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="diverse" Value="1" />
                                                                                <dx:ListEditItem Text="organised" Value="2" />
                                                                                <dx:ListEditItem Text="investigated" Value="3" />
                                                                                <dx:ListEditItem Text="validated" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q162" ClientInstanceName="Q162" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                    <dx:ListEditItem Text="diverse" Value="1" />
                                                                                <dx:ListEditItem Text="organised" Value="2" />
                                                                                <dx:ListEditItem Text="investigated" Value="3" />
                                                                                <dx:ListEditItem Text="validated" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="17/36.When establishing  criteria, I ensure they are:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q171" ClientInstanceName="Q171" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="evident" Value="1" />
                                                                                <dx:ListEditItem Text="constant" Value="2" />
                                                                                <dx:ListEditItem Text="adaptable" Value="3" />
                                                                                <dx:ListEditItem Text="quantifiable" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q172" ClientInstanceName="Q172" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="evident" Value="1" />
                                                                                <dx:ListEditItem Text="constant" Value="2" />
                                                                                <dx:ListEditItem Text="adaptable" Value="3" />
                                                                                <dx:ListEditItem Text="quantifiable" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="18/36.I generally get improvement feedback for being:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q181" ClientInstanceName="Q181" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="too irritated" Value="1" />
                                                                                <dx:ListEditItem Text="too emotional" Value="2" />
                                                                                <dx:ListEditItem Text="too organised" Value="3" />
                                                                                <dx:ListEditItem Text="too aggressive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q182" ClientInstanceName="Q182" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                              <dx:ListEditItem Text="too irritated" Value="1" />
                                                                                <dx:ListEditItem Text="too emotional" Value="2" />
                                                                                <dx:ListEditItem Text="too organised" Value="3" />
                                                                                <dx:ListEditItem Text="too aggressive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="19/36. I would begin important projects by first:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q191" ClientInstanceName="Q191" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="researching" Value="1" />
                                                                                <dx:ListEditItem Text="designing" Value="2" />
                                                                                <dx:ListEditItem Text="creating" Value="3" />
                                                                                <dx:ListEditItem Text="preparing" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q192" ClientInstanceName="Q192" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="researching" Value="1" />
                                                                                <dx:ListEditItem Text="designing" Value="2" />
                                                                                <dx:ListEditItem Text="creating" Value="3" />
                                                                                <dx:ListEditItem Text="preparing" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="20/36.when I try to understand a new item, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q201" ClientInstanceName="Q201" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="examine the manufacturing process" Value="1" />
                                                                                <dx:ListEditItem Text="Think of a methodical approach" Value="2" />
                                                                                <dx:ListEditItem Text="inspect it thoroughly" Value="3" />
                                                                                <dx:ListEditItem Text="evaluate it based on first impressions" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q202" ClientInstanceName="Q202" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="examine the manufacturing process" Value="1" />
                                                                                <dx:ListEditItem Text="Think of a methodical approach" Value="2" />
                                                                                <dx:ListEditItem Text="inspect it thoroughly" Value="3" />
                                                                                <dx:ListEditItem Text="evaluate it based on first impressions" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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


                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="21/36.When describing new ideas, I am usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q211" ClientInstanceName="Q211" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="unstructured" Value="1" />
                                                                                <dx:ListEditItem Text="structured" Value="2" />
                                                                                <dx:ListEditItem Text="practical" Value="3" />
                                                                                <dx:ListEditItem Text="comprehensive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q212" ClientInstanceName="Q212" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="unstructured" Value="1" />
                                                                                <dx:ListEditItem Text="structured" Value="2" />
                                                                                <dx:ListEditItem Text="practical" Value="3" />
                                                                                <dx:ListEditItem Text="comprehensive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="22/36.When introducing new  ideas, I usually use:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q221" ClientInstanceName="Q221" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="published evidence" Value="1" />
                                                                                <dx:ListEditItem Text="relevant models and samples" Value="2" />
                                                                                <dx:ListEditItem Text="innovative communication techniques " Value="3" />
                                                                                <dx:ListEditItem Text="present data using visual aids such as graphs" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q222" ClientInstanceName="Q222" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                        <dx:ListEditItem Text="published evidence" Value="1" />
                                                                                <dx:ListEditItem Text="relevant models and samples" Value="2" />
                                                                                <dx:ListEditItem Text="innovative communication techniques " Value="3" />
                                                                                <dx:ListEditItem Text="present data using visual aids such as graphs" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="23.When collecting data, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q231" ClientInstanceName="Q231" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="Arrange it in a clear layout" Value="1" />
                                                                                <dx:ListEditItem Text="go deep in to supporting data " Value="2" />
                                                                                <dx:ListEditItem Text="explore various sources and channels " Value="3" />
                                                                                <dx:ListEditItem Text="explore physically" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q232" ClientInstanceName="Q232" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="Arrange it in a clear layout" Value="1" />
                                                                                <dx:ListEditItem Text="go deep in to supporting data " Value="2" />
                                                                                <dx:ListEditItem Text="explore various sources and channels " Value="3" />
                                                                                <dx:ListEditItem Text="explore physically" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="24/36.When explaining about a place I have been to, I would usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q241" ClientInstanceName="Q241" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="talk about the access to the place" Value="1" />
                                                                                <dx:ListEditItem Text="describe interesting aspects related to the place" Value="2" />
                                                                                <dx:ListEditItem Text="highlight quality of infrastructure in the place" Value="3" />
                                                                                <dx:ListEditItem Text="narrate the experience of being in the place " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q242" ClientInstanceName="Q242" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                        <dx:ListEditItem Text="talk about the access to the place" Value="1" />
                                                                                <dx:ListEditItem Text="describe interesting aspects related to the place" Value="2" />
                                                                                <dx:ListEditItem Text="highlight quality of infrastructure in the place" Value="3" />
                                                                                <dx:ListEditItem Text="narrate the experience of being in the place " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="25/36.I an usually given credit for:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q251" ClientInstanceName="Q251" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="getting bright ideas quickly" Value="1" />
                                                                                <dx:ListEditItem Text="stamina and persistence" Value="2" />
                                                                                <dx:ListEditItem Text="reliability and creativity " Value="3" />
                                                                                <dx:ListEditItem Text="assessing the accuracy of data" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q252" ClientInstanceName="Q252" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="getting bright ideas quickly" Value="1" />
                                                                                <dx:ListEditItem Text="stamina and persistence" Value="2" />
                                                                                <dx:ListEditItem Text="reliability and creativity " Value="3" />
                                                                                <dx:ListEditItem Text="assessing the accuracy of data" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="26/36.if I am able to decide on the way of working, I would: " GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q261" ClientInstanceName="Q261" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="do everything on my own" Value="1" />
                                                                                <dx:ListEditItem Text="have a team and use their ideas" Value="2" />
                                                                                <dx:ListEditItem Text="hand over responsibilities to others" Value="3" />
                                                                                <dx:ListEditItem Text="set up process to maintain control over the work" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q262" ClientInstanceName="Q262" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="do everything on my own" Value="1" />
                                                                                <dx:ListEditItem Text="have a team and use their ideas" Value="2" />
                                                                                <dx:ListEditItem Text="hand over responsibilities to others" Value="3" />
                                                                                <dx:ListEditItem Text="set up process to maintain control over the work" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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


                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="27/36.if I am able to decide on the way of working, I would:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q271" ClientInstanceName="Q271" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="decide what is most important" Value="1" />
                                                                                <dx:ListEditItem Text="prepare well in advance" Value="2" />
                                                                                <dx:ListEditItem Text="ensure good workmanship" Value="3" />
                                                                                <dx:ListEditItem Text="deal with the biggest issues we encounter" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q272" ClientInstanceName="Q272" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="decide what is most important" Value="1" />
                                                                                <dx:ListEditItem Text="prepare well in advance" Value="2" />
                                                                                <dx:ListEditItem Text="ensure good workmanship" Value="3" />
                                                                                <dx:ListEditItem Text="deal with the biggest issues we encounter" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="28/36.When focusing on one task, I am usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q281" ClientInstanceName="Q281" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="productive" Value="1" />
                                                                                <dx:ListEditItem Text="spontaneous" Value="2" />
                                                                                <dx:ListEditItem Text="competent" Value="3" />
                                                                                <dx:ListEditItem Text="comprehensive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q282" ClientInstanceName="Q282" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="productive" Value="1" />
                                                                                <dx:ListEditItem Text="spontaneous" Value="2" />
                                                                                <dx:ListEditItem Text="competent" Value="3" />
                                                                                <dx:ListEditItem Text="comprehensive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="29/36.When trying to solve a riddle, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q291" ClientInstanceName="Q291" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="set a timeframe" Value="1" />
                                                                                <dx:ListEditItem Text="construct the components" Value="2" />
                                                                                <dx:ListEditItem Text="tap in to ideas from my experiences " Value="3" />
                                                                                <dx:ListEditItem Text="evaluate the possible methods of solving it " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q292" ClientInstanceName="Q292" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                               <dx:ListEditItem Text="set a timeframe" Value="1" />
                                                                                <dx:ListEditItem Text="construct the components" Value="2" />
                                                                                <dx:ListEditItem Text="tap in to ideas from my experiences " Value="3" />
                                                                                <dx:ListEditItem Text="evaluate the possible methods of solving it " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="30/36.When I have to prove something, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q301" ClientInstanceName="Q301" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="use a relevant format" Value="1" />
                                                                                <dx:ListEditItem Text="describe the process that was used" Value="2" />
                                                                                <dx:ListEditItem Text="highlight the pluses and minuses" Value="3" />
                                                                                <dx:ListEditItem Text="describe the usefulness " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q302" ClientInstanceName="Q302" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                   <dx:ListEditItem Text="use a relevant format" Value="1" />
                                                                                <dx:ListEditItem Text="describe the process that was used" Value="2" />
                                                                                <dx:ListEditItem Text="highlight the pluses and minuses" Value="3" />
                                                                                <dx:ListEditItem Text="describe the usefulness " Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="31/36.When I am allowed to do things on my own, I am usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>

                                                                        <dx:ASPxRadioButtonList ID="Q311" ClientInstanceName="Q311" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="true-to-life" Value="1" />
                                                                                <dx:ListEditItem Text="practical" Value="2" />
                                                                                <dx:ListEditItem Text="prompt" Value="3" />
                                                                                <dx:ListEditItem Text="careful" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>

                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q312" ClientInstanceName="Q312" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                              <dx:ListEditItem Text="true-to-life" Value="1" />
                                                                                <dx:ListEditItem Text="practical" Value="2" />
                                                                                <dx:ListEditItem Text="prompt" Value="3" />
                                                                                <dx:ListEditItem Text="careful" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
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
                                            <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                                <Items>

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="32/36.When I do a demonstration, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q321" ClientInstanceName="Q321" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="try to be methodical" Value="1" />
                                                                                <dx:ListEditItem Text="make it unique" Value="2" />
                                                                                <dx:ListEditItem Text="try proven methods" Value="3" />
                                                                                <dx:ListEditItem Text="do the preparations on my own" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q322" ClientInstanceName="Q322" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="try to be methodical" Value="1" />
                                                                                <dx:ListEditItem Text="make it unique" Value="2" />
                                                                                <dx:ListEditItem Text="try proven methods" Value="3" />
                                                                                <dx:ListEditItem Text="do the preparations on my own" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="33/36.If a system failed, I usually:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q331" ClientInstanceName="Q331" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="find an alternate method" Value="1" />
                                                                                <dx:ListEditItem Text="fix it" Value="2" />
                                                                                <dx:ListEditItem Text="investigate" Value="3" />
                                                                                <dx:ListEditItem Text="inform those concerned" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q332" ClientInstanceName="Q332" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="find an alternate method" Value="1" />
                                                                                <dx:ListEditItem Text="fix it" Value="2" />
                                                                                <dx:ListEditItem Text="investigate" Value="3" />
                                                                                <dx:ListEditItem Text="inform those concerned" Value="4" />
                                                                            </Items>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="34/36.I would usually learn new ways of doing things by:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q341" ClientInstanceName="Q341" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="trial and error" Value="1" />
                                                                                <dx:ListEditItem Text="experimenting" Value="2" />
                                                                                <dx:ListEditItem Text="studying" Value="3" />
                                                                                <dx:ListEditItem Text="learning from others who are experienced" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q342" ClientInstanceName="Q342" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                               <dx:ListEditItem Text="trial and error" Value="1" />
                                                                                <dx:ListEditItem Text="experimenting" Value="2" />
                                                                                <dx:ListEditItem Text="studying" Value="3" />
                                                                                <dx:ListEditItem Text="learning from others who are experienced" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="35/36.when teaching others about something new, I use methods that are:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q351" ClientInstanceName="Q351" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="stable" Value="1" />
                                                                                <dx:ListEditItem Text="thorough" Value="2" />
                                                                                <dx:ListEditItem Text="synchronized" Value="3" />
                                                                                <dx:ListEditItem Text="instinctive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q352" ClientInstanceName="Q352" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                 <dx:ListEditItem Text="stable" Value="1" />
                                                                                <dx:ListEditItem Text="thorough" Value="2" />
                                                                                <dx:ListEditItem Text="synchronized" Value="3" />
                                                                                <dx:ListEditItem Text="instinctive" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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
                                                    <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="36/36.If and when I run my own business, I would:" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                        <Border BorderStyle="None"></Border>
                                                        <Items>
                                                            <dx:LayoutItem Caption="MOST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q361" ClientInstanceName="Q361" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                <dx:ListEditItem Text="ensure sustained results" Value="1" />
                                                                                <dx:ListEditItem Text="set achievable targets " Value="2" />
                                                                                <dx:ListEditItem Text="keep improving and innovating new products" Value="3" />
                                                                                <dx:ListEditItem Text="ensure the best craftsmanship" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                            <dx:LayoutItem Caption="LEAST">
                                                                <LayoutItemNestedControlCollection>
                                                                    <dx:LayoutItemNestedControlContainer>


                                                                        <dx:ASPxRadioButtonList ID="Q362" ClientInstanceName="Q362" runat="server" RepeatDirection="Vertical">
                                                                            <Items>
                                                                                       <dx:ListEditItem Text="ensure sustained results" Value="1" />
                                                                                <dx:ListEditItem Text="set achievable targets " Value="2" />
                                                                                <dx:ListEditItem Text="keep improving and innovating new products" Value="3" />
                                                                                <dx:ListEditItem Text="ensure the best craftsmanship" Value="4" />
                                                                            </Items>
                                                                            <ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
                                                                                <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                                                            </ValidationSettings>
                                                                        </dx:ASPxRadioButtonList>

                                                                    </dx:LayoutItemNestedControlContainer>
                                                                </LayoutItemNestedControlCollection>
                                                            </dx:LayoutItem>
                                                        </Items>
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

            <dx:ASPxProgressBar Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None" ShowPosition="false" runat="server" Maximum="36" Width="100%" Height="5px" Position="0" DisplayMode="Custom" EnableTheming="False">
                <IndicatorStyle BackColor="Lime">
                </IndicatorStyle>
                <RootStyle BackColor="White">
                </RootStyle>
                <Border BorderStyle="None"></Border>
            </dx:ASPxProgressBar>

            <br />

            

            <div class="row">
                <div class="col-6 col-sm-2">
                    <dx:BootstrapButton ID="ASPxButton2" Width="150px" ClientInstanceName="btnPre" runat="server" Text="Previous"  AutoPostBack="false">
                        <SettingsBootstrap RenderOption="Danger" />
                        <ClientSideEvents Click="function(s, e) 
                               {
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
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 6)
                                 {
                                   carTabPage.SetActiveTabIndex(5);
                            btnFinish.SetVisible(false);
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
                               else if(activeTab == 9)
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
                               else if(activeTab == 13)
                                 {
                                   carTabPage.SetActiveTabIndex(12);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 14)
                                 {
                                   carTabPage.SetActiveTabIndex(13);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 15)
                                 {
                                   carTabPage.SetActiveTabIndex(14);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 16)
                                 {
                                   carTabPage.SetActiveTabIndex(15);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 17)
                                 {
                                   carTabPage.SetActiveTabIndex(16);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 18)
                                 {
                                   carTabPage.SetActiveTabIndex(17);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 19)
                                 {
                                   carTabPage.SetActiveTabIndex(18);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 20)
                                 {
                                   carTabPage.SetActiveTabIndex(19);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 21)
                                 {
                                   carTabPage.SetActiveTabIndex(20);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 22)
                                 {
                                   carTabPage.SetActiveTabIndex(21);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 23)
                                 {
                                   carTabPage.SetActiveTabIndex(22);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 24)
                                 {
                                   carTabPage.SetActiveTabIndex(23);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 25)
                                 {
                                   carTabPage.SetActiveTabIndex(24);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 26)
                                 {
                                   carTabPage.SetActiveTabIndex(25);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 27)
                                 {
                                   carTabPage.SetActiveTabIndex(26);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 28)
                                 {
                                   carTabPage.SetActiveTabIndex(27);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 29)
                                 {
                                   carTabPage.SetActiveTabIndex(28);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                                else if(activeTab == 30)
                                 {
                                   carTabPage.SetActiveTabIndex(29);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 31)
                                 {
                                   carTabPage.SetActiveTabIndex(30);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 32)
                                 {
                                   carTabPage.SetActiveTabIndex(31);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                                else if(activeTab == 33)
                                 {
                                   carTabPage.SetActiveTabIndex(32);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 34)
                                 {
                                   carTabPage.SetActiveTabIndex(33);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 35)
                                 {
                                   carTabPage.SetActiveTabIndex(34);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 36)
                                 {
                                   carTabPage.SetActiveTabIndex(35);
                            btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                               else if(activeTab == 37)
                                 {
                                   carTabPage.SetActiveTabIndex(36);
                                    btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                            else if(activeTab == 38)
                                 {
                                   carTabPage.SetActiveTabIndex(37);
                                    btnFinish.SetVisible(false);
                                      btn.SetVisible(true);
                                  }
                         
                               else
                               {
                               alert('Please make sure that:\n1. You selected one item from each section.\n2. Same item is not selected for both sections.\n');
                               return false;
                               }
               
                             if(activeTab>0 && activeTab<37)
                               {
                               
                               //ASPxRoundPanel1.SetHeaderText('Unique Ability Assessment ' + activeTab + ' of 36');
                               lblImportant.SetVisible(true);
                               }

                               if(activeTab==37)
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
                <div class="col-6 col-sm-2">
                    <dx:BootstrapButton Text="Finish" Width="150px" runat="server" ClientInstanceName="btnFinish" ID="btnNext" OnClick="btnNext_Click">
                        <SettingsBootstrap RenderOption="Warning" />
                        <ClientSideEvents Click="function(s, e) {
                            LoadingPanel.SetText('Generating report...');
                LoadingPanel.Show();
                btnFinish.SetVisible(false);
                btnPre.SetVisible(false);
}" />
            </dx:BootstrapButton>
                    <dx:BootstrapButton ID="ASPxButton1" Width="150px" ClientInstanceName="btn" runat="server" Text="Next"   AutoPostBack="false" UseSubmitBehavior="false"  >
                        							<SettingsBootstrap RenderOption="Primary" />

                        <ClientSideEvents Click="function(s, e) 
                               {

                             Callback.PerformCallback();
                            LoadingPanel.SetText('Saving...Please wait...');
                                LoadingPanel.Show();

                               var activeTab = carTabPage.GetActiveTabIndex();
                              
                                if(activeTab == 0)
                                     {
                                        carTabPage.SetActiveTabIndex(1);
                                     }
                                else if(activeTab==1 )
                                {
                                         btnPre.SetText('Previous');
                                btn.SetText('Next');
                                  carTabPage.SetActiveTabIndex(2);
                                }
                                 else if(activeTab == 2 && Q11.GetIsValid() && Q12.GetIsValid() && Q11.GetSelectedIndex() != Q12.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(3);
                                  }
                               else if(activeTab == 3 && Q21.GetIsValid() && Q22.GetIsValid() && Q21.GetSelectedIndex() != Q22.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(4);
                                  }
                               else if(activeTab == 4  && Q31.GetIsValid() && Q32.GetIsValid() && Q31.GetSelectedIndex() != Q32.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(5);
                                  }
                               else if(activeTab == 5  && Q41.GetIsValid() && Q42.GetIsValid() && Q41.GetSelectedIndex() != Q42.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(6);
                                  }
                               else if(activeTab == 6  && Q51.GetIsValid() && Q52.GetIsValid() && Q51.GetSelectedIndex() != Q52.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(7);
                                  }
                               else if(activeTab == 7  && Q61.GetIsValid() && Q62.GetIsValid() && Q61.GetSelectedIndex() != Q62.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(8);
                                  }
                               else if(activeTab == 8  && Q71.GetIsValid() && Q72.GetIsValid() && Q71.GetSelectedIndex() != Q72.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(9);
                                  }
                               else if(activeTab == 9  && Q81.GetIsValid() && Q82.GetIsValid() && Q81.GetSelectedIndex() != Q82.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(10);
                                  }
                               else if(activeTab == 10  && Q91.GetIsValid() && Q92.GetIsValid() && Q91.GetSelectedIndex() != Q92.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(11);
                                  }
                               else if(activeTab == 11  && Q101.GetIsValid() && Q102.GetIsValid() && Q101.GetSelectedIndex() != Q102.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(12);
                                  }
                               else if(activeTab == 12  && Q111.GetIsValid() && Q112.GetIsValid() && Q111.GetSelectedIndex() != Q112.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(13);
                                  }
                               else if(activeTab == 13  && Q121.GetIsValid() && Q122.GetIsValid() && Q121.GetSelectedIndex() != Q122.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(14);
                                  }
                               else if(activeTab == 14  && Q131.GetIsValid() && Q132.GetIsValid() && Q131.GetSelectedIndex() != Q132.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(15);
                                  }
                               else if(activeTab == 15  && Q141.GetIsValid() && Q142.GetIsValid() && Q141.GetSelectedIndex() != Q142.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(16);
                                  }
                               else if(activeTab == 16  && Q151.GetIsValid() && Q152.GetIsValid() && Q151.GetSelectedIndex() != Q152.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(17);
                                  }
                               else if(activeTab == 17  && Q161.GetIsValid() && Q162.GetIsValid() && Q161.GetSelectedIndex() != Q162.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(18);
                                  }
                               else if(activeTab == 18  && Q171.GetIsValid() && Q172.GetIsValid() && Q171.GetSelectedIndex() != Q172.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(19);
                                  }
                               else if(activeTab == 19  && Q181.GetIsValid() && Q182.GetIsValid() && Q181.GetSelectedIndex() != Q182.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(20);
                                  }
                               else if(activeTab == 20  && Q191.GetIsValid() && Q192.GetIsValid() && Q191.GetSelectedIndex() != Q192.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(21);
                                  }
                               else if(activeTab == 21 && Q201.GetIsValid() && Q202.GetIsValid() && Q201.GetSelectedIndex() != Q202.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(22);
                                  }
                               else if(activeTab == 22 && Q211.GetIsValid() && Q212.GetIsValid() && Q211.GetSelectedIndex() != Q212.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(23);
                                  }
                               else if(activeTab == 23 && Q221.GetIsValid() && Q222.GetIsValid() && Q221.GetSelectedIndex() != Q222.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(24);
                                  }
                               else if(activeTab == 24 && Q231.GetIsValid() && Q232.GetIsValid() && Q231.GetSelectedIndex() != Q232.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(25);
                                  }
                               else if(activeTab == 25 && Q241.GetIsValid() && Q242.GetIsValid() && Q241.GetSelectedIndex() != Q242.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(26);
                                  }
                               else if(activeTab == 26 && Q251.GetIsValid() && Q252.GetIsValid() && Q251.GetSelectedIndex() != Q252.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(27);
                                  }
                               else if(activeTab == 27 && Q261.GetIsValid() && Q262.GetIsValid() && Q261.GetSelectedIndex() != Q262.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(28);
                                  }
                               else if(activeTab == 28 && Q271.GetIsValid() && Q272.GetIsValid() && Q271.GetSelectedIndex() != Q272.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(29);
                                  }
                                else if(activeTab == 29 && Q281.GetIsValid() && Q282.GetIsValid() && Q281.GetSelectedIndex() != Q282.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(30);
                                  }
                               else if(activeTab == 30 && Q291.GetIsValid() && Q292.GetIsValid() && Q291.GetSelectedIndex() != Q292.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(31);
                                  }
                               else if(activeTab == 31 && Q301.GetIsValid() && Q302.GetIsValid() && Q301.GetSelectedIndex() != Q302.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(32);
                                  }
                                else if(activeTab == 32 && Q311.GetIsValid() && Q312.GetIsValid() && Q311.GetSelectedIndex() != Q312.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(33);
                                  }
                               else if(activeTab == 33 && Q321.GetIsValid() && Q322.GetIsValid() && Q321.GetSelectedIndex() != Q322.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(34);
                                  }
                               else if(activeTab == 34 && Q331.GetIsValid() && Q332.GetIsValid() && Q331.GetSelectedIndex() != Q332.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(35);
                                  }
                               else if(activeTab == 35 && Q341.GetIsValid() && Q342.GetIsValid() && Q341.GetSelectedIndex() != Q342.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(36);
                                  }
                               else if(activeTab == 36 && Q351.GetIsValid() && Q352.GetIsValid() && Q351.GetSelectedIndex() != Q352.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(37);
                                     //btn.SetVisible(false);
                                    //btnFinish.SetVisible(true);
                                    //btnFinish.SetEnabled(true);
                                  }
                                else if(activeTab == 37 && Q361.GetIsValid() && Q362.GetIsValid() && Q361.GetSelectedIndex() != Q362.GetSelectedIndex())
                                 {
                                   carTabPage.SetActiveTabIndex(38);
                                    //btn.SetEnabled(false);
                                   btn.SetVisible(false);
                                   btnFinish.SetVisible(true);
                                   btnFinish.SetEnabled(true);
                                  }
                               else
                               {
                               alert('Please make sure that:\n1. You selected one item from each section.\n2. Same item is not selected for both sections.\n');
                               return false;
                               }
               
                             if(activeTab>0 && activeTab<37)
                               {
                               
                               //ASPxRoundPanel1.SetHeaderText('Natural Ability Assessment ' + activeTab + ' of 36');
                               lblImportant.SetVisible(true);
                               }

                               if(activeTab==37)
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

              <%--  <div class="col-6 col-sm-6">
                        <dx:ASPxButton RenderMode="Danger" CausesValidation="false" ID="btnSaveState" Text="Save and cotinue later" OnClick="btnSaveState_Click"  runat="server">
                            <ClientSideEvents Click="function(s,e)
                                {

                                    LoadingPanel.Show();


                                }" />
                        </dx:ASPxButton> 

                    </div>--%>
            </div>



            <br />
            <br />
            <dx:ASPxLabel runat="server" ID="ASPxLabel1" ForeColor="Red" ClientInstanceName="lblImportant" Font-Size="Small" Text=""></dx:ASPxLabel>

            <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="Callback" OnCallback="ASPxCallback1_Callback">
                <ClientSideEvents CallbackComplete="function(s, e) { LoadingPanel.Hide(); }" />
            </dx:ASPxCallback>

            <dx:ASPxLoadingPanel ID="LoadingPanel" Text="Please wait..." runat="server" ClientInstanceName="LoadingPanel" Modal="True">
            </dx:ASPxLoadingPanel>



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


                   if (activeTab == 38) {
                        btn.SetVisible(false);
                   }
                   if (activeTab != 38) {
                       btnFinish.SetVisible(false);
                       btnFinish.SetEnabled(false);
                      
                   }
                lblImportant.SetVisible(false);
            </script>

        </asp:Content>