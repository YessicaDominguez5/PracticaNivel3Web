using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace ejemplo_web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Aca carga la grilla

            if (Session["listaAutos"] == null) /*si es la primera vez que venis al page load carga los datos predeterminados*/
            {

                AutoNegocio negocio = new AutoNegocio();
                Session.Add("listaAutos", negocio.listar()); /*Listar devuelve una lista con datos predeterminados, aca se carga el session*/

            }
            dgvAutos.DataSource = Session["listaAutos"];
            dgvAutos.DataBind();
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            //var algo = dgvAutos.SelectedRow.Cells[0].Text;
            var id = dgvAutos.SelectedDataKey.Value.ToString();
            Response.Redirect("AutoForm.aspx?id=" + id);
        }
    }
}