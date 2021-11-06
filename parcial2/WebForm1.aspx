<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="parcial2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <title></title>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Parcial 2</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="WebForm2">Generar Factura</a>
        <a class="nav-link" href="WebForm3">Vendedores</a>

   
      </div>
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="card w-50">
        <div><h1>Registro de Vendedores</h1></div>
       <div class="card-body">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cédula" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Apellido" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Dirección" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Fijo" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Celular" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Correo" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Email" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label8" runat="server" Text="Edad" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label9" runat="server" Text="Sexo" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label10" runat="server" Text="Fecha" class="form-label"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Enviar" class="btn btn-primary"/>
        </div>
           </div>
            </div>
    </form>
</body>
</html>
