using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class DiagnosticarDetalle : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvDetalles.DataSource=anemia.spListarDetalleHistoriaDoctor(1,1);
            gvDetalles.DataBind();
            
        }

        protected void btnDiagnostico_Click(object sender, EventArgs e)
        {
            int idDetalle = Convert.ToInt32((sender as LinkButton).CommandArgument);
            lblPrueba.Text = idDetalle.ToString();
            //Diagnostico mandando el Id de Detalle Historia
            //Response.Redirect("Diagnostico.aspx?Paciente=" + idDetalle);
        }
    }
}