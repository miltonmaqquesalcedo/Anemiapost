using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace ProyectoAnemia
{
    public partial class DetalleHistoria1 : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        private int idHistoria;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Obtener el IdHistoria para agregar el detalle Historia 
            int IdHistoria = int.Parse(Request.QueryString["IdHistoria"].ToString());
            idHistoria = IdHistoria;
                        
            var d = anemia.spListarDoctorEspe();

            //Listar doctores en el DropDownList
            if (!IsPostBack)
            {
                ddDoctor.DataSource = anemia.spListarDoctorEspe();
                ddDoctor.DataTextField = "Doctor";
                ddDoctor.DataValueField = "IdDoctor";                
                ddDoctor.DataBind();
                ddDoctor.Items.Insert(0, new ListItem("<-- Seleccione un Médico -->", "0"));
                
            }


        }

        protected void btnCambiarDoctor_Click(object sender, EventArgs e)
        {
            //mvConsulta.ActiveViewIndex = 0;
                string texto = txtDescripcion.Text;
                Label1.Text = texto;

        }

        protected void btnCrearDetalle_Click(object sender, EventArgs e)
        {
            
            if (FileHemograma.HasFile)
            {
                //si hay una archivo.
                string nombreArchivo = FileHemograma.FileName;
                string ruta = "~/Hemogramas/" + nombreArchivo;
                FileHemograma.SaveAs(Server.MapPath(ruta));

                //RutaImagen = "Se guardó la imagen. y su ruta es" + Environment.NewLine + ruta;
                

                string fecha = DateTime.Now.ToString();
                string descripcion = txtDescripcion.Text;
                int sintomas = 0;
                string rutaHemograma = ruta;

                //var resultado = anemia.spAgregarDetalleHistoria(fecha, descripcion, sintomas, ruta, idCuestionario, idHistoria);
            }
        }


        protected void btnConf_Click(object sender, EventArgs e)
        {
            string mensaje = "Selecccione un Médico";
            //Consultar cuetionario y traer las preguntas
            if (int.Parse(ddDoctor.SelectedValue.ToString())==0)
            {
                Response.Write("<script>alert('" + mensaje + "');</script>");
            }
            else
            {
                //Consultar Preguntas del cuestionario
                gvCuestionario.DataSource = anemia.spBuscarPreguntaCu(int.Parse(ddDoctor.SelectedValue.ToString()));
                gvCuestionario.DataBind();
                //Activar Formulario
                mvConsulta.ActiveViewIndex = 0;
                mvPreguntas.ActiveViewIndex = 0;
            }
        }
    }
}