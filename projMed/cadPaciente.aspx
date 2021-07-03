<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadPaciente.aspx.cs" Inherits="cadPaciente" %>

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
            <br />
            Nome paciente :
            <asp:TextBox ID="txtNome" runat="server" MaxLength="40" ToolTip="Digite o nome. Máx. 40 caracteres" Width="241px"></asp:TextBox>
            <br />
            <br />
            Endereço :
            <asp:TextBox ID="txtEndereco" runat="server" MaxLength="50"  Width="241px"></asp:TextBox>
            <br />
            <br />
            Data Nascimento :
            <asp:TextBox ID="txtNascimento" runat="server" Width="141px"></asp:TextBox>
            <br />
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
            <asp:Button ID="btnProsseguir" runat="server" OnClick="btnProsseguir_Click" Text="Cadastrar" />
    </form>
</body>
</html>
