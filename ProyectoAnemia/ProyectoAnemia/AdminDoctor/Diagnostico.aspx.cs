using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia.AdminPaciente
{
    public partial class Diagnostico : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvDiagnostico.DataSource = anemia.spListarDiagnostico();
                gvDiagnostico.DataBind();
            }
        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow fila = gvDiagnostico.Rows[e.RowIndex];

            int IdDiagnostico = Convert.ToInt32(gvDiagnostico.DataKeys[e.RowIndex].Values[0]);
            String Descripcion = (fila.FindControl("txtDescripcionco2") as TextBox).Text;
            String TipoAnemia = (fila.FindControl("txtTipoAnemia2") as TextBox).Text;
            string Tratamiento = (fila.FindControl("txtTipoAnemia2") as TextBox).Text;

            int IdDoctor = Convert.ToInt32(((TextBox)gvDiagnostico.Rows[e.RowIndex].FindControl("txtIdDoctor2")).Text);
            int IdDetalleHistoria = Convert.ToInt32(((TextBox)gvDiagnostico.Rows[e.RowIndex].FindControl("txtIdDetalleHistoria2")).Text);

            var resultado = from C in anemia.spActualizarDiagnostico(IdDiagnostico, Descripcion,
                TipoAnemia, Tratamiento, IdDoctor, IdDetalleHistoria)
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
                gvDiagnostico.EditIndex = -1;
                gvDiagnostico.DataSource = anemia.spListarDiagnostico();
                gvDiagnostico.DataBind();
            }
        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            gvDiagnostico.EditIndex = e.NewEditIndex;
            gvDiagnostico.DataSource = anemia.spListarDiagnostico();
            gvDiagnostico.DataBind();
        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            /*int IdDiagnostico = Convert.ToInt32(gvDiagnostico.DataKeys[e.RowIndex].Values[0]);

            var resultado = from C in anemia.spEliminarDiagnostico(IdDiagnostico)
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
                gvDiagnostico.EditIndex = -1;
                gvDiagnostico.DataSource = anemia.spListarDiagnostico();
                gvDiagnostico.DataBind();
            }*/
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {
            gvDiagnostico.EditIndex = -1;
            gvDiagnostico.DataSource = anemia.spListarDiagnostico();
            gvDiagnostico.DataBind();
        }

        protected void btnAgregar_Click1(object sender, EventArgs e)
        {
            String Descripcion = txtDescripcion.Text.Trim();
            String TipoAnemia = txtTipoAnemia.Text.Trim();
            string Tratamiento = txtTratamiento.Text.Trim();
            int IdDoctor = Convert.ToInt32(txtIdDoctor.Text);
            int IdDetalleHistoria = Convert.ToInt32(txtIdDetalleHistoria.Text);

            var resultado = from C in anemia.spAgregarDiagnostico(Descripcion,
                TipoAnemia, Tratamiento, IdDoctor, IdDetalleHistoria)
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
                gvDiagnostico.DataSource = anemia.spListarDiagnostico();
                gvDiagnostico.DataBind();
            }
        }
    }
}