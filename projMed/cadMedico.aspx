<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadMedico.aspx.cs" Inherits="cadMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Faça o seu cadastro :</h1>
       
    <asp:Label ID="lblMensagem" runat="server" Text="Mensagem:"></asp:Label>       
    <br />
    Nome médico :
    <asp:TextBox ID="txtNome" runat="server" MaxLength="40" ToolTip="Digite o nome. Máx. 40 caracteres" Width="241px"></asp:TextBox>
    <br />
    Data Nascimento :
    <asp:TextBox ID="txtNascimento" runat="server" Width="141px"></asp:TextBox>
&nbsp; 
    <br />
    E-mail :&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50"  Width="248px"></asp:TextBox>
    <br />
    <br />
    Celular :
    <asp:TextBox ID="txtCelular" runat="server" MaxLength="50" Width="248px"></asp:TextBox>
    <br />
    <br />
    Telefone :
    <asp:TextBox ID="txtTelefone" runat="server" MaxLength="50" Width="248px"></asp:TextBox>
    <br />
    <br />
    Especialidade :
    <br />
    <asp:DropDownList ID="ddlEspec" runat="server">
        <asp:ListItem Enabled="False">Pediatria</asp:ListItem>
        <asp:ListItem>Psicologia</asp:ListItem>
        <asp:ListItem>Psiquiatria</asp:ListItem>
        <asp:ListItem>Fisioterapia</asp:ListItem>
        <asp:ListItem>Clínico Geral</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnProsseguir" runat="server" OnClick="btnProsseguir_Click" Text="Cadastrar" />
    </form>
    
</body>
</html>
