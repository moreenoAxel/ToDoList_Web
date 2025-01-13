using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Gestion_Tareas.Tareas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStacks();
                llenarDdl();
            }

        }

        private void getStacks()
        {
            DataTable tareas = conexion.getStacks();

            if(tareas.Rows.Count > 0)
            {
                gvTareas.DataSource = tareas;
                gvTareas.DataBind();
            }
        }

        protected void gvTareas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTareas.PageIndex = e.NewPageIndex;
            getStacks();
        }

        private void llenarDdl()
        {
            SqlConnection connection = conexion.AbrirConexion();
            string query = "SELECT Id_P, Desc_P FROM Prioridad";

            if (connection != null)
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader dataReader = command.ExecuteReader();
                    ddlBuscar.DataSource = dataReader;
                    ddlBuscar.DataTextField = "Desc_P";
                    ddlBuscar.DataValueField = "Id_P";
                    ddlBuscar.DataBind();

                    ddlBuscar.Items.Insert(0, new ListItem("Seleccione una prioridad", "0"));

                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al abrir la conexion" + ex.Message);
                }
            }

        }

        protected void ddlBuscar_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedPriority = ddlBuscar.SelectedValue;
            

            if (selectedPriority != "0")
            {
                int prioridad = int.Parse(selectedPriority);
                filtrarPorPrioridad(prioridad);
            }
            else {
                getStacks();
            }
        }

        private void filtrarPorPrioridad(int idPrioridad)
        {
            SqlConnection cn = conexion.AbrirConexion();

            string query = "SELECT Nombre_T, FechaVencimiento, Descripcion, Desc_P AS Prioridad, Desc_E AS Estado " +
                   "FROM Tareas " +
                   "JOIN Prioridad ON IdPrio_T = Id_P " +
                   "JOIN Estado ON IdEst = Id_E " +
                   "WHERE idPrio_T = @idPrioridad";

            if (cn != null)
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, cn);
                    command.Parameters.AddWithValue("@idPrioridad", idPrioridad);
                    DataTable dt = new DataTable();
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    sqlDataAdapter.Fill(dt);

                    gvTareas.DataSource = dt;
                    gvTareas.DataBind();

                    cn.Close();
                    
                } catch (Exception e)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                    $"alert('Error al filtrar tareas: {e.Message}');", true);
                }
            }
        }

        private void buscarTareaPorNombre(string nombre)
        {
            SqlConnection cn = conexion.AbrirConexion();

            string query = "SELECT Nombre_T, FechaVencimiento, Descripcion, Desc_P AS Prioridad, Desc_E AS Estado " +
                   "FROM Tareas " +
                   "JOIN Prioridad ON IdPrio_T = Id_P " +
                   "JOIN Estado ON IdEst = Id_E " +
                   "WHERE Nombre_T LIKE @nombre";

            if (cn != null)
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, cn);
                    command.Parameters.AddWithValue("@nombre", "%" + nombre + "%");
                    
                    DataTable dt = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dt);

                    gvTareas.DataSource = dt;
                    gvTareas.DataBind();

                    cn.Close();
                } catch (Exception e)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage",
                    $"alert('Error al buscar tareas: {e.Message}');", true);
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            String searchTerm = txtBuscar.Text.Trim();

            if (!string.IsNullOrEmpty(searchTerm))
            {
                buscarTareaPorNombre(searchTerm);
            } else
            {
                getStacks();
            }
        }
    }
}