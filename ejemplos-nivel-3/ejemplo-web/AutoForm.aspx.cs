using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace ejemplo_web
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlColores.Items.Add("Negro");
            ddlColores.Items.Add("Blanco");
            ddlColores.Items.Add("Rojo");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            Auto a = new Auto();

            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColores.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Usado = checkBoxUsado.Checked;
            
            if(radioButtonImportado.Checked)
            {
                a.Importado = true;

            } 
            else if(radioButtonNacional.Checked)
            {
                a.Importado = false;

            }

            //((List<Auto>)Session["listaAutos"]).Add(a);


            List<Auto> temporal = new List<Auto>();
            temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a);
            Response.Redirect("Default.aspx");
        }
    }
}