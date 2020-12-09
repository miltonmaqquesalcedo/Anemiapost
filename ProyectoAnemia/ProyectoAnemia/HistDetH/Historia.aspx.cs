using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace ProyectoAnemia
{
    public partial class Historia1 : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        private int IdHistoria;
        protected void Page_Load(object sender, EventArgs e)
        {
            //OBTENER USUARIO
            var resultado = anemia.spListarHistoriaPaciente(1).AsEnumerable().Select(y=>
                            new {
                                IdHistoria=y.IdHistoria,
                                FechaCreacion = y.FechaCreacion,
                                Paciente = y.Paciente,
                                Sexo=y.Sexo,
                                Fecha_Nacimiento=y.Fecha_Nacimiento,
                                dni=y.dni,
                                Ubigeo=y.Ubigeo
                            });
            foreach (var objeto in resultado)
            {
                IdHistoria = objeto.IdHistoria;
                lblFecha.Text = "Fecha Creación: "+objeto.FechaCreacion.ToString();
                lblPaciente.Text = "Nombre: "+objeto.Paciente;
                lblFechaN.Text = "Fecha Nacimiento: "+objeto.Fecha_Nacimiento.ToString().Substring(0,10);
                lblDni.Text = "DNI: "+objeto.dni;
                lblUbigeo.Text = "Ubigeo: "+objeto.Ubigeo;
            }
            
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {

            string fecha = DateTime.Now.ToString();
            /*var resultado = from C in anemia.spAgregarHistoria(fecha,usuario))
                             select C;*/
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
            //Redireccionar al listado de los detalles historia del paciente
            Response.Redirect("ListadoHistorias.aspx?IdHistoria=" + IdHistoria);
        }

        protected void btnDetalle_Click(object sender, EventArgs e)
        {
            //Crear Detalle Historia
            Response.Redirect("DetalleHistoria.aspx?IdHistoria=" + IdHistoria);
        }
    }
}