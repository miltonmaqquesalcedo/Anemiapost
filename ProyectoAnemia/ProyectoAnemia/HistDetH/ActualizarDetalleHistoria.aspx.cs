using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia.HistDetH
{
    public partial class ActualizarDetalleHistoria : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Doctores.DataSource = anemia.spListarDoctorEspe();
                Doctores.DataTextField = "Doctor";
                Doctores.DataValueField = "IdDoctor";
                Doctores.DataBind();
                Doctores.Items.Insert(0, new ListItem("<-- Seleccione un Médico -->", "0"));
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string mensaje = "Selecccione un Médico";
            if (Doctores.SelectedValue.ToString().Equals("0"))
            {
                Response.Write("<script>alert('" + mensaje + "');</script>");
            }
            else
            {
                mvSintomas.ActiveViewIndex = 0;
                gvCuestionario.DataSource = anemia.spBuscarPreguntaCu(int.Parse(Doctores.SelectedValue.ToString()));
                gvCuestionario.DataBind();
                mvPreguntas.ActiveViewIndex = 0;
            }
        }
    }
}