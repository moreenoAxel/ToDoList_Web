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
        CamposTareas camposTareas = new CamposTareas();

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
            CamposTareas nuevaTarea = new CamposTareas(
                    txtNombre.Text,
                    txtFecha.Text,
                    Convert.ToInt32(ddlPrioridad.SelectedValue),
                    txtDesc.Text
               );


            Conexion conexion = new Conexion();

            try
            {
                conexion.AbrirConexion();
                conexion.CreateTarea(nuevaTarea);
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('tarea agregada exitosamente.');", true);
            }
            catch (Exception ex) {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error al agregar la tarea: " + ex.Message + "');", true);
            }

            
        }
    }
}