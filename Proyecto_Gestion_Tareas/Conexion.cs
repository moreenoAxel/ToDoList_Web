using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Proyecto_Gestion_Tareas
{
    public class Conexion
    {
        private readonly string URL = "Data Source=AXEL\\SQLEXPRESS;Initial Catalog=ToDoList;Integrated Security=True";
        public SqlConnection AbrirConexion()
        {
            SqlConnection connection = new SqlConnection(URL);
            try
            {
                connection.Open();
                Console.WriteLine("Conexion exitosa.");
                return connection;
            }
            catch (Exception ex)
            {
                Console.WriteLine("error al abrir la conexion." + ex.Message );
                connection.Close();
                return null;
            }
        }

        public void CreateTarea(string name, DateTime date, int prioridade, int state) {
            using (SqlConnection connection = AbrirConexion()) 
            { 
                if (connection != null)
                {
                    using (SqlCommand command = new SqlCommand("sp_CrearTareas", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        // assign parameters
                        //command.Parameters.AddWithValue("@Nombre_T", nombreTarea);
                    }
                }
            }
        }
    }
}