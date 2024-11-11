using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Gestion_Tareas
{
    public class CamposTareas

    {
        public int CodTarea { get; set; }
        public string Nombre { get; set; }
        public string fecha { get; set; }
        public int idPrioridad { get; set; }

        public int idEstado { get; set; }

        public string Descripcion { get; set; }
        

      

        public CamposTareas() { }

        public CamposTareas (string nombre, string fechaVencimiento, int idPrioridad, string Descripcion)
        {
            Nombre = nombre;
            fecha = fechaVencimiento;
            this.idPrioridad = idPrioridad;
            this.Descripcion = Descripcion;
            
            
        }
    }
}