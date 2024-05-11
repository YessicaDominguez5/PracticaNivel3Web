using Dominio;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace ejemplo_web
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Si entró por primera vez a Autoform.aspx (No hubo evento dentro de la pagina)
            {

                ddlColores.Items.Add("Negro");
                ddlColores.Items.Add("Blanco");
                ddlColores.Items.Add("Rojo");

                if (Request.QueryString["id"] != null) /*si me trajo id es porque apreto el seleccionar, si va desde el cancelar no va a tener id*/
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    List<Auto> temporal = (List<Auto>)Session["listaAutos"]; /*guarda la lista del session en la lista temporal*/

                    Auto seleccionado = temporal.Find(x => x.Id == id); /*donde x sea igual al id. Busca el auto con ese id*/
                    txtModelo.Text = seleccionado.Modelo;/* del auto con ese id precargame el modelo en el input*/


                    txtId.Text = seleccionado.Id.ToString();
                    txtId.ReadOnly = true; /*Para que el id no se pueda modificar*/

                    txtDescripcion.Text = seleccionado.Descripcion;

                    ListItem item = ddlColores.Items.FindByText(seleccionado.Color);

                    for (int i = 0; i < ddlColores.Items.Count; i++)
                    {
                        if (ddlColores.Items[i].Text == item.Text)
                        {
                            ddlColores.Items[i].Selected = true;
                        }
                    }

                    txtFecha.Text = seleccionado.Fecha.ToString("yyyy-MM-dd");

                    if (seleccionado.Importado)
                    {
                        radioButtonImportado.Checked = true;

                        radioButtonNacional.Checked = false;
                    }
                    else
                    {

                        radioButtonNacional.Checked = true;

                        radioButtonImportado.Checked = false;

                    }

                    checkBoxUsado.Checked = seleccionado.Usado;

                    btnAceptar.Visible = false;





                }
                else
                {
                    btnEliminar.Visible = false;
                    btnModificar.Visible = false;


                }
            }
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

            if (radioButtonImportado.Checked)
            {
                a.Importado = true;

            }
            else if (radioButtonNacional.Checked)
            {
                a.Importado = false;

            }

            //((List<Auto>)Session["listaAutos"]).Add(a);


            List<Auto> temporal = (List<Auto>)Session["listaAutos"];/* Hacer una copia de lo que trae la session en este caso los 2 datos predeterminados*/
            temporal.Add(a); /*Agregarele un tercer dato con los valores cargados en el form*/

            Session["listaAutos"] = temporal; /*Esos 3 datos guardarlos en la session*/

            Response.Redirect("Default.aspx"); /*cuando apretas aceptar te lleva a la grilla*/
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

            Auto autoModificado = new Auto();

            autoModificado.Id = int.Parse(txtId.Text);
            autoModificado.Modelo = txtModelo.Text;
            autoModificado.Descripcion = txtDescripcion.Text;
            autoModificado.Color = ddlColores.SelectedValue;
            autoModificado.Fecha = DateTime.Parse(txtFecha.Text);
            autoModificado.Usado = checkBoxUsado.Checked;

            if (radioButtonImportado.Checked)
            {
                autoModificado.Importado = true;

            }
            else if (radioButtonNacional.Checked)
            {
                autoModificado.Importado = false;

            }

            List<Auto> temporal = (List<Auto>)Session["listaAutos"];


            for (int i = 0; i < temporal.Count; i++)
            {
                if (temporal[i].Id == autoModificado.Id)
                {
                    temporal[i] = autoModificado;
                }

            }

            Session["listaAutos"] = temporal;
            Response.Redirect("Default.aspx");


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            List<Auto> temporal2 = new List<Auto>();

            Auto autoEliminado = new Auto();
            autoEliminado.Id = int.Parse(txtId.Text);

            foreach (Auto autito in temporal)
            {
                if(autito.Id != autoEliminado.Id)
                { 
                
                    temporal2.Add(autito);
                
                }
               


            }

            Session["listaAutos"] = temporal2;
            Response.Redirect("Default.aspx");
        }


    }
}