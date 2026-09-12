<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Encuesta.aspx.cs"
    Inherits="UrbanStep.Encuesta" %>

<!DOCTYPE html>

<html>

<head runat="server">

<title>Encuesta UrbanStep</title>

<style>

body {
    font-family: Arial;
    background: #eeeeee;
}

.encuesta {
    width: 600px;
    margin: 50px auto;
    background: white;
    padding: 30px;
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

<div class="encuesta">

<h1>Encuesta de satisfacción</h1>

<h3>
1. ¿Cómo califica su experiencia en UrbanStep?
</h3>

<asp:RadioButtonList
    ID="rblExperiencia"
    runat="server">

    <asp:ListItem
        Value="Excelente">
        Excelente
    </asp:ListItem>

    <asp:ListItem
        Value="Buena">
        Buena
    </asp:ListItem>

    <asp:ListItem
        Value="Regular">
        Regular
    </asp:ListItem>

    <asp:ListItem
        Value="Mala">
        Mala
    </asp:ListItem>

</asp:RadioButtonList>

<asp:RequiredFieldValidator
    ID="rfvExperiencia"
    runat="server"
    ControlToValidate="rblExperiencia"
    ErrorMessage="Seleccione una opción"
    ForeColor="Red">
</asp:RequiredFieldValidator>

<h3>
2. ¿Volvería a comprar en UrbanStep?
</h3>

<asp:RadioButtonList
    ID="rblVolveria"
    runat="server">

    <asp:ListItem>Sí</asp:ListItem>
    <asp:ListItem>No</asp:ListItem>

</asp:RadioButtonList>

<h3>3. Comentarios</h3>

<asp:TextBox
    ID="txtComentarios"
    runat="server"
    TextMode="MultiLine"
    Rows="5"
    Width="500">
</asp:TextBox>

<br /><br />

<asp:Button
    ID="btnEnviar"
    runat="server"
    Text="Enviar encuesta"
    CssClass="boton"
    OnClick="btnEnviar_Click" />

<br /><br />

<asp:Label
    ID="lblMensaje"
    runat="server">
</asp:Label>

</div>

</form>

</body>

</html>