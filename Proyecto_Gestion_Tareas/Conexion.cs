using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Runtime.Remoting.Messaging;

namespace Proyecto_Gestion_Tareas
{
    public class Conexion
    {
        private const string servidor = "AXEL\\SQLEXPRESS";
        private const string URL = "Data Source=" + servidor + ";Initial Catalog=ToDoList;Integrated Security=True";
        public SqlConnection AbrirConexion()
        {
            SqlConnection connection = new SqlConnection(URL);
            {
                try
                {
                    connection.Open();
                    Console.WriteLine("Conexion exitosa.");
                    return connection;
                }
                catch (Exception ex)
                {
                    Console.WriteLine("error al abrir la conexion." + ex.Message);
                    connection.Close();
                    return null;
                }
            }
        }

        public void CreateTarea(CamposTareas tareas)
        {
            SqlConnection connection = AbrirConexion();
            {
                if (connection != null && connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("sp_CrearTarea", connection);

                    command.CommandType = CommandType.StoredProcedure;

                    // assign parameters
                    command.Parameters.AddWithValue("@Nombre_T", tareas.Nombre);
                    command.Parameters.AddWithValue("@FechaVencimiento", tareas.fecha);
                    command.Parameters.AddWithValue("@IdPrio_T", tareas.idPrioridad);
                    command.Parameters.AddWithValue("@Descripcion", tareas.Descripcion);

                    int result = command.ExecuteNonQuery();
                    try
                    {
                        if (result > 0)
                        {
                            Console.WriteLine("tarea creada con exito. ");
                        }
                        else
                        {
                            Console.WriteLine("no se agrego ninguna tarea. ");
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Error al crear tarea: " + ex.Message);
                    }

                }
            }
        }

        public DataTable getStacks()
        {

            DataTable dt = new DataTable();

            SqlConnection cn = AbrirConexion();

            string query = "SELECT Nombre_T, FechaVencimiento, Descripcion, Desc_P AS Prioridad, Desc_E AS Estado From Tareas JOIN Prioridad ON  IdPrio_T = Id_P  JOIN Estado ON IdEst = Id_E";

            if (cn != null)
            {
                try
                {
                    SqlCommand command = new SqlCommand(query, cn);
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    
                    dataAdapter.Fill(dt);

                 
                }
                catch (Exception ex)
                {

                    Console.WriteLine("Errror al obtener las tareas: " + ex.Message);

                }
                finally
                {
                    cn.Close();
                }
            }

            return dt;
        }
    }
        
    
}