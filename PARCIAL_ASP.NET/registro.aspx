<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Registro.aspx.cs"
    Inherits="UrbanStep.Registro" %>

<!DOCTYPE html>

<html>

<head runat="server">

<title>Registro - UrbanStep</title>

<style>

    body {
        font-family: Arial;
        background: #eeeeee;
    }

    .formulario {
        width: 500px;
        margin: 30px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
    }

    .campo {
        width: 95%;
        padding: 8px;
        margin: 5px 0 10px 0;
    }

    .error {
        color: red;
        font-size: 13px;
    }

    .boton {
        padding: 10px 20px;
        background: black;
        color: white;
        border: none;
    }

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="formulario">

<h2>Crear cuenta UrbanStep</h2>

Nombre:

<asp:TextBox
    ID="txtNombre"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvNombre"
    runat="server"
    ControlToValidate="txtNombre"
    ErrorMessage="Ingrese el nombre"
    CssClass="error">
</asp:RequiredFieldValidator>

<br />

Apellido:

<asp:TextBox
    ID="txtApellido"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvApellido"
    runat="server"
    ControlToValidate="txtApellido"
    ErrorMessage="Ingrese el apellido"
    CssClass="error">
</asp:RequiredFieldValidator>

<br />

Cédula:

<asp:TextBox
    ID="txtCedula"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvCedula"
    runat="server"
    ControlToValidate="txtCedula"
    ErrorMessage="Ingrese la cédula"
    CssClass="error">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
    ID="revCedula"
    runat="server"
    ControlToValidate="txtCedula"
    ValidationExpression="^[0-9]+$"
    ErrorMessage="Solo se permiten números"
    CssClass="error">
</asp:RegularExpressionValidator>

<br />

Teléfono:

<asp:TextBox
    ID="txtTelefono"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RegularExpressionValidator
    ID="revTelefono"
    runat="server"
    ControlToValidate="txtTelefono"
    ValidationExpression="^[0-9]{10}$"
    ErrorMessage="Ingrese 10 números"
    CssClass="error">
</asp:RegularExpressionValidator>

<br />

Correo:

<asp:TextBox
    ID="txtCorreo"
    runat="server"
    CssClass="campo"
    TextMode="Email">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvCorreo"
    runat="server"
    ControlToValidate="txtCorreo"
    ErrorMessage="Ingrese el correo"
    CssClass="error">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
    ID="revCorreo"
    runat="server"
    ControlToValidate="txtCorreo"
    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
    ErrorMessage="Correo no válido"
    CssClass="error">
</asp:RegularExpressionValidator>

<br />

Contraseña:

<asp:TextBox
    ID="txtPassword"
    runat="server"
    TextMode="Password"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvPassword"
    runat="server"
    ControlToValidate="txtPassword"
    ErrorMessage="Ingrese una contraseña"
    CssClass="error">
</asp:RequiredFieldValidator>

<br />

Confirmar contraseña:

<asp:TextBox
    ID="txtConfirmar"
    runat="server"
    TextMode="Password"
    CssClass="campo">
</asp:TextBox>

<asp:CompareValidator
    ID="cvPassword"
    runat="server"
    ControlToValidate="txtConfirmar"
    ControlToCompare="txtPassword"
    ErrorMessage="Las contraseñas no coinciden"
    CssClass="error">
</asp:CompareValidator>

<br /><br />

<asp:Button
    ID="btnRegistrar"
    runat="server"
    Text="Crear cuenta"
    CssClass="boton"
    OnClick="btnRegistrar_Click" />

<br /><br />

<asp:Label
    ID="lblMensaje"
    runat="server">
</asp:Label>

</div>

</form>

</body>

</html>
