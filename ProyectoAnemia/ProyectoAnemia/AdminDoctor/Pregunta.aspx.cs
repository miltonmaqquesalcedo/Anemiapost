using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia.AdminDoctor
{
    public partial class Pregunta : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvPregunta.DataSource = anemia.spListarPregunta();
                gvPregunta.DataBind();
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            String Descripcion = txtDescripcion.Text.Trim();
            int IdCuestionario = Convert.ToInt32(txtIdCuestionario.Text);

            var resultado = from C in anemia.spAgregarPregunta(Descripcion,
                IdCuestionario)
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
                gvPregunta.DataSource = anemia.spListarPregunta();
                gvPregunta.DataBind();
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            int IdCuestionario = Convert.ToInt32(txtIdCuestionario.Text);
            var resultado = from C in anemia.spBuscarPreguntaCu(IdCuestionario)
                            select C;

            byte codError = 0;
            string mensaje = string.Empty;


            if (codError == 0)
            {
                gvPregunta.DataSource = anemia.spBuscarPreguntaCu(IdCuestionario);
                gvPregunta.DataBind();
            }
        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow fila = gvPregunta.Rows[e.RowIndex];

            int IdPregunta = Convert.ToInt32(gvPregunta.DataKeys[e.RowIndex].Values[0]);
            String Descripcion = (fila.FindControl("txtDescripcion2") as TextBox).Text;
            int IdCuestionario = Convert.ToInt32(((TextBox)gvPregunta.Rows[e.RowIndex].FindControl("txtIdCuestionario2")).Text);

            var resultado = from C in anemia.spActualizarPregunta(IdPregunta, Descripcion, IdCuestionario)
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
                gvPregunta.EditIndex = -1;
                gvPregunta.DataSource = anemia.spListarPregunta();
                gvPregunta.DataBind();
            }
        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            gvPregunta.EditIndex = e.NewEditIndex;
            gvPregunta.DataSource = anemia.spListarPregunta();
            gvPregunta.DataBind();
        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            /*int IdPregunta = Convert.ToInt32(gvPregunta.DataKeys[e.RowIndex].Values[0]);


            var resultado = from C in anemia.spEliminarPregunta(IdPregunta)
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
                gvPregunta.EditIndex = -1;
                gvPregunta.DataSource = anemia.spListarPregunta();
                gvPregunta.DataBind();
            }*/
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {
            gvPregunta.EditIndex = -1;
            gvPregunta.DataSource = anemia.spListarPregunta();
            gvPregunta.DataBind();
        }
    }
}