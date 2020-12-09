using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class Login : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            /*string Usuario = txtUsuario.Text.Trim();
            string Contrasena = txtContrasena.Text.Trim();

            var resultado = from C in anemia.spLoginUsuario(Usuario, Contrasena)
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
                 Response.Write("<script>alert('" + mensaje + "');</script>");
                 Response.Redirect("Paciente.aspx");
             }
             else
             {
                 Response.Write("<script>alert('" + mensaje + "');</script>");                
             }*/

        }
    }
}