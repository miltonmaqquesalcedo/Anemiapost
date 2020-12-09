using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia.AdminDoctor
{
    public partial class Cuestionario : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvCuestionario.DataSource = anemia.spListarCuestionario();
                gvCuestionario.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int NroPreguntas = Convert.ToInt32(txtNroPreguntas.Text);
            int IdDoctor = Convert.ToInt32(txtIdDoctor.Text);
            var resultado = from C in anemia.spAgregarCuestionario(NroPreguntas, IdDoctor)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;
            foreach (var X in resultado)
            {
                codError = Convert.ToByte(X.CodError);
                mensaje = X.Mensaje;
            }
            if (codError == 0)
            {
                gvCuestionario.DataSource = anemia.spListarCuestionario();
                gvCuestionario.DataBind();
            }
        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {
            int IdCuestionario = Convert.ToInt32(gvCuestionario.DataKeys[e.RowIndex].Values[0]);
            int NroPreguntas = Convert.ToInt32(((TextBox)gvCuestionario.Rows[e.RowIndex].FindControl("txtNroPreguntas2")).Text);
            int IdDoctor = Convert.ToInt32(((TextBox)gvCuestionario.Rows[e.RowIndex].FindControl("txtIdDoctor2")).Text);
            var resultado = from C in anemia.spActualizarCuestionario(IdCuestionario, NroPreguntas, IdDoctor)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;
            foreach (var X in resultado)
            {
                codError = Convert.ToByte(X.CodError);
                mensaje = X.Mensaje;
            }
            if (codError == 0)
            {
                gvCuestionario.EditIndex = -1;
                gvCuestionario.DataSource = anemia.spListarCuestionario();
                gvCuestionario.DataBind();
            }
        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            gvCuestionario.EditIndex = e.NewEditIndex;
            gvCuestionario.DataSource = anemia.spListarCuestionario();
            gvCuestionario.DataBind();
        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            /*int IdCuestionario = Convert.ToInt32(gvCuestionario.DataKeys[e.RowIndex].Values[0]);

            var resultado = from C in anemia.spEliminarCuestionario(IdCuestionario)
                            select C;
            byte codError = 0;
            string mensaje = string.Empty;
            foreach (var X in resultado)
            {
                codError = Convert.ToByte(X.CodError);
                mensaje = X.Mensaje;
            }
            if (codError == 0)
            {
                gvCuestionario.EditIndex = -1;
                gvCuestionario.DataSource = anemia.spListarCuestionario();
                gvCuestionario.DataBind();
            }*/
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {
            gvCuestionario.EditIndex = -1;
            gvCuestionario.DataSource = anemia.spListarCuestionario();
            gvCuestionario.DataBind();
        }
    }
}