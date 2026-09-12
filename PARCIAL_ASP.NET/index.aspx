<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Index.aspx.cs"
    Inherits="UrbanStep.Index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>UrbanStep - Inicio de sesión</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
        }

        .contenedor {
            width: 400px;
            margin: 80px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px #aaa;
        }

        h1 {
            text-align: center;
        }

        .campo {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
        }

        .boton {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background: black;
            color: white;
            border: none;
            cursor: pointer;
        }

        .error {
            color: red;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="contenedor">

    <h1>URBANSTEP</h1>
    <h3>Almacén de Zapatos</h3>

    <asp:Label
        ID="lblCorreo"
        runat="server"
        Text="Correo electrónico">
    </asp:Label>

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
        ErrorMessage="El correo es obligatorio"
        CssClass="error">
    </asp:RequiredFieldValidator>

    <br />

    <asp:RegularExpressionValidator
        ID="revCorreo"
        runat="server"
        ControlToValidate="txtCorreo"
        ErrorMessage="Ingrese un correo válido"
        CssClass="error"
        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
    </asp:RegularExpressionValidator>

    <br /><br />

    <asp:Label
        ID="lblPassword"
        runat="server"
        Text="Contraseña">
    </asp:Label>

    <asp:TextBox
        ID="txtPassword"
        runat="server"
        CssClass="campo"
        TextMode="Password">
    </asp:TextBox>

    <asp:RequiredFieldValidator
        ID="rfvPassword"
        runat="server"
        ControlToValidate="txtPassword"
        ErrorMessage="La contraseña es obligatoria"
        CssClass="error">
    </asp:RequiredFieldValidator>

    <asp:Button
        ID="btnIngresar"
        runat="server"
        Text="INGRESAR"
        CssClass="boton"
        OnClick="btnIngresar_Click" />

    <asp:Label
        ID="lblMensaje"
        runat="server"
        CssClass="error">
    </asp:Label>

    <hr />

    <asp:Button
        ID="btnRecuperar"
        runat="server"
        Text="Olvidé mi contraseña"
        CssClass="boton"
        CausesValidation="false"
        OnClick="btnRecuperar_Click" />

    <asp:Button
        ID="btnRegistro"
        runat="server"
        Text="Crear cuenta"
        CssClass="boton"
        CausesValidation="false"
        OnClick="btnRegistro_Click" />

</div>

</form>

</body>
</html>