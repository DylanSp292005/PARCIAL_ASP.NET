using System;

namespace UrbanStep
{
    public partial class Index : System.Web.UI.Page
    {
        // Datos fijos porque NO usaremos base de datos
        string correoCorrecto = "admin@urbanstep.com";
        string passwordCorrecto = "12345";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (txtCorreo.Text == correoCorrecto &&
                    txtPassword.Text == passwordCorrecto)
                {
                    Session["usuario"] = txtCorreo.Text;

                    Response.Redirect("Factura.aspx");
                }
                else
                {
                    lblMensaje.Text =
                        "Correo o contraseña incorrectos.";
                }
            }
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            if (txtCorreo.Text == correoCorrecto)
            {
                lblMensaje.Text =
                    "Se ha solicitado la recuperación de contraseña.";
            }
            else
            {
                lblMensaje.Text =
                    "Ingrese el correo registrado.";
            }
        }
    }
}