<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Factura.aspx.cs"
    Inherits="UrbanStep.Factura" %>

<!DOCTYPE html>

<html>

<head runat="server">

<title>Factura UrbanStep</title>

<style>

body {
    font-family: Arial;
    background: #eeeeee;
}

.factura {
    width: 900px;
    margin: 30px auto;
    background: white;
    padding: 30px;
}

h1 {
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
}

td, th {
    border: 1px solid #ccc;
    padding: 10px;
}

th {
    background: black;
    color: white;
}

.campo {
    padding: 7px;
}

.resumen {
    text-align: right;
    margin-top: 25px;
}

.total {
    font-size: 24px;
    font-weight: bold;
}

.boton {
    padding: 12px 25px;
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

<div class="factura">

<h1>URBANSTEP</h1>
<p style="text-align:center">
    Almacén de Zapatos
</p>

<hr />

<h3>Información del cliente</h3>

<table>

<tr>

<td>Nombre</td>

<td>

<asp:TextBox
    ID="txtCliente"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvCliente"
    runat="server"
    ControlToValidate="txtCliente"
    ErrorMessage="*"
    CssClass="error">
</asp:RequiredFieldValidator>

</td>

<td>Cédula</td>

<td>

<asp:TextBox
    ID="txtCedula"
    runat="server"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvCedula"
    runat="server"
    ControlToValidate="txtCedula"
    ErrorMessage="*"
    CssClass="error">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
    ID="revCedula"
    runat="server"
    ControlToValidate="txtCedula"
    ValidationExpression="^[0-9]+$"
    ErrorMessage="Solo números"
    CssClass="error">
</asp:RegularExpressionValidator>

</td>

</tr>

<tr>

<td>Dirección</td>

<td>

<asp:TextBox
    ID="txtDireccion"
    runat="server"
    CssClass="campo">
</asp:TextBox>

</td>

<td>Teléfono</td>

<td>

<asp:TextBox
    ID="txtTelefono"
    runat="server"
    CssClass="campo">
</asp:TextBox>

</td>

</tr>

</table>

<h3>Producto</h3>

<table>

<tr>

<th>Descripción</th>
<th>Presentación</th>
<th>Cantidad</th>
<th>Precio</th>
<th>Subtotal</th>

</tr>

<tr>

<td>

<asp:DropDownList
    ID="ddlProducto"
    runat="server"
    CssClass="campo"
    AutoPostBack="true"
    OnSelectedIndexChanged="ddlProducto_SelectedIndexChanged">

    <asp:ListItem Value="0">
        Seleccione...
    </asp:ListItem>

    <asp:ListItem Value="350000">
        Nike Air Max
    </asp:ListItem>

    <asp:ListItem Value="280000">
        Adidas Superstar
    </asp:ListItem>

    <asp:ListItem Value="220000">
        Puma Smash
    </asp:ListItem>

    <asp:ListItem Value="250000">
        Vans Old Skool
    </asp:ListItem>

    <asp:ListItem Value="230000">
        Converse Classic
    </asp:ListItem>

</asp:DropDownList>

</td>

<td>

<asp:DropDownList
    ID="ddlPresentacion"
    runat="server">

    <asp:ListItem>Caja</asp:ListItem>
    <asp:ListItem>Unidad</asp:ListItem>
    <asp:ListItem>Par</asp:ListItem>

</asp:DropDownList>

</td>

<td>

<asp:TextBox
    ID="txtCantidad"
    runat="server"
    TextMode="Number"
    CssClass="campo">
</asp:TextBox>

<asp:RequiredFieldValidator
    ID="rfvCantidad"
    runat="server"
    ControlToValidate="txtCantidad"
    ErrorMessage="*"
    CssClass="error">
</asp:RequiredFieldValidator>

<asp:RegularExpressionValidator
    ID="revCantidad"
    runat="server"
    ControlToValidate="txtCantidad"
    ValidationExpression="^[1-9][0-9]*$"
    ErrorMessage="Cantidad inválida"
    CssClass="error">
</asp:RegularExpressionValidator>

</td>

<td>

<asp:Label
    ID="lblPrecio"
    runat="server"
    Text="$0">
</asp:Label>

</td>

<td>

<asp:Label
    ID="lblSubtotal"
    runat="server"
    Text="$0">
</asp:Label>

</td>

</tr>

</table>

<br />

<asp:Button
    ID="btnCalcular"
    runat="server"
    Text="CALCULAR FACTURA"
    CssClass="boton"
    OnClick="btnCalcular_Click" />

<div class="resumen">

<p>
Subtotal:
<asp:Label
    ID="lblSubtotalFinal"
    runat="server"
    Text="$0">
</asp:Label>
</p>

<p>
IVA (19%):
<asp:Label
    ID="lblIVA"
    runat="server"
    Text="$0">
</asp:Label>
</p>

<p>
Descuento:
<asp:Label
    ID="lblDescuento"
    runat="server"
    Text="$0">
</asp:Label>
</p>

<p class="total">
TOTAL:
<asp:Label
    ID="lblTotal"
    runat="server"
    Text="$0">
</asp:Label>
</p>

</div>

<br />

<asp:Button
    ID="btnEncuesta"
    runat="server"
    Text="Realizar encuesta"
    CssClass="boton"
    CausesValidation="false"
    OnClick="btnEncuesta_Click" />

</div>

</form>

</body>

</html>
