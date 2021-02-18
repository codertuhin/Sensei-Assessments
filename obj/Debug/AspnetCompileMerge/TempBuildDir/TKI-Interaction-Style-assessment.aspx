<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TKI-Interaction-Style-assessment.aspx.cs" Inherits="coopors.TKI_Interaction_Style_assessment" %>
<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   

    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="Interaction Style Assessment" HorizontalAlign="Center">
    <PanelCollection>
        <dx:PanelContent>
           
      
  
         <dx:ASPxPageControl ClientInstanceName="carTabPage" ShowTabs="false" ID="carTabPage" runat="server" ActiveTabIndex="0" EnableHierarchyRecreation="True" Border-BorderStyle="None" Border-BorderWidth="0" ActiveTabStyle-Border-BorderStyle="None">
            <TabPages >

                <dx:TabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <p>
                                Welcome to Interaction Style Assessment. Please enter your Name, Company Name and Email address in the next page so that we have your contact details to send you your report. The assessment cannot be saved and re-visited, as such allocate adequate time to complete the assessment. This assessment should take 30-40 Mts to complete. In case you cannot complete it once you start, please keep the window open/put your computer to sleep mode and get back to it later.  There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development. Therefore pressing the [BACK] or [REFRESH] button on the browser will result in you not able to proceed. If this happens, please re-start the assessment. 

                            </p>
                            </dx:ContentControl>
                            </ContentCollection>
                      </dx:TabPage>
                
                                  <dx:TabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxFormLayout runat="server">
    <Items>
        
        <dx:LayoutGroup Caption="Basic Information">
            <Items>
              
                
                <dx:LayoutItem Caption="Your Name">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="txtName"  ClientInstanceName="tName" Width="300px"
                              runat="server" Text="" >
                                <ValidationSettings>                                    
                                    <RegularExpression ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" />
                                    <RequiredField ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?><{}+-." IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Company Name">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="txtCompany" ClientInstanceName="tCom" Width="300px"
                              runat="server" Text="" >
                                <ValidationSettings>
                                    <RequiredField ErrorText="Enter company name." IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>

                <dx:LayoutItem Caption="Email">
                    <LayoutItemNestedControlCollection >
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="txtEmail" ClientInstanceName="tEmail" Width="300px"
                              runat="server" Text="" >
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q1" ClientInstanceName="Q1" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="There are times when I let others take responsibility for solving the problem." Value="0" />
                                            <dx:ListEditItem Text="Rather than negotiate the things on which we disagree, I try to stress those things on which we both agree." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q2" ClientInstanceName="Q2" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I try to find a compromise solution" Value="0" />
                                            <dx:ListEditItem Text="I attempt to deal with all of his/her and my concern." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q3" ClientInstanceName="Q3" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I am usually firm in pursuing my goals." Value="0" />
                                            <dx:ListEditItem Text="I might try to smooth the others feelings and preserve our relationship." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q4" ClientInstanceName="Q4" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I try to find a compromise solution." Value="0" />
                                            <dx:ListEditItem Text="I sometimes sacrifice my own wishes for the wishes for the wishes of other person." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q5" ClientInstanceName="Q5" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I consistently seek the others help in working out a solution." Value="0" />
                                            <dx:ListEditItem Text="I try to do what is necessary to avoid useless tensions." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q6" ClientInstanceName="Q6" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I try to avoid creating unpleasantness for myself." Value="0" />
                                            <dx:ListEditItem Text="I try to win my position." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q7" ClientInstanceName="Q7" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I try to postpone the issue until I have had some time to think it over." Value="0" />
                                            <dx:ListEditItem Text="I give up some pints in exchange for others." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q8" ClientInstanceName="Q8" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I am usually firm in pursuing my goals." Value="0" />
                                            <dx:ListEditItem Text="I attempt to get concerns and issues immediately out in the open." Value="1" />
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
                        <dx:ContentControl  runat="server">
                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                            <Items>
                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
<Border BorderStyle="None"></Border>
                                    <Items>
                                       <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxRadioButtonList ID="Q9" ClientInstanceName="Q9" runat="server" RepeatDirection="Vertical">
                                        <Items>
                                            <dx:ListEditItem Text="I feel that differences are not always worth worrying about. " Value="0" />
                                            <dx:ListEditItem Text="I make some effort to get my way. " Value="1" />
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
                                        <dx:ContentControl  runat="server">
                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                            <Items>
                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                <Border BorderStyle="None"></Border>
                                                    <Items>
                                                       <dx:LayoutItem Caption="">
                                            <LayoutItemNestedControlCollection>
                                                <dx:LayoutItemNestedControlContainer>
                                                    <dx:ASPxRadioButtonList ID="Q10" ClientInstanceName="Q10" runat="server" RepeatDirection="Vertical">
                                                        <Items>
                                                            <dx:ListEditItem Text="I am firm in pursuing my goals." Value="0" />
                                                            <dx:ListEditItem Text="I try to find compromise solution." Value="1" />
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
                                        <dx:ContentControl  runat="server">
                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                            <Items>
                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                <Border BorderStyle="None"></Border>
                                                    <Items>
                                                       <dx:LayoutItem Caption="">
                                            <LayoutItemNestedControlCollection>
                                                <dx:LayoutItemNestedControlContainer>
                                                    <dx:ASPxRadioButtonList ID="Q11" ClientInstanceName="Q11" runat="server" RepeatDirection="Vertical">
                                                        <Items>
                                                            <dx:ListEditItem Text="I attempt to get all concern and issues immediately out in the pen." Value="0" />
                                                            <dx:ListEditItem Text="I might try to smooth the others feelings and preserve our relationship." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="I sometimes avid taking positions that would create controversy." Value="0" />
                                                                            <dx:ListEditItem Text="I will let the other person have some of his/her positions if he/she lets me have some of mine." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q13" ClientInstanceName="Q13" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="I propose a middle ground." Value="0" />
                                                                            <dx:ListEditItem Text="I press to get my points made." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q14" ClientInstanceName="Q14" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="I tell the other person my ideas and ask for his/hers." Value="0" />
                                                                            <dx:ListEditItem Text="I try to show the other person the logic and benefits of my position." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q15" ClientInstanceName="Q15" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="I might try to smooth the others feelings and preserve our relationship." Value="0" />
                                                                            <dx:ListEditItem Text=" I try to do what is necessary to avoid tensions." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q16" ClientInstanceName="Q16" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text=" I try not to hurt the others feelings." Value="0" />
                                                                            <dx:ListEditItem Text="  I try to convince the other person of the merits of my position." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q17" ClientInstanceName="Q17" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text=" I am usually firm in pursuing my goals." Value="0" />
                                                                            <dx:ListEditItem Text="  I try to do what is necessary to avoid useless tensions." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q18" ClientInstanceName="Q18" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text="  If it makes other people happy, I might let them maintain their views." Value="0" />
                                                                            <dx:ListEditItem Text="   I will let other people have some of their positions if they let me have some of mine." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q19" ClientInstanceName="Q19" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text=" I attempt to get all concerns and issue immediately out in the open." Value="0" />
                                                                            <dx:ListEditItem Text="  I try to postpone the issue until I have had some time to think it over." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q20" ClientInstanceName="Q20" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text=" I attempt to immediately work through our difference." Value="0" />
                                                                            <dx:ListEditItem Text="  I try to find a fair combination of gains and losses for both of us." Value="1" />
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
                                                        <dx:ContentControl  runat="server">
                                                          <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                            <Items>
                                                                <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                                <Border BorderStyle="None"></Border>
                                                                    <Items>
                                                                       <dx:LayoutItem Caption="">
                                                            <LayoutItemNestedControlCollection>
                                                                <dx:LayoutItemNestedControlContainer>
                                                                    <dx:ASPxRadioButtonList ID="Q21" ClientInstanceName="Q21" runat="server" RepeatDirection="Vertical">
                                                                        <Items>
                                                                            <dx:ListEditItem Text=" In approaching negotiations, I try to be considerate of the other person’s wishes." Value="0" />
                                                                            <dx:ListEditItem Text=" I always lean toward a direct discussion of the problem." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q22" ClientInstanceName="Q22" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text=" I try to find a position that is intermediate between his/her and mine." Value="0" />
                                                                        <dx:ListEditItem Text=" I assert my wishes." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q23" ClientInstanceName="Q23" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="  I am very often concerned with satisfying all our wishes." Value="0" />
                                                                        <dx:ListEditItem Text=" There are times when I let others take responsibility for solving the problem" Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q24" ClientInstanceName="Q24" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="If the other’s position seems very important to him/her, I would try to meet his/her wishes." Value="0" />
                                                                        <dx:ListEditItem Text="I try to get the other person to settle for a compromise." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q25" ClientInstanceName="Q25" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I try to show the other person the logic and benefits of my position." Value="0" />
                                                                        <dx:ListEditItem Text="In approaching negotiations, I try to be considerate of the other person’s wishes." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q26" ClientInstanceName="Q26" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I propose a middle ground." Value="0" />
                                                                        <dx:ListEditItem Text="I am nearly always concerned with satisfying all our wishes." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q27" ClientInstanceName="Q27" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I sometimes avoid taking positions that would create controversy." Value="0" />
                                                                        <dx:ListEditItem Text="If it makes other people happy, I might let them maintain their views." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q28" ClientInstanceName="Q28" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I am usually firm in pursuing my goals." Value="0" />
                                                                        <dx:ListEditItem Text="I usually seek the other’s help in working out a solution." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q29" ClientInstanceName="Q29" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I propose a middle ground." Value="0" />
                                                                        <dx:ListEditItem Text="I feel that differences are not always worth worrying about." Value="1" />
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
                                                    <dx:ContentControl  runat="server">
                                                        <dx:ASPxFormLayout  runat="server" Border-BorderStyle="None">
                                                        <Items>
                                                            <dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
                            <Border BorderStyle="None"></Border>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxRadioButtonList ID="Q30" ClientInstanceName="Q30" runat="server" RepeatDirection="Vertical">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="I try not to hurt the other’s feelings." Value="0" />
                                                                        <dx:ListEditItem Text="I always share the problem with the other person so that we can work it out." Value="1" />
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
                        <dx:ContentControl  runat="server">
                         <h5 style="color:red;">The assessment is not complete yet, until you click the [FINISH] button below. Please click [Finish] to complete and submit your assessment.</h5>
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
      
    <dx:ASPxProgressBar Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None"    ShowPosition="false" runat="server" Maximum="30"  Width="100%" Height="5px"
  Position="0" DisplayMode="Custom" EnableTheming="False">
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
                                  }
                               else if(activeTab == 14 && Q13.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(15);
                                  }
                               else if(activeTab == 15 && Q14.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(16);
                                  }
                               else if(activeTab == 16 && Q15.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(17);
                                  }
                               else if(activeTab == 17 && Q16.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(18);
                                  }
                               else if(activeTab == 18 && Q17.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(19);
                                  }
                               else if(activeTab == 19 && Q18.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(20);
                                  }
                               else if(activeTab == 20 && Q19.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(21);
                                  }
                               else if(activeTab == 21 && Q20.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(22);
                                  }
                               else if(activeTab == 22 && Q21.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(23);
                                  }
                               else if(activeTab == 23 && Q22.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(24);
                                  }
                               else if(activeTab == 24 && Q23.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(25);
                                  }
                               else if(activeTab == 25 && Q24.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(26);
                                  }
                               else if(activeTab == 26 && Q25.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(27);
                                  }
                               else if(activeTab == 27 && Q26.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(28);
                                  }
                               else if(activeTab == 28 && Q27.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(29);
                                  }
                                else if(activeTab == 29 && Q28.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(30);
                                  }
                               else if(activeTab == 30 && Q29.GetIsValid())
                                 {
                                   carTabPage.SetActiveTabIndex(31);
                                  }
                                else if(activeTab == 31 && Q30.GetIsValid())
                                 {
                                    carTabPage.SetActiveTabIndex(32);
                                    //btn.SetEnabled(false);
                                    btn.SetVisible(false);
                                    btnFinish.SetVisible(true);
                                     btnFinish.SetEnabled(true);
                                  }
                               else if(
                               
                               else
                               {
                               return false;
                               }
               
                             if(activeTab>0 && activeTab<31)
                               {
                               
                               ASPxRoundPanel1.SetHeaderText('Interaction Style Assessment ' + activeTab + ' of 30');
                               lblImportant.SetVisible(true);
                               }

                               if(activeTab==31)
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
       Text ="IMPORTANT: There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own development." >
    </dx:ASPxLabel>



     <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="Callback">
        <ClientSideEvents CallbackComplete="function(s, e) { LoadingPanel.Hide(); }" />
    </dx:ASPxCallback>

     <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel"
        Modal="True">
    </dx:ASPxLoadingPanel>



     <script type="text/javascript">
             //if (activeTab == 31) {
             //           btn.SetVisible(false);
             //      }
             //      if (activeTab != 31) {
             //          btnFinish.SetVisible(false);
             //          btnFinish.SetEnabled(false);
                      
             //      }
         lblImportant.SetVisible(false);
    </script>

</asp:Content>
