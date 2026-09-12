using System;

namespace UrbanStep
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["Nombre"] = txtNombre.Text;
                Session["Apellido"] = txtApellido.Text;
                Session["Cedula"] = txtCedula.Text;
                Session["Telefono"] = txtTelefono.Text;
                Session["Correo"] = txtCorreo.Text;
                Session["Password"] = txtPassword.Text;

                lblMensaje.Text =
                    "Cuenta creada correctamente.";

                Response.Redirect("Factura.aspx");
            }
        }
    }
}