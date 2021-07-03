<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CancelButtonText="Cancelar" FinishCompleteButtonText="Gravar" FinishPreviousButtonText="Anterior" Font-Names="Verdana" Font-Size="0.8em" HeaderText="Questionário sobre Perfil do(a) aluno(a) ingressante" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick" StartNextButtonText="Segunda Página" StepNextButtonText="Próximo" StepPreviousButtonText="Anterior" Width="100%">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="passo1" runat="server" StepType="Start" title="1-3">
                    <table align="left" cellspacing="1" style="width: 100%; border: 1px solid #CDE2A7">
                        <tr>
                            <td>1. Qual série do Ensino Médio você cursa atualmente?</td>
                            <td>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <asp:RadioButtonList ID="rblResp01" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblResp01_SelectedIndexChanged" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="a">1a série</asp:ListItem>
                                            <asp:ListItem Value="b">2a série</asp:ListItem>
                                            <asp:ListItem Value="c">3a série</asp:ListItem>
                                            <asp:ListItem Selected="true" Value="d">Já conclui</asp:ListItem>
                                        </asp:RadioButtonList>
                                <br />
                                        <asp:Panel ID="pnlEscola" runat="server" Visible="false">
                                            Escola do Ensino Médio:<br />
                                            <asp:TextBox ID="txtEscola" runat="server" MaxLength="50" Width="172px"></asp:TextBox>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr>
                            <td>2. Você possui computador em sua casa?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp02" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="a">Não</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="b">Sim</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 17px">3. Que tipo de acesso à Internet você possui em sua casa?</td>
                            <td style="height: 17px">
                                <asp:RadioButtonList ID="rblResp03" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não tenho</asp:ListItem>
                                    <asp:ListItem Value="b">Linha telefônica discada </asp:ListItem>
                                    <asp:ListItem Value="c">Banda larga (net, gvt, etc.)</asp:ListItem>
                                    <asp:ListItem Value="d">Rede celular 3G</asp:ListItem>
                                    <asp:ListItem Value="e">Rede celular 4G</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="passo2" runat="server" StepType="Step" title="4-6">
                    <table cellspacing="1" style="width: 100%; float: left; border: 1px solid #cde2a7">
                        <tr>
                            <td>4. Você já possui noções sobre a utilização cotidiana de um computador?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp04" runat="server">
                                    <asp:ListItem Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Sei usar medianamente</asp:ListItem>
                                    <asp:ListItem Value="d">Sou um usuário com bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Sou um usuário com conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>5. Você já possui conhecimentos sobre a criação de páginas para Internet?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp05" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                    <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>6. Você já possui conhecimentos sobre a criação de programas de computador?</td>
                            <td>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <asp:RadioButtonList ID="rblResp06" runat="server" OnSelectedIndexChanged="rblResp06_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                            <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                            <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                            <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                            <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:Panel ID="pnlLinguagens" runat="server" Visible="False">
                                            Linguagens de programação conhecidas:<br />
                                            <asp:TextBox ID="txtLinguagens" runat="server" Height="87px" MaxLength="200" TextMode="MultiLine" Width="261px"></asp:TextBox>
                                    <br />
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="passo3" runat="server" StepType="Step" Title="7-9">
                    <table cellspacing="1" style="width: 100%; float: left; border: 1px solid #cde2a7; background-color: #FFFFCC">
                        <tr>
                            <td>7. Você já possui conhecimentos sobre o funcionamento interno de um computador?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp07" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                    <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>8. Você sabe reconhecer as diversas partes internas de um computador?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp08" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                    <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>9. Você já possui conhecimentos sobre o uso de processadores de texto?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp09" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                    <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="passo4" runat="server" StepType="Step" Title="10-12">
                    <table cellspacing="1" style="width: 100%; float: left; border: 1px solid #006600; background-color: #FFFFFF">
                        <tr>
                            <td>10. Você já possui conhecimentos sobre o uso de planilhas eletrônicas?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp10" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Um pouco</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho conhecimentos medianos</asp:ListItem>
                                    <asp:ListItem Value="d">Tenho bons conhecimentos</asp:ListItem>
                                    <asp:ListItem Value="e">Tenho conhecimentos avançados</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>11. Você usa Redes Sociais?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp11" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Às vezes</asp:ListItem>
                                    <asp:ListItem Value="c">Cerca de uma vez ao dia</asp:ListItem>
                                    <asp:ListItem Value="d">Uso bastante</asp:ListItem>
                                    <asp:ListItem Value="e">Sou viciado(a)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>12. Você usa programas de mensagens instantâneas?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp12" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Às vezes</asp:ListItem>
                                    <asp:ListItem Value="c">Cerca de uma vez ao dia</asp:ListItem>
                                    <asp:ListItem Value="d">Uso bastante</asp:ListItem>
                                    <asp:ListItem Value="e">Sou viciado(a)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="passo5" runat="server" StepType="Finish" Title="13-15">
                    <table cellspacing="1" style="width: 100%; float: left; border: 1px solid #006600; background-color: #FFFFCC">
                        <tr>
                            <td>13. Você utiliza correio eletrônico?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp13" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não</asp:ListItem>
                                    <asp:ListItem Value="b">Às vezes</asp:ListItem>
                                    <asp:ListItem Value="c">Cerca de uma vez ao dia</asp:ListItem>
                                    <asp:ListItem Value="d">Uso bastante</asp:ListItem>
                                    <asp:ListItem Value="e">Sou viciado(a)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>14. Como são seus conhecimentos de língua inglesa?</td>
                            <td>
                                <asp:RadioButtonList ID="rblResp14" runat="server">
                                    <asp:ListItem Selected="True" Value="a">Não percebo absolutamente nada</asp:ListItem>
                                    <asp:ListItem Value="b">Sei ler as palavras mas não entendo frases</asp:ListItem>
                                    <asp:ListItem Value="c">Tenho dificuldades em entender o texto todo</asp:ListItem>
                                    <asp:ListItem Value="d">Entendo bem os textos, com pouca dificuldade</asp:ListItem>
                                    <asp:ListItem Value="e">Entendo perfeitamente os textos lidos</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>15. Quais são suas expectativas com relação ao curso em que ingressou?</td>
                            <td>
                                <asp:TextBox ID="txtExpectivas" runat="server" Rows="4" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>
