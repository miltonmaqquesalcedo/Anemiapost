using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class ListadoHistorias : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargar Listado de Detalles de la Historia
            //int IdHistoria = int.Parse(Request.QueryString["IdHistoria"].ToString());
            var listado = anemia.spListarDetalleHistoriaPaciente(1);
            gvDetallePaciente.DataSource = anemia.spListarDetalleHistoriaPaciente(1);
            gvDetallePaciente.DataBind();
        }

        protected void btnObservar_Click(object sender, EventArgs e)
        {
            int idDetalleHistoria = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect("MostrarDetalleHistoria.aspx?DetalleHistoria=" + idDetalleHistoria);
        }
    }
}