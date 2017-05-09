<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IncluirDispositivo.aspx.cs" Inherits="IOT.IncluirDispositivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="frmCadastro" runat="server">
    <div>
        <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <label for="txtNome">Nome</label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />
        <br />
        <label for="RadioTipo">Tipo</label>
        <asp:RadioButtonList ID="radioTipo" runat="server">
            <asp:ListItem Value="Sensor"></asp:ListItem>
            <asp:ListItem Value="Ativo"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
    </div>
    </form> 
</body>
</html>
