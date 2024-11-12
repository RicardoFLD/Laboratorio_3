using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio_semana8.Pages
{
    public partial class CrearProvincia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["localhost"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("dbo.spCrearProvincia", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@nombre", txtNombre.Text.Trim());
                    cmd.Parameters.AddWithValue("@fechaCreacion", DateTime.Now);

                    try
                    {
                        connection.Open();
                        cmd.ExecuteNonQuery();

                        Response.Redirect("~/Pages/ResultadoDeCrearProvincia.aspx");
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = "Error al crear la provincia: " + ex.Message;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ListaProvincias.aspx");
        }
    }
}