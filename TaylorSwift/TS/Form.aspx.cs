using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace TS
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            ddlColores.Items.Add("verde");
            ddlColores.Items.Add("amarillo");
            ddlColores.Items.Add("violeta");
            ddlColores.Items.Add("rojo");
            ddlColores.Items.Add("turquesa");
            ddlColores.Items.Add("negro");
            ddlColores.Items.Add("fucsia");
            ddlColores.Items.Add("plateado");
            ddlColores.Items.Add("dorado");
            ddlColores.Items.Add("azul");
            ddlColores.Items.Add("gris");

            if(Request.QueryString["id"]!= null) // Si viene un dato para modificar
            {
                int id = int.Parse(Request.QueryString["id"].ToString());

                List<tsAlbums> temporal = (List<tsAlbums>)Session["listaAlbums"];

                tsAlbums eraSeleccionada = temporal.Find(x => x.id == id);
               
                txtId.Text = eraSeleccionada.id.ToString();
                txtNombreAlbum.Text = eraSeleccionada.nombreAlbum;
                txtSongs.Text= eraSeleccionada.songs;
                ddlColores.SelectedValue = eraSeleccionada.color;
                txtFechaLanzamiento.Text = eraSeleccionada.fechaLanzamiento.ToString("yyyy-MM-dd");
                
                if(eraSeleccionada.estilo == "Country")
                {
                    radioBCountry.Checked = true;
                }else if(eraSeleccionada.estilo == "Pop")
                {
                    radioBPop.Checked = true;
                }
                else { radioBIndie.Checked = true; }


                cBoxTaylorsVersion.Checked = eraSeleccionada.taylorsVersion;






                btnAceptar.Visible = false;



            }
            else
            {
                btnModificar.Visible = false;
                btnEliminar.Visible = false;

            }
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            tsAlbums album = new tsAlbums();

            album.id = int.Parse(txtId.Text);
            album.nombreAlbum = txtNombreAlbum.Text;
            album.songs = txtSongs.Text;
            album.color = ddlColores.SelectedValue;
            album.fechaLanzamiento = DateTime.Parse(txtFechaLanzamiento.Text);

           if(radioBCountry.Checked) 
            {
                album.estilo = "Country";
            }
            else if(radioBPop.Checked)
            {
                album.estilo = "Pop";
            }
           else if(radioBIndie.Checked)
            {
                album.estilo = "Indie Folk";


            }
            

            album.taylorsVersion = cBoxTaylorsVersion.Checked ? true : false;

            if (Session["listaAlbums"] == null)
            {
                TaylorNegocio negocio = new TaylorNegocio();

                Session.Add("listaAlbums", negocio.listar());

            }

            List<tsAlbums> temporal = (List<tsAlbums>)Session["listaAlbums"];
            temporal.Add(album);

            Session["listaAlbums"] = temporal;
            


            Response.Redirect("Default.aspx");
        }

        

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            tsAlbums albumModificado = new tsAlbums();

            albumModificado.id = int.Parse(txtId.Text);
            albumModificado.nombreAlbum = txtNombreAlbum.Text;
            albumModificado.songs = txtSongs.Text;
            albumModificado.color = ddlColores.SelectedValue;
            albumModificado.fechaLanzamiento = DateTime.Parse(txtFechaLanzamiento.Text,CultureInfo.InvariantCulture);

            if (radioBCountry.Checked)
            {
                albumModificado.estilo = "Country";
            }
            else if (radioBPop.Checked)
            {
                albumModificado.estilo = "Pop";
            }
            else if (radioBIndie.Checked)
            {
                albumModificado.estilo = "Indie Folk";


            }


            albumModificado.taylorsVersion = cBoxTaylorsVersion.Checked ? true : false;


            List<tsAlbums> temporal = (List<tsAlbums>)Session["listaAlbums"];

            for (int i = 0; i < temporal.Count; i++)
            {
                
                if(temporal[i].id == albumModificado.id)
                {
                    temporal[i] = albumModificado;

                }
            }

            Session["listaAlbums"] = temporal;
            Response.Redirect("Default.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

            List<tsAlbums> temporal = (List<tsAlbums>)Session["listaAlbums"];

            List<tsAlbums>temporal2 = new List<tsAlbums>();
           
            tsAlbums eraSeleccionada = new tsAlbums();
            eraSeleccionada.id = int.Parse(txtId.Text);

            for(int i = 0; i < temporal.Count;i++)
            {
                if(eraSeleccionada.id != temporal[i].id)
                {
                    temporal2[i] = temporal[i];
                }


            }


            Session["listaAlbums"] = temporal2;
            Response.Redirect("Default.aspx");


        }
    }
}