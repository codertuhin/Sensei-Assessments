<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="coopors.WebForm1" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  

    
   
   
     <dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="Technical Vs. Adaptive Assessment" HorizontalAlign="Center">
    <PanelCollection>
        <dx:PanelContent>
           
      
  
         <dx:ASPxPageControl ClientInstanceName="carTabPage" ShowTabs="false" ID="carTabPage" runat="server" ActiveTabIndex="0" EnableHierarchyRecreation="True" Border-BorderStyle="None" Border-BorderWidth="0" ActiveTabStyle-Border-BorderStyle="None">
            <TabPages >

                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <p>
                                Welcome to Technical Vs. Adaptive Assessment. Please enter your Name, Company Name and Email address in the next page so that we have your contact details to send you your report. The assessment cannot be saved and re-visited, as such allocate adequate time to complete the assessment. This assessment should take 10 to 15 Mts to complete. In case you cannot complete it once you start, please keep the window open/put your computer to sleep mode and get back to it later.  There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development. Therefore pressing the [BACK] or [REFRESH] button on the browser will result in you not able to proceed. If this happens, please re-start the assessment. 

                            </p>
                            </dx:ContentControl>
                            </ContentCollection>
                      </dx:BootstrapTabPage>
                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <p>
                                Welcome to Technical Vs. Adaptive Assessment. Please enter your Name, Company Name and Email address in the next page so that we have your contact details to send you your report. The assessment cannot be saved and re-visited, as such allocate adequate time to complete the assessment. This assessment should take 10 to 15 Mts to complete. In case you cannot complete it once you start, please keep the window open/put your computer to sleep mode and get back to it later.  There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development. Therefore pressing the [BACK] or [REFRESH] button on the browser will result in you not able to proceed. If this happens, please re-start the assessment. 

                            </p>
                            </dx:ContentControl>
                            </ContentCollection>
                      </dx:BootstrapTabPage>
            
                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxFormLayout runat="server">
    <Items>
        
        <dx:LayoutGroup Caption="Basic Information">
            <Items>
              
                
                <dx:LayoutItem Caption="Your Name">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:BootstrapTextBox ID="txtName" ClientInstanceName="tName"  Width="300px"
                              runat="server" Text="" >
                                <ValidationSettings>                                    
                                    <RegularExpression ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" />
                                    <RequiredField ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." IsRequired="True" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Company Name">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:BootstrapTextBox ID="txtCompany" ClientInstanceName="tCom" Width="300px"
                              runat="server" Text="" >
                                <ValidationSettings>
                                    <RequiredField ErrorText="Enter company name." IsRequired="True" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Email">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:BootstrapTextBox ID="txtEmail" ClientInstanceName="tEmail" Width="300px"
                              runat="server" Text="" >
                                <ValidationSettings>
                                    <RegularExpression ErrorText="Enter valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    <RequiredField ErrorText="Enter valid email address." IsRequired="True" />
                                </ValidationSettings>
                            </dx:BootstrapTextBox>
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
                </dx:BootstrapTabPage>

                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="1. When you wake up in the morning, do you;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:BootstrapRadioButtonList ID="Q1" ClientInstanceName="Q1" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:BootstrapListEditItem Text="Plan what you have to do for the day." Value="0" />
                                            <dx:BootstrapListEditItem Text="Decide on what to do based on your mood." Value="1" />
                                        </Items>
                                        <ValidationSettings ErrorText="">
                                            <RequiredField ErrorText="You must select at least one item." IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:BootstrapRadioButtonList>
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
                </dx:BootstrapTabPage>
           
               
                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="2. When deciding what to wear to work, you" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q2" ClientInstanceName="Q2" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="Select cloths based on the type of people you have to meet during the day." Value="0" />
                                            <dx:ListEditItem Text="Wear what you feel good wearing." Value="1" />
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="3. When selecting a birthday present, you" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q3" ClientInstanceName="Q3" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="Select something that will make the birthday person happy." Value="0" />
                                            <dx:ListEditItem Text="Select something that is appropriate for the age, gender and lifestyle of the person." Value="1" />
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="4. When deciding what to eat, you;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q4" ClientInstanceName="Q4" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="Select something you feel like eating." Value="0" />
                                            <dx:ListEditItem Text="Select food based on the nutritional aspects." Value="1" />
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="5. At team meetings you prefer to discuss;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="6. The most important aspects of a plan for you is;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="7. More budgets should be allocated to;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q7" ClientInstanceName="Q7" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="Buying new equipment and maintaining them." Value="0" />
                                            <dx:ListEditItem Text="Developing teamwork and building team spirit." Value="1" />
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="8. When your team does not meet targets or dead lines, you would first check;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q8" ClientInstanceName="Q8" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="If people supported each other to get the plan implemented." Value="0" />
                                            <dx:ListEditItem Text="If the strategy was implemented as planned." Value="1" />
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
                </dx:BootstrapTabPage>


                <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="9. Organization success depends on;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
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
                </dx:BootstrapTabPage>
                
                <dx:BootstrapTabPage>
                                    <ContentCollection>
                                        <dx:ContentControl  runat="server">
                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                            <Items>
                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="10. When appreciating someone, you would first;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
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
                </dx:BootstrapTabPage>

                 <dx:BootstrapTabPage>
                                    <ContentCollection>
                                        <dx:ContentControl  runat="server">
                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                            <Items>
                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="11. When someone is worried about a tough target;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
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
                </dx:BootstrapTabPage>

                <dx:BootstrapTabPage>
                                                    <ContentCollection>
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="12. When hiring someone to your team;" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="They should be technically competent " Value="0" />
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
                                </dx:BootstrapTabPage>


                 <dx:BootstrapTabPage>
                    <ContentCollection>
                        <dx:ContentControl  runat="server">
                        <b> <h5 style="color:red;">The assessment is not complete yet, until you click the [FINISH] button below. Please click [Finish] to complete and submit your assessment.</h5></b>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapTabPage>
            </TabPages>

<ActiveTabStyle Border-BorderStyle="None"></ActiveTabStyle>

<Border BorderStyle="None" BorderWidth="0px"></Border>
        </dx:ASPxPageControl>

            
         
     

            </dx:PanelContent>
        </PanelCollection>
         </dx:ASPxRoundPanel>

    <dx:ASPxProgressBar ClientInstanceName="ASPxProgressBar1" Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None"    ShowPosition="false" runat="server" Maximum="12"  Width="100%" Height="5px"
  Position="0" DisplayMode="Custom" EnableTheming="False" DisplayFormatString="">
        <IndicatorStyle BackColor="Lime">
        </IndicatorStyle>
        <RootStyle BackColor="White">
        </RootStyle>
<Border BorderStyle="None"></Border>
</dx:ASPxProgressBar>
 
                       

   

  <br />

    <dx:ASPxButton Text="Finish"  Width="150px" runat="server" ClientInstanceName="btnFinish"  ID="btnNext" OnClick="btnNext_Click">
         <ClientSideEvents Click="function(s, e) {
              
    window.setTimeout(function(){s.SetEnabled(false);},10) ;
    Callback.PerformCallback();
    LoadingPanel.Show();

            
}" />
    </dx:ASPxButton>


        <dx:ASPxButton ID="ASPxButton1"  Width="150px" ClientInstanceName="btn"  runat="server" Text="Next" AutoPostBack="false">
                           <ClientSideEvents Click="function(s, e) 
                               {
                               var activeTab = carTabPage.GetActiveTabIndex();
                               //ASPxRoundPanel1.SetHeaderText('Technical Vs. Adaptive Assessment');
                             
                              
                                if(activeTab == 0)
                                     {
                                        carTabPage.SetActiveTabIndex(1);
                                     }
                                else if(activeTab==1 && tName.GetIsValid() && tCom.GetIsValid() && tEmail.GetIsValid())
                                {
                                         
                                  carTabPage.SetActiveTabIndex(2);
                                }
                                 else if(activeTab == 2 && Q1.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(3);
                                  }
                               else if(activeTab == 3 && Q2.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(4);
                                  }
                               else if(activeTab == 4 && Q3.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(5);
                                  }
                               else if(activeTab == 5 && Q4.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(6);
                                  }
                               else if(activeTab == 6 && Q5.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(7);
                                  }
                               else if(activeTab == 7 && Q6.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(8);
                                  }
                               else if(activeTab == 8 && Q7.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(9);
                                  }
                               else if(activeTab == 9 && Q8.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(10);
                                  }
                               else if(activeTab == 10 && Q9.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(11);
                                  }
                               else if(activeTab == 11 && Q10.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(12);
                                  }
                               else if(activeTab == 12 && Q11.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(13);
                                  }
                               else if(activeTab == 13 && Q12.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(14);
                                    //btn.SetEnabled(false);
                               btn.SetVisible(false);
                               btnFinish.SetVisible(true);
                                btnFinish.SetEnabled(true);
                                  }
                               else
                               {
                               return false;
                               }
               
                             if(activeTab>0 && activeTab<13)
                               {
                               
                               ASPxRoundPanel1.SetHeaderText('Technical Vs. Adaptive Assessment ' + activeTab + ' of 12');
                              
                               lblImportant.SetVisible(true);
                               }

                               if(activeTab==13)
                                {
                                lblImportant.SetVisible(false);
                                }
            
                                //data[carTabPage.GetActiveTabIndex()] =  carTabPage.GetActiveTabIndex();
                                //var d = data[0];
                                //alert(data[0]);

                                //return fun();

                                
                               
                               }" />

                         </dx:ASPxButton>

<br />
    <br />
    <dx:ASPxLabel runat="server" ID="lblImportant" ForeColor="Red" ClientInstanceName="lblImportant" Font-Size="Small"
       Text ="IMPORTANT: There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development. Therefore pressing the [BACK] or [REFRESH] button on the browser will result in you not able to proceed. If this happens, please re-start the assessment." >
    </dx:ASPxLabel>


     <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="Callback">
        <ClientSideEvents CallbackComplete="function(s, e) { LoadingPanel.Hide(); }" />
    </dx:ASPxCallback>

     <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel"
        Modal="True">
    </dx:ASPxLoadingPanel>

    

    <script type="text/javascript">
        btnFinish.SetVisible(false);
        btnFinish.SetEnabled(false);
        lblImportant.SetVisible(false);
    </script>


</asp:Content>

