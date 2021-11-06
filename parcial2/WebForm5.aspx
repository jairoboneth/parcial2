<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="parcial2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nroPedido" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nroPedido" HeaderText="nroPedido" InsertVisible="False" ReadOnly="True" SortExpression="nroPedido" />
                <asp:BoundField DataField="clienteId" HeaderText="clienteId" SortExpression="clienteId" />
                <asp:BoundField DataField="vendedorId" HeaderText="vendedorId" SortExpression="vendedorId" />
                <asp:BoundField DataField="tipoPagoId" HeaderText="tipoPagoId" SortExpression="tipoPagoId" />
                <asp:BoundField DataField="estadoId" HeaderText="estadoId" SortExpression="estadoId" />
                <asp:BoundField DataField="TotalPedido" HeaderText="TotalPedido" SortExpression="TotalPedido" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Pedido]"></asp:SqlDataSource>
        <div>

        </div>
    </form>
</body>
</html>
