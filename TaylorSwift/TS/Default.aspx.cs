using dominio;
using System;

namespace TS
{
    public partial class Default : System.Web.UI.Page //  PAGINA DE LA GRILLA
    {
        protected void Page_Load(object sender, EventArgs e) // EVENTO QUE CARGA SIEMPRE QUE INICIA LA PAGINA O SI SE EJECUTA UN EVENTO DENTRO DE DEFAULT.
        {
            if (Session["listaAlbums"] == null)
            {
                TaylorNegocio negocio = new TaylorNegocio();

                Session.Add("listaAlbums", negocio.listar());

            }

            dgvAlbums.DataSource = Session["listaAlbums"];
            dgvAlbums.DataBind();
        }

        protected void dgvAlbums_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvAlbums.SelectedDataKey.Value.ToString();
            Response.Redirect("Form.aspx?id=" + id);
        }
    }
}