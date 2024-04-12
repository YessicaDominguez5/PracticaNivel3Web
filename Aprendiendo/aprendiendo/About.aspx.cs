using System;
using System.Web.UI;

namespace aprendiendo
{
    public partial class About : Page
    {
        public string user { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            user = Session["usuario"]?.ToString();
            //var variable = Request.QueryString["nombre"];

            if (user != null)
            {

                if (user != "")
                {

                    //user = Request.QueryString["nombre"].ToString();
                    labelUser.Text = user + " tu ingreso fue exitoso!";



                }
                else
                {

                    labelUser.Text = "No pudiste Ingresar";

                }



            }
            else
            {
                labelUser.Text = "No pudiste Ingresar";


            }

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}