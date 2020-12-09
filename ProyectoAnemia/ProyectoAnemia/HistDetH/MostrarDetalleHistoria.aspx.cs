using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class MostrarDetalleHistoria : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            int IdDetalle = int.Parse(Request.QueryString["DetalleHistoria"].ToString());
            var resultado = anemia.spListarDetalleDoctorVisualizar(IdDetalle).AsEnumerable().Select(y =>
                            new {
                                IdDetalleHistoria=y.IdDetalleHistoria,
                                FechaCreacion=y.FechaCreacion,
                                Paciente=y.Paciente,
                                Sexo=y.Sexo,
                                Fecha_Nacimiento=y.Fecha_Nacimiento,
                                dni=y.dni,
                                Ubigeo=y.Ubigeo,
                                Hemograma=y.Hemograma,
                                Descripcion=y.Descripcion,
                                NroSintomas=y.NroSintomas
                            });

            foreach (var objeto in resultado)
            {
                lblFecha.Text = "Fecha de Creación: "+objeto.FechaCreacion.ToString();
                lblPaciente.Text = "Nombre: "+objeto.Paciente;
                lblSexo.Text = "Sexo: "+objeto.Sexo;
                lblFechaNac.Text = "Fecha de Nacimiento: "+objeto.Fecha_Nacimiento.ToString().Substring(0, 10);
                lblDni.Text = "DNI: "+objeto.dni;
                lblUbigeo.Text = "Ubigeo: "+objeto.Ubigeo;
                //Hemograma
                lblDescrip.Text = "Descripción"+ "<br />" + objeto.Descripcion;
                lblSintomas.Text = "Número de Sintomas: "+objeto.NroSintomas.ToString();
            }
        }
    }
}