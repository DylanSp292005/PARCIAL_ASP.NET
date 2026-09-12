using System;

namespace UrbanStep
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlProducto_SelectedIndexChanged(
            object sender,
            EventArgs e)
        {
            decimal precio;

            if (decimal.TryParse(
                ddlProducto.SelectedValue,
                out precio))
            {
                lblPrecio.Text =
                    precio.ToString("C0");
            }
        }

        protected void btnCalcular_Click(
            object sender,
            EventArgs e)
        {
            if (Page.IsValid)
            {
                if (ddlProducto.SelectedIndex == 0)
                {
                    lblTotal.Text =
                        "Seleccione un producto";

                    return;
                }

                int cantidad =
                    int.Parse(txtCantidad.Text);

                decimal precio =
                    decimal.Parse(
                        ddlProducto.SelectedValue);

                // Cantidad x precio unitario
                decimal subtotal =
                    cantidad * precio;

                // IVA 19%
                decimal iva =
                    subtotal * 0.19m;

                // Ejemplo:
                // descuento del 10% cuando
                // compra 3 pares o más

                decimal descuento = 0;

                if (cantidad >= 3)
                {
                    descuento =
                        subtotal * 0.10m;
                }

                // TOTAL
                decimal total =
                    subtotal + iva - descuento;

                lblPrecio.Text =
                    precio.ToString("C0");

                lblSubtotal.Text =
                    subtotal.ToString("C0");

                lblSubtotalFinal.Text =
                    subtotal.ToString("C0");

                lblIVA.Text =
                    iva.ToString("C0");

                lblDescuento.Text =
                    descuento.ToString("C0");

                lblTotal.Text =
                    total.ToString("C0");
            }
        }

        protected void btnEncuesta_Click(
            object sender,
            EventArgs e)
        {
            Response.Redirect("Encuesta.aspx");
        }
    }
}