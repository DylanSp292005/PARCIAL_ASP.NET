using System;

namespace UrbanStep
{
    public partial class Encuesta : System.Web.UI.Page
    {
        protected void Page_Load(
            object sender,
            EventArgs e)
        {

        }

        protected void btnEnviar_Click(
            object sender,
            EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMensaje.Text =
                    "¡Gracias por calificar UrbanStep!";
            }
        }
    }
}