<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="parcial2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><h1>Registro de Vendedores</h1></div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cédula"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Fijo"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Celular"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label8" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label9" runat="server" Text="Sexo"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label10" runat="server" Text="Fecha"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Enviar" />
        </div>
    </form>
</body>
</html>
