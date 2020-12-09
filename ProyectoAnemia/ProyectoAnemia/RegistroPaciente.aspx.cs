using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia
{
    public partial class RegistroPaciente : System.Web.UI.Page
    {
        int re;
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            string codigo = Request.QueryString["codigo"].ToString();
            re = int.Parse(codigo);
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string nombres = txtNombres.Text.Trim();
            string apellidos = txtApellidos.Text.Trim();
            string sexo = "";
            if (RadioButtonList1.SelectedIndex == 0)
            {
                sexo = "M";
            }
            else
            {
                sexo = "F";
            }

            float peso = float.Parse(txtPeso.Text.Trim());
            string dni = txtDni.Text.Trim();
            int estatura = int.Parse(txtEstatura.Text.Trim());
            DateTime dt5 = DateTime.Parse(txtFechaNacimiento.Text);
            int provi = ddlProvincia.SelectedIndex;
            string provincia = "";
            string distrito = "";
            byte codError = 0;
            string mensaje = "";
            if (provi == 0)
            {
                provincia = "Cusco";
            }

            int dist = ddlDistrito.SelectedIndex;
            if (dist == 1)
            {
                distrito = "Cusco";
            }
            string ruta = "";

            if (FilePerfil.HasFile)
            {
                //si hay una archivo.
                string nombreArchivo = FilePerfil.FileName;
                ruta = "~/Perfiles/" + nombreArchivo;
                FilePerfil.SaveAs(Server.MapPath(ruta));


            }

            var resultado = anemia.spAgregarPaciente(ruta, nombres, apellidos, sexo, peso, dni, estatura, dt5, distrito, provincia, re).AsEnumerable().Select(y =>
                             new {
                                 CodError = y.CodError,
                                 Mensaje = y.Mensaje,
                             });
            foreach (var objeto in resultado)
            {
                codError = Convert.ToByte(objeto.CodError);
                mensaje = objeto.Mensaje;
            }
            if (codError == 0)
            {
                Response.Write("<script>alert('" + mensaje + "');</script>");
                //Response.Redirect("Login.aspx?codigo=" + re);
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('" + mensaje + "');</script>");
            }
        }
    }
}