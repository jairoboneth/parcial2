<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="parcial2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="card text-center w-50">
            <div class="card-header">
                Datos del cliente
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Nombre</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label">Apellido</label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Cédula</label>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Dirección</label>
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Fijo</label>
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Celular</label>
                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Correo</label>
                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Edad</label>
                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Sexo</label>
                        <asp:DropDownList ID="DropDownList1" class="form-select" runat="server">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail4" class="form-label">Fecha</label>
                        <asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" Text="guardar" OnClick="Button1_Click" />
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [cliente] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cliente] ([cedula], [nombre], [apellido], [direccion], [fijo], [celular], [correo], [edad], [sexo], [fecha ]) VALUES (@cedula, @nombre, @apellido, @direccion, @fijo, @celular, @correo, @edad, @sexo, @fecha_)" SelectCommand="SELECT * FROM [cliente]" UpdateCommand="UPDATE [cliente] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [fijo] = @fijo, [celular] = @celular, [correo] = @correo, [edad] = @edad, [sexo] = @sexo, [fecha ] = @fecha_ WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="cedula" Type="String" ControlID="TextBox1" />
                <asp:ControlParameter Name="nombre" Type="String" ControlID="TextBox2"/>
                <asp:ControlParameter Name="apellido" Type="String" ControlID="TextBox3" />
                <asp:ControlParameter Name="direccion" Type="String" ControlID="TextBox4"/>
                <asp:ControlParameter Name="fijo" Type="String" ControlID="TextBox5"/>
                <asp:ControlParameter Name="celular" Type="String" ControlID="TextBox6"/>
                <asp:ControlParameter Name="correo" Type="String" ControlID="TextBox7"/>
                <asp:ControlParameter Name="edad" Type="String" ControlID="TextBox8"/>
                <asp:ControlParameter Name="sexo" Type="String" ControlID="DropDownList1" PropertyName="SelectedValue"/>
                <asp:ControlParameter Name="fecha_" Type="String" ControlID="TextBox10"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cedula" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="fijo" Type="String" />
                <asp:Parameter Name="celular" Type="String" />
                <asp:Parameter Name="correo" Type="String" />
                <asp:Parameter Name="edad" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="fecha_" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
