<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="parcial2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title></title>
    <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="WebForm1">Vendedores</a>
        <a class="nav-link" href="WebForm3">clientes</a>

        <a class="nav-link" href="#">Pricing</a>
      </div>
    </div>
  </div>
</nav>
    <form id="form1" runat="server">

        <div>


            <div class="card-body">

                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Cliente</label>
                    <asp:DropDownList class="form-select" ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [nombre] FROM [cliente]"></asp:SqlDataSource>
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Vendedor</label>
                    <asp:DropDownList class="form-select" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Nombre] FROM [vendedor]"></asp:SqlDataSource>
                </div>
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Producto</label>
                    <asp:DropDownList ID="DropDownList4" class="form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [nombre] FROM [Table]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pedido] WHERE [nroPedido] = @nroPedido" InsertCommand="INSERT INTO [Pedido] ([clienteId], [vendedorId], [tipoPagoId]) VALUES (@clienteId, @vendedorId, @tipoPagoId);SELECT @nroPedido=Scope_Identity();" SelectCommand="SELECT * FROM [Pedido]" UpdateCommand="UPDATE [Pedido] SET [clienteId] = @clienteId, [vendedorId] = @vendedorId, [tipoPagoId] = @tipoPagoId, [estadoId] = @estadoId, [TotalPedido] = @TotalPedido WHERE [nroPedido] = @nroPedido" OnInserted="SqlDataSource4_Inserted">
                        <DeleteParameters>
                            <asp:Parameter Name="nroPedido" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter Name="clienteId" Type="Int32" ControlID="DropDownList3" PropertyName="SelectedValue" />
                            <asp:ControlParameter Name="vendedorId" Type="Int32" ControlID="DropDownList1" PropertyName="SelectedValue" />
                            <asp:ControlParameter Name="tipoPagoId" Type="Int32" ControlID="DropDownList5" PropertyName="SelectedValue" />

                            <asp:Parameter Name="nroPedido" Type="Int64" Direction="Output" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="clienteId" Type="Int32" />
                            <asp:Parameter Name="vendedorId" Type="Int32" />
                            <asp:Parameter Name="tipoPagoId" Type="Int32" />
                            <asp:Parameter Name="estadoId" Type="Int32" />
                            <asp:Parameter Name="TotalPedido" Type="Single" />
                            <asp:Parameter Name="nroPedido" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />

                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Cantidad</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox12" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">
                        Forma de pago<br />
                    </label>
                    &nbsp;
                    <asp:DropDownList ID="DropDownList5" class="form-select" runat="server" DataSourceID="SqlDataSource6" DataTextField="descripcion" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoPago]"></asp:SqlDataSource>
                </div>
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Agregar al carrito" OnClick="Button1_Click" />
                </div>
                <br />

                <div class="col-md-6">


                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="nroPedido" HeaderText="nroPedido" SortExpression="nroPedido" />
                            <asp:BoundField DataField="codigoProducto" HeaderText="codigoProducto" SortExpression="codigoProducto" />
                            <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                            <asp:BoundField DataField="totalPedidodetalle" HeaderText="totalPedidodetalle" SortExpression="totalPedidodetalle" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PedidoDetalle] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PedidoDetalle] ([nroPedido], [codigoProducto], [cantidad], [totalPedidodetalle]) VALUES (@nroPedido, @codigoProducto, @cantidad, @totalPedidodetalle)" SelectCommand="SELECT * FROM [PedidoDetalle]" UpdateCommand="UPDATE [PedidoDetalle] SET [nroPedido] = @nroPedido, [codigoProducto] = @codigoProducto, [cantidad] = @cantidad, [totalPedidodetalle] = @totalPedidodetalle WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:SessionParameter Name="nroPedido" Type="Int32" SessionField="nroPedido" />
                            <asp:ControlParameter Name="codigoProducto" Type="Int32" ControlID="DropDownList1" PropertyName="SelectedValue" />
                            <asp:ControlParameter Name="cantidad" Type="Int32" ControlID="TextBox12" />
                            <asp:SessionParameter Name="totalPedidodetalle" Type="Single" SessionField="TotalPedido" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nroPedido" Type="Int32" />
                            <asp:Parameter Name="codigoProducto" Type="Int32" />
                            <asp:Parameter Name="cantidad" Type="Int32" />
                            <asp:Parameter Name="totalPedidodetalle" Type="Single" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Total"></asp:Label>
                    &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </div>
                 <div class="col-md-6">
                    
                    <asp:Button class="btn btn-secondary" ID="Button4" runat="server" Text="Pagar" OnClick="Button4_Click" />
                </div>
            </div>

        </div>

    </form>

</body>
</html>
