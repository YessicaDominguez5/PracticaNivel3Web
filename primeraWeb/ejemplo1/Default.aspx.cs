using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemplo1
{
    public partial class _Default : Page
    {
        public string user { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //user = Request.QueryString["nombre"] != null ? Request.QueryString["nombre"].ToString() : "" ;

            //user = Session["usuario"].ToString();

            user = Session["usuario"] != null ? Session["usuario"].ToString() : "";

            LabelUser.Text = user + " Tu ingreso fue exitoso!";

        }
    }
}