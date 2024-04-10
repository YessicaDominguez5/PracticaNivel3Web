using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aprendiendo
{
    public partial class MarcoPoloNala : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            string nombre = TxtNombre.Text;
            LabelBienvenida.Text = "Hola " + nombre;
            Response.Redirect("About.aspx?nombre=" + nombre, false);
        }

        protected void TxtNombre_TextChanged(object sender, EventArgs e)
        {
            LabelSecundaria.Text = "olé,olé,olé Taylor...Taylor";
        }
    }
}