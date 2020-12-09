using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string Usuario = txtUsuario.Text.Trim();
            string Contrasena = txtContrasena.Text.Trim();
            string Repetido = txtRepetido.Text.Trim();
            string CodUser = "";
            byte codError = 0;
            string mensaje = "";

            if (Contrasena == Repetido)
            {
                var resultado = anemia.spAgregarUsuario(Usuario, Contrasena).AsEnumerable().Select(y =>
                            new {
                                CodUser = y.CodUser,
                                CodError = y.CodError,
                                Mensaje = y.Mensaje,
                            });
                foreach (var objeto in resultado)
                {
                    CodUser = objeto.CodUser.ToString();
                    codError = Convert.ToByte(objeto.CodError);
                    mensaje = objeto.Mensaje;
                }

                if (codError == 0)
                {
                    Response.Write("<script>alert('" + mensaje + "');</script>");
                    Response.Redirect("RegistroPaciente.aspx?codigo=" + CodUser);
                }
                else
                {
                    Response.Write("<script>alert('" + mensaje + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Las contraseñas no concuerdan');</script>");
            }
        }
    }
}