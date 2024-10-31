using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio_semana8
{
    public partial class Pagina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWebform2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webform.aspx?UserName=" + txtName.Text + "&UserEmail=" + txtEmail.Text);
        }
    }
}