<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TKI-Interaction-Style-assessment.aspx.cs" Inherits="coopors.TKI_Interaction_Style_assessment" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<dx:ASPxRoundPanel ID="ASPxRoundPanel1" ClientInstanceName="ASPxRoundPanel1" runat="server" ShowCollapseButton="True" Width="100%" Font-Size="X-Large" HeaderText="Interaction Personality Type Assessment" HorizontalAlign="Center">
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
																		<RegularExpression ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?>
																			<{}+-." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" />
																			<RequiredField ErrorText="Enter your name without special characters eg. !@#$%^&*(),./?>
																				<{}+-." IsRequired="True" />
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
															</dx:LayoutItem><%-- And other layout items --%>
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
												Welcome to Interaction Personality Type Assessment. This assessment should take 30-40 Mts to complete. There are no right or wrong answers. Therefore pick the answers most suited to your personality and mindset so that you receive an accurate reading about yourself, that can be used towards your own
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="1/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q1" ClientInstanceName="Q1" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I sometimes prefer if my problems are solved by others." Value="0" />
																				<dx:ListEditItem Text="I always highlight things that we agree on, instead of what we disagree on." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="2/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q2" ClientInstanceName="Q2" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text=" I generally let go of part of my position if the other person is also willing to do so to find a solution" Value="0" />
																				<dx:ListEditItem Text=" I always try to deal with concerns of others and myself at the same time." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="3/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q3" ClientInstanceName="Q3" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text=" I focus on working towards my goals before thinking of others." Value="0" />
																				<dx:ListEditItem Text="Relationships are important to me. Therefore I try not to hurt others by defeating them." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="4/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q4" ClientInstanceName="Q4" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text=" I generally let go of part of my position if the other person is also willing to do so to find a solution." Value="0" />
																				<dx:ListEditItem Text=" I am happy to sacrifice my own wishes to help fulfil the wishes of others." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="5/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q5" ClientInstanceName="Q5" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text=" When faced with a problem, I usually seek the help of others in finding solutions." Value="0" />
																				<dx:ListEditItem Text="I look for ways of avoiding unnecessary stress during disagreements." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="6/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q6" ClientInstanceName="Q6" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I dislike being in a unpleasant situation and do my best to avoid such situations." Value="0" />
																				<dx:ListEditItem Text="I believe the positions I take are correct and do everything to protect such positions." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="7/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q7" ClientInstanceName="Q7" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I find it better to postpone confronting an issue to give myself time to reflect on the options." Value="0" />
																				<dx:ListEditItem Text="I prefer to give up a part of my position to get something I need from others." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="8/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q8" ClientInstanceName="Q8" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="When it comes to my goals, I will focus only on my needs to achieve them. " Value="0" />
																				<dx:ListEditItem Text="I always try to be transparent about issues and concerns." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="9/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q9" ClientInstanceName="Q9" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="There will always be differences and it is not worth becoming concerned about such differences. " Value="0" />
																				<dx:ListEditItem Text="I usually try hard to convince others to accept my point of view.  " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="10/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q10" ClientInstanceName="Q10" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="Goals are important to me, I will do everything needed to achieve them. " Value="0" />
																				<dx:ListEditItem Text="Compromising helps me to find the best solutions." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="11/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q11" ClientInstanceName="Q11" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I always try to be transparent about issues and concerns." Value="0" />
																				<dx:ListEditItem Text="Relationships are important to me. Therefore I try not to hurt others by defeating them." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="12/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q12" ClientInstanceName="Q12" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="Controversy can be avoided when I don't take a position. Therefore I remain open neutral" Value="0" />
																				<dx:ListEditItem Text="I let the other person maintain part of their positions if they let me maintain some of mine." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="13/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q13" ClientInstanceName="Q13" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="When there is a difference of opinion I propose meeting halfway as it helps resolve the issue fast." Value="0" />
																				<dx:ListEditItem Text="I persist until my point of view is accepted by others." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="14/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q14" ClientInstanceName="Q14" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I convey my ideas to others and invite them to share theirs with me. " Value="0" />
																				<dx:ListEditItem Text="I highlight the benefits of my position in a logical manner to convince." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="15/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q15" ClientInstanceName="Q15" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="Relationships are important to me. Therefore I try not to hurt others by defeating them." Value="0" />
																				<dx:ListEditItem Text="I dislike tension and I am willing to let go of my position to avoid tension. " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="16/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q16" ClientInstanceName="Q16" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I do my best to avoid hurting the feeling of others." Value="0" />
																				<dx:ListEditItem Text="I highlight the benefits of my position to others." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="17/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q17" ClientInstanceName="Q17" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I focus on working towards my goals before thinking of others." Value="0" />
																				<dx:ListEditItem Text="I dislike tension and I am willing to let go of my position to avoid tension. " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="18/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q18" ClientInstanceName="Q18" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I let others maintain their point of views, if it makes them happy." Value="0" />
																				<dx:ListEditItem Text="I let the other person maintain part of their positions if they let me maintain some of mine." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="19/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q19" ClientInstanceName="Q19" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I always try to be transparent about issues and concerns." Value="0" />
																				<dx:ListEditItem Text="I postpone dealing with issues to give me time to reflect on them.  " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="20/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q20" ClientInstanceName="Q20" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="When there are difference of opinion, I take immediate action to resolve." Value="0" />
																				<dx:ListEditItem Text="I attempt to find a solution where both parties feel fair about the pluses and minuses" Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="21/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q21" ClientInstanceName="Q21" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I do my best to fulfil the other person’s wishes during negotiations." Value="0" />
																				<dx:ListEditItem Text="When there are problems, I prefer to discuss it to find a solution." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="22/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q22" ClientInstanceName="Q22" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I usually attempt to find a balance between the positions of the other party and mine." Value="0" />
																				<dx:ListEditItem Text="I strongly express and try to fulfil my aspirations." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="23/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q23" ClientInstanceName="Q23" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I am usually concerned about fulfilling the aspirations of all parties." Value="0" />
																				<dx:ListEditItem Text="I often prefer if others come forward to deal with issues" Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="24/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q24" ClientInstanceName="Q24" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I attempt  to meet the aspirations of the other party if their position seems important to them.  " Value="0" />
																				<dx:ListEditItem Text="I attempt to convince others to compromise." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="25/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q25" ClientInstanceName="Q25" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I attempt to help others to logically see the advantages of my stance. " Value="0" />
																				<dx:ListEditItem Text="I do my best to fulfil the other person’s wishes during negotiations." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="26/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q26" ClientInstanceName="Q26" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I propose solutions that meets aspirations of both parties midway." Value="0" />
																				<dx:ListEditItem Text="I am usually interested in  fulfilling the aspirations of everyone in dispute. " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="27/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q27" ClientInstanceName="Q27" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="Sometime I avoid taking positions that can lead to a dispute." Value="0" />
																				<dx:ListEditItem Text="Sometime I might let others maintain their positions, if it makes them happy." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="28/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q28" ClientInstanceName="Q28" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="When it comes to my goals, I will focus only on my needs to achieve them." Value="0" />
																				<dx:ListEditItem Text="I usually seek the help of others to find answers to problems." Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="29/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q29" ClientInstanceName="Q29" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I propose solutions that meets aspirations of both parties midway." Value="0" />
																				<dx:ListEditItem Text="There will always be differences and it is not worth being concerned about such differences" Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
													<dx:LayoutGroup Border-BorderStyle="None" BackColor="Transparent" Caption="30/30 - Select the statement describing your prefered behaviour  for each set of behavious." GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right">
														<Border BorderStyle="None"></Border>
														<Items>
															<dx:LayoutItem Caption="">
																<LayoutItemNestedControlCollection>
																	<dx:LayoutItemNestedControlContainer>
																		<dx:ASPxRadioButtonList ID="Q30" ClientInstanceName="Q30" runat="server" RepeatDirection="Vertical">
																			<Items>
																				<dx:ListEditItem Text="I do my best to avoid hurting the feeling of others." Value="0" />
																				<dx:ListEditItem Text="I share details of problems with others as it helps finding a solution. " Value="1" />
																			</Items>
																			<ValidationSettings ErrorText="" ErrorTextPosition="Bottom">
																				<RequiredField ErrorText="You must select at least one item." IsRequired="True" />
																			</ValidationSettings>
																		</dx:ASPxRadioButtonList>
																	</dx:LayoutItemNestedControlContainer>
																</LayoutItemNestedControlCollection>
															</dx:LayoutItem><%-- And other layout items --%>
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
			<dx:ASPxProgressBar Visible="false" ID="ASPxProgressBar1" Border-BorderStyle="None" ShowPosition="false" runat="server" Maximum="30" Width="100%" Height="5px" Position="0" DisplayMode="Custom" EnableTheming="False">
				<IndicatorStyle BackColor="Lime"></IndicatorStyle>
				<RootStyle BackColor="White"></RootStyle>
				<Border BorderStyle="None"></Border>
			</dx:ASPxProgressBar>
			<br />
			
			<div class="row">
				<div class="col-6 col-sm-2">
					<dx:BootstrapButton ID="ASPxButton2" Width="150px" ClientInstanceName="btnPre" runat="server" Text="Previous" AutoPostBack="false">
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
							   else if(activeTab ==5)
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
								   carTabPage.SetActiveTabIndex(24);
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
									//btn.SetEnabled(false);
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
                        <dx:BootstrapButton  Text="Finish" Width="150px" runat="server" ClientInstanceName="btnFinish" OnClick="btnNext_Click" ID="btnNext"  UseSubmitBehavior="false">
				<SettingsBootstrap RenderOption="Warning" />
                            <ClientSideEvents Click="function(s, e) {
                                //CallbackFinish.PerformCallback();
                                LoadingPanel.SetText('Generating report...');
                                LoadingPanel.Show();
	                         btnFinish.SetVisible(false);
                            btnPre.SetVisible(false);
                            }" />
			</dx:BootstrapButton>
						<dx:BootstrapButton ID="ASPxButton1" Width="150px" ClientIDMode="Static" ClientInstanceName="btn" runat="server" Text="Next"  AutoPostBack="false">
							<SettingsBootstrap RenderOption="Primary" />
                            <ClientSideEvents Click="function(s, e) 
							   {
								

                                Callback.PerformCallback();
                                LoadingPanel.SetText('Saving...Please wait...')
                                LoadingPanel.Show();

							   var activeTab = carTabPage.GetActiveTabIndex();
							  
								if(activeTab == 0)
									 {
										
                                 carTabPage.SetActiveTabIndex(1);
                                btnFinish.SetVisible(false);
									 }
								else if(activeTab==1)
								{
										  btnPre.SetText('Previous');
                                btn.SetText('Next');
								  carTabPage.SetActiveTabIndex(2);
                                btnFinish.SetVisible(false);
								}
								 else if(activeTab == 2 && Q1.GetIsValid())
								 {
								   carTabPage.SetActiveTabIndex(3);
                                btnFinish.SetVisible(false);
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
                                    //btn.SetVisible(true);
                                    //btnFinish.SetVisible(true);
                                    //btnFinish.SetEnabled(true);
								  }
								else if(activeTab == 31 && Q30.GetIsValid())
								 {
				                   carTabPage.SetActiveTabIndex(32);
                                    //btn.SetEnabled(false);
                                btn.SetVisible(false);
                                btnFinish.SetVisible(true);
                                
								  }
							   else
							   {
							   return false;
							   }
			   
							 if(activeTab>0 && activeTab
								<31)
							   {
							   lblImportant.SetVisible(true);
							   //ASPxRoundPanel1.SetHeaderText('Interaction Personality Type Assessment ' + activeTab + ' of 30');
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
							</dx:BootstrapButton>
						</div>
					</div>
					<br />
					<br />
					<dx:ASPxLabel runat="server" ID="ASPxLabel1" ForeColor="Red" ClientInstanceName="lblImportant" Font-Size="Small" ></dx:ASPxLabel>
					
                    <dx:ASPxCallback ID="ASPxCallback2" OnCallback="ASPxCallback2_Callback" runat="server" ClientInstanceName="CallbackFinish">
						<ClientSideEvents CallbackComplete="function(s, e) {
                            
                            LoadingPanel.Hide(); 
                            //window.location.href = 'Home.aspx';    
                            
                            }" />
					</dx:ASPxCallback>
    
                    <dx:ASPxCallback ID="ASPxCallback1" OnCallback="ASPxCallback1_Callback" runat="server" ClientInstanceName="Callback">
						<ClientSideEvents CallbackComplete="function(s, e) { LoadingPanel.Hide(); }" />
					</dx:ASPxCallback>
					<dx:ASPxLoadingPanel Text="Please wait..." ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>
					<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
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

                        if (activeTab == 32) {
                            btn.SetVisible(false);
                             btnFinish.SetVisible(true);
                        }
                        if (activeTab != 32) {
                            btnFinish.SetVisible(false);
                            //btnFinish.SetEnabled(true);
                        }
                        //lblImportant.SetVisible(false);
                        function OnClick(s, e) {

                            $.ajax({

                                type: "POST",

                                contentType: "application/json; charset=utf-8",

                                url: "Interaction-Style-assessment.aspx/Next",

                                data: "{}",

                                dataType: "json",

                                success: function (msg) {
                                    alert(msg)

                                }

                            });

                        }
			</script>
				</asp:Content>