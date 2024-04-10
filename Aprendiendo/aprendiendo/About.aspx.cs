using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aprendiendo
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["nombre"] != null)
            {

            string user = Request.QueryString["nombre"].ToString();
            labelUser.Text = user + " bienvenido al About section";


            }
            else
            {
            labelUser.Text = " ";


            }


        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}