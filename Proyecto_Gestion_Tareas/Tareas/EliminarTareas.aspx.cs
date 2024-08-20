using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Gestion_Tareas.Tareas
{
    public partial class EliminarTareas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvTareas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTareas.PageIndex = e.NewPageIndex;
        }

        protected void gvTareas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}