using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Compilation;

namespace Proyecto_Gestion_Tareas.Tareas
{
    public partial class Crear_Tareas : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDdl();
        }


        private void llenarDdl()
        {
            SqlConnection connection = conexion.AbrirConexion();
            string query = "SELECT Id_P, Desc_P FROM Prioridad";

           if(connection != null)
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader dataReader = command.ExecuteReader();
                    ddlPrioridad.DataSource = dataReader;
                    ddlPrioridad.DataTextField = "Desc_P";
                    ddlPrioridad.DataValueField = "Id_P";
                    ddlPrioridad.DataBind();
                }
                catch(Exception ex)
                {
                    Console.WriteLine("Error al abrir la conexion" + ex.Message);
                }
           }

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {

        }
    }
}