using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Gestion_Tareas
{
    public class CamposTareas

    {
        private int CodTarea { get; set; }
        private string Nombre { get; set; }
        private DateTime fecha { get; set; }
        private int idPrioridad { get; set; }
        private int idEstado { get; set; }

      

        public CamposTareas() { }

        public CamposTareas (string nombre, DateTime fechaVencimiento, int idPrioridad, int idEstado)
        {
            Nombre = nombre;
            fecha = fechaVencimiento;
            this.idPrioridad = idPrioridad;
            this.idEstado = idEstado;
        }
    }
}