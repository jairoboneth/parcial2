<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="parcial2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title></title>
</head>
<body>
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
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [nombre] FROM [Table]"></asp:SqlDataSource>
                    <br />

                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Cantidad</label>
                    <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">Forma de pago<br />
                    </label>&nbsp;<asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
                </div>

                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Agregar al carrito" OnClick="Button1_Click" />

                <br />

                <div class="col-md-6">

             
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                    <br />
                </div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pedido] WHERE [nroPedido] = @nroPedido" SelectCommand="SELECT [nroPedido] FROM [Pedido]">
                    <DeleteParameters>
                        <asp:Parameter Name="nroPedido" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>

            </div>
        </div>


    </form>

</body>
</html>
