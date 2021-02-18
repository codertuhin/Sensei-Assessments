<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeadershipComplexitiesAssessment.aspx.cs" Inherits="coopors.LeadershipComplexitiesAssessment" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
            
               
              <div>

    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="Leadership Complexities Assessment " HorizontalAlign="Center">
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
                                        Welcome to Leadership Complexities Assessment. This assessment should take 30-40 Mts to complete.There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own
                                                development.

                                    </p>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:TabPage>

                        <dx:TabPage>
                            <ContentCollection>
                                <dx:ContentControl runat="server">
                                    <dx:ASPxFormLayout runat="server" Border-BorderStyle="None">
                                        <Items>
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="1/20-If a direct report points out deficiencies in a decision I had made, and I see the point been made, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q1" ClientInstanceName="Q1" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="not change my decision." Value="0" />
                                                                        <dx:ListEditItem Text="change the decision to address a few of the deficiencies." Value="1" />
                                                                        <dx:ListEditItem Text="change the decision to address most of the deficiencies." Value="2" />
                                                                        <dx:ListEditItem Text="change the decision to address all the deficiencies." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="2/20-If I don't have all the required information to make a time-sensitive decision, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q2" ClientInstanceName="Q2" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="delay the decision until I get all the information." Value="0" />
                                                                        <dx:ListEditItem Text="delay the decision until I get most of the information." Value="1" />
                                                                        <dx:ListEditItem Text="delay the decision until I get some of the more important information." Value="2" />
                                                                        <dx:ListEditItem Text="make the decision with available information." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="3/20-When two of my important team members have a conflict, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q3" ClientInstanceName="Q3" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="avoid them interacting because I want to maintain peace." Value="0" />
                                                                        <dx:ListEditItem Text="ensure they meet only when I am around, to ensure peace." Value="1" />
                                                                        <dx:ListEditItem Text="find creative ways of resolving their conflict." Value="2" />
                                                                        <dx:ListEditItem Text="ensure they interact so that they can resolve things on their own." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="4/20-When a team member makes a mistake." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q4" ClientInstanceName="Q4" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I do not point out the mistakes so he/she will remain happy." Value="0" />
                                                                        <dx:ListEditItem Text="I point out the mistake only if I know that he/her wont be upset/hurt." Value="1" />
                                                                        <dx:ListEditItem Text="I express the details and attempt not show any emotions." Value="2" />
                                                                        <dx:ListEditItem Text="I express my dissatisfaction and details of the mistake ." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="5/20-With regard to designations and responsibilities." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q5" ClientInstanceName="Q5" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="It is important to have a higher designation  far beyond my responsibilities." Value="0" />
                                                                        <dx:ListEditItem Text="It's important for me to have a good designation even if my responsibilities are not up to it." Value="1" />
                                                                        <dx:ListEditItem Text="My designation must be in line with my responsibilities." Value="2" />
                                                                        <dx:ListEditItem Text="What matters to me is my responsibilities, not the designation." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="6/20-If a direct report points out deficiencies in project I am leading and I see the point been made, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q6" ClientInstanceName="Q6" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="continue with the original plan unchanged." Value="0" />
                                                                        <dx:ListEditItem Text="make changes to address a few of the deficiencies." Value="1" />
                                                                        <dx:ListEditItem Text="make change to address most of the deficiencies." Value="2" />
                                                                        <dx:ListEditItem Text="make change to address all the deficiencies." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="7/20-When I get information for a time-critical project I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q7" ClientInstanceName="Q7" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="check the accuracy of the information, even if that means delaying the project." Value="0" />
                                                                        <dx:ListEditItem Text="check the accuracy of the more important  information, delaying the project moderately if required." Value="1" />
                                                                        <dx:ListEditItem Text="check the accuracy of information as long it does not delay the project by more than a few days." Value="2" />
                                                                        <dx:ListEditItem Text="use the information and proceed with the project given the time criticality ." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="8/20-If I have team members who argue with each other regularly, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q8" ClientInstanceName="Q8" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="ensure they do not attend meetings together." Value="0" />
                                                                        <dx:ListEditItem Text="ensure they attend meeting that are attended by me, so that I can prevent them arguing." Value="1" />
                                                                        <dx:ListEditItem Text="adopt creative ways and conflict defusing techniques to address the issues." Value="2" />
                                                                        <dx:ListEditItem Text="ensure they attend meetings, so that their conflicts are resolved on their own." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="9/20-When I have to communicate bad news; I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q9" ClientInstanceName="Q9" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="try to avoid communicating such information." Value="0" />
                                                                        <dx:ListEditItem Text="carefully craft the message to highlight the positives and down-play the negatives." Value="1" />
                                                                        <dx:ListEditItem Text="Use positive words and communicate without changing the original message." Value="2" />
                                                                        <dx:ListEditItem Text="communicate exactly what it is." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="10/20-In order to implement projects my team is not supportive of, I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q10" ClientInstanceName="Q10" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="Instruct the team to implement the project and punish those who does not comply." Value="0" />
                                                                        <dx:ListEditItem Text="Instruct the team to implement the project closely monitor." Value="1" />
                                                                        <dx:ListEditItem Text="Communicate the benefits of the project, listen to their concerns and adjust where required." Value="2" />
                                                                        <dx:ListEditItem Text="get them involved from the idea generation stage, planning, implementing and monitoring." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="11/20-When my team members highlight my mistakes, I consider they are ." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q11" ClientInstanceName="Q11" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="trying to make me look bad in the eyes of others." Value="0" />
                                                                        <dx:ListEditItem Text="trying to show me that I am not as good as I think I am." Value="1" />
                                                                        <dx:ListEditItem Text="helping to  improve the performance of my organisation/function." Value="2" />
                                                                        <dx:ListEditItem Text="helping me improve my performance." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="12/20-When I make a decision, I tend to." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="check the accuracy of my decisions with others even if it takes time." Value="0" />
                                                                        <dx:ListEditItem Text="share the decision with others, request them to provide feedback and improve the decision if required ." Value="1" />
                                                                        <dx:ListEditItem Text="share the decision with others and hope they will not have any objections ." Value="2" />
                                                                        <dx:ListEditItem Text="move in to implementation fast, to ensure others do not object." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="13/20-If a team member brings up a contentious subject,  I would." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q13" ClientInstanceName="Q13" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="divert the discussion in a different direction." Value="0" />
                                                                        <dx:ListEditItem Text="postpone the discussion for another day/time to allow time to prepare ." Value="1" />
                                                                        <dx:ListEditItem Text="encourage open and honest discussion about the issue with guidelines provided by me to ensure peace ." Value="2" />
                                                                        <dx:ListEditItem Text="encourage open and honest discussion about the issue." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="14/20-I give or recommend good increments to." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q14" ClientInstanceName="Q14" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="even to those who perform below agreed levels to keep them happy and motivated." Value="0" />
                                                                        <dx:ListEditItem Text="those who perform close to agreed levels so that they get motivated to perform better." Value="1" />
                                                                        <dx:ListEditItem Text="those who at least perform to agreed levels ." Value="2" />
                                                                        <dx:ListEditItem Text="only to those who perform beyond agreed levels as per agreed criterion." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="15/20-I believe in spending a lot of time and money." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q15" ClientInstanceName="Q15" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="selecting cloths & shoes that make me look successful." Value="0" />
                                                                        <dx:ListEditItem Text="buying equipment that help me improve performance ." Value="1" />
                                                                        <dx:ListEditItem Text="acquiring knowledge that will help me become successful." Value="2" />
                                                                        <dx:ListEditItem Text="developing my team and myself to improve performance." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="16/20-When it comes to information and decision I prefer to." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q16" ClientInstanceName="Q16" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="find information and make decision on my own to ensure accuracy and success." Value="0" />
                                                                        <dx:ListEditItem Text="delegate the task of finding information to someone I have developed, but make the decisions on my own ." Value="1" />
                                                                        <dx:ListEditItem Text="delegate the task of finding information and recommending decisions to my team, but make the final call on my own." Value="2" />
                                                                        <dx:ListEditItem Text="delegate the task of finding information and making decisions to my team." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="17/20-It is worth investing on research and consultants." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q17" ClientInstanceName="Q17" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="so that I don't get blamed if the decision made goes bad." Value="0" />
                                                                        <dx:ListEditItem Text="so that I won't make a mistake." Value="1" />
                                                                        <dx:ListEditItem Text="to ensure accurate information is used and options are well examined." Value="2" />
                                                                        <dx:ListEditItem Text="to ensure decisions are well thought out and best for my organisation." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="18/20-I like to have like-minded people in my team so that there is." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q18" ClientInstanceName="Q18" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="harmony." Value="0" />
                                                                        <dx:ListEditItem Text="efficiency." Value="1" />
                                                                        <dx:ListEditItem Text="accuracy of decisions." Value="2" />
                                                                        <dx:ListEditItem Text="team spirit." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="19/20-When it comes to appreciation and providing improvement feedback." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q19" ClientInstanceName="Q19" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I only appreciate and do not provide improvement feedback." Value="0" />
                                                                        <dx:ListEditItem Text="I appreciate much more than pointing out improvement areas." Value="1" />
                                                                        <dx:ListEditItem Text="I equally balance appreciation and  improvement feedback." Value="2" />
                                                                        <dx:ListEditItem Text="I appreciate for all successes and provide improvement feedback for all mistakes ." Value="3" />
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
                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="20/20-It is important to have a large support team and facilities." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                                <Border BorderStyle="None"></Border>
                                                <Items>
                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q20" ClientInstanceName="Q20" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="to show how important I am ." Value="0" />
                                                                        <dx:ListEditItem Text="to show how important my function is." Value="1" />
                                                                        <dx:ListEditItem Text="to execute plans  efficiently." Value="2" />
                                                                        <dx:ListEditItem Text="to generate new ideas and execute plans efficiently." Value="3" />
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
                    <ActiveTabStyle Border-BorderStyle="None">
                    </ActiveTabStyle>
                    <Border BorderStyle="None" BorderWidth="0px" />
                </dx:ASPxPageControl>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>

    <dx:ASPxProgressBar Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None" ShowPosition="false" runat="server" Maximum="30" Width="100%" Height="5px" Position="0" DisplayMode="Custom" EnableTheming="False">
        <IndicatorStyle BackColor="Lime">
        </IndicatorStyle>
        <RootStyle BackColor="White">
        </RootStyle>
        <Border BorderStyle="None"></Border>
    </dx:ASPxProgressBar>

    <br />
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

                                   
									else if (activeTab == 2) 
                    {
                                      carTabPage.SetActiveTabIndex(1);
                                     btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                     btnPre.SetText('Main Menu');
                                     btnNext.SetText('Start');
                                    } 
                    else if (activeTab == 3) {
                                    	carTabPage.SetActiveTabIndex(2);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 4) {
                                    	carTabPage.SetActiveTabIndex(3);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 5) {
                                    	carTabPage.SetActiveTabIndex(4);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 6) {
                                    	carTabPage.SetActiveTabIndex(5);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 7) {
                                    	carTabPage.SetActiveTabIndex(6);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 8) {
                                    	carTabPage.SetActiveTabIndex(7);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 9) {
                                    	carTabPage.SetActiveTabIndex(8);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 10) {
                                    	carTabPage.SetActiveTabIndex(9);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 11) {
                                    	carTabPage.SetActiveTabIndex(10);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 12) {
                                    	carTabPage.SetActiveTabIndex(11);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    	//btn.SetVisible(true);
                                    } else if (activeTab == 13) {
                                    	carTabPage.SetActiveTabIndex(12);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    } else if (activeTab == 14) {
                                    	carTabPage.SetActiveTabIndex(13);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 15) {
                                    	carTabPage.SetActiveTabIndex(14);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 16) {
                                    	carTabPage.SetActiveTabIndex(15);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 17) {
                                    	carTabPage.SetActiveTabIndex(16);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 18) {
                                    	carTabPage.SetActiveTabIndex(17);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 19) {
                                    	carTabPage.SetActiveTabIndex(18);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                    
                                    } else if (activeTab == 20) {
                                    	  carTabPage.SetActiveTabIndex(19);
                              btnFinish.SetVisible(false);
                                     btnNext.SetVisible(true);
                                        	
                                    } 
                             else if (activeTab == 21) {
                                    	  carTabPage.SetActiveTabIndex(20);
                                        	btnFinish.SetVisible(false);
                                    	    btnNext.SetVisible(true);
                                    }
                              else if (activeTab == 22) {
                                    	  carTabPage.SetActiveTabIndex(21);
                                        	btnFinish.SetVisible(false);
                                    	    btnNext.SetVisible(true);
                                        
                                    }
                             
                             else {
                                    	return false;
                                    }

                             if (activeTab > 0 && activeTab < 20) {
                                
                                	//ASPxRoundPanel1.SetHeaderText('Leadership Complexities Assessment ' + activeTab + ' of 20');
                                
                                	lblImportant.SetVisible(true);
                                }
               
                                }" />
                
            </dx:BootstrapButton>
            
        </div>
        <div class="col-6 col-sm-2">
             <dx:BootstrapButton Text="Finish" Width="150px" runat="server" ClientInstanceName="btnFinish" UseSubmitBehavior="false" OnClick="btnNext_Click" ID="btnNext">
                                                                     				<SettingsBootstrap RenderOption="Warning" />
                 <ClientSideEvents Click="function(s, e) {
              LoadingPanel.SetText('Generating report...');
            LoadingPanel.Show();
              btnFinish.SetVisible(false);
              btnPre.SetVisible(false);
           }" />
    </dx:BootstrapButton>
            

            <dx:BootstrapButton ID="ASPxButton1" Width="150px" ClientInstanceName="btnNext" runat="server"  Text="Next"   AutoPostBack="false">
                							<SettingsBootstrap RenderOption="Primary" />
    
                <ClientSideEvents Click="function(s,e){


                         Callback.PerformCallback();
                    LoadingPanel.SetText('Saving...Please wait...');
                LoadingPanel.Show();

                                 var activeTab = carTabPage.GetActiveTabIndex();
                                if (activeTab == 0) {
                                	carTabPage.SetActiveTabIndex(1);
                                } else if (activeTab == 1 ) {
                                btnPre.SetText('Previous');
                                btnNext.SetText('Next');
                                	carTabPage.SetActiveTabIndex(2);
                                } else if (activeTab == 2 && Q1.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(3);
                                } else if (activeTab == 3 && Q2.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(4);
                                } else if (activeTab == 4 && Q3.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(5);
                                } else if (activeTab == 5 && Q4.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(6);
                                } else if (activeTab == 6 && Q5.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(7);
                                } else if (activeTab == 7 && Q6.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(8);
                                } else if (activeTab == 8 && Q7.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(9);
                                } else if (activeTab == 9 && Q8.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(10);
                                } else if (activeTab == 10 && Q9.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(11);
                                } else if (activeTab == 11 && Q10.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(12);
                                } else if (activeTab == 12 && Q11.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(13);
                                } else if (activeTab == 13 && Q12.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(14);
                                
                                }else if (activeTab == 14 && Q13.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(15);
                                
                                }else if (activeTab == 15 && Q14.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(16);
                                
                                }else if (activeTab == 16 && Q15.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(17);
                                
                                }else if (activeTab == 17 && Q16.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(18);
                                
                                }else if (activeTab == 18 && Q17.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(19);
                                
                                }else if (activeTab == 19 && Q18.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(20);
                                
                                }else if (activeTab == 20 && Q19.GetIsValid()) {
                                	carTabPage.SetActiveTabIndex(21);
                                	
                                
                                } 
                         
                         else if (activeTab == 21 && Q20.GetIsValid()) 
                         {
                        
                                	carTabPage.SetActiveTabIndex(22);
                                	btnNext.SetVisible(false);
                                	btnFinish.SetVisible(true);
                                	btnFinish.SetEnabled(true);
                                
                                }
                         else {
                                	return false;
                                }
                                
                                if (activeTab > 0 && activeTab < 20) {
                                
                                	//ASPxRoundPanel1.SetHeaderText('Leadership Complexities Assessment ' + activeTab + ' of 20');
                                
                                	lblImportant.SetVisible(true);
                                }
                                
                                if (activeTab == 20) {
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
                        <dx:ASPxButton ClientInstanceName="btnSaveandContinue" CausesValidation="false" RenderMode="Danger" ID="btnSaveState" Text="Save and continue later"   OnClick="btnSaveState_Click"  runat="server">
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

    <dx:ASPxLoadingPanel ID="LoadingPanel"  Text="Please wait..." runat="server" ClientInstanceName="LoadingPanel" Modal="True">
    </dx:ASPxLoadingPanel>
             </div>
                    

     <script type="text/javascript">
         var activeTab = carTabPage.GetActiveTabIndex();
         //ASPxRoundPanel1.SetHeaderText('Leadership Complexities Assessment ' + activeTab + ' of 20');
          if (activeTab == 1) {
                       btnPre.SetText('Main Menu');
                       btn.SetText('Start');
                   }
                   else
                   {
                       btnPre.SetText('Previous');
                       btn.SetText('Next');
                   }

         if (activeTab == 22) {
             btnNext.SetVisible(false);
         }
         if (activeTab != 22) {
             btnFinish.SetVisible(false);
             btnFinish.SetEnabled(false);
         }
         lblImportant.SetVisible(false);
    </script>
</asp:Content>

