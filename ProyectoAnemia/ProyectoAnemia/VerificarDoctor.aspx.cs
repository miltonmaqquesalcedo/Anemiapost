using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace ProyectoAnemia
{
    public partial class VerificarDoctor : System.Web.UI.Page
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
                    string body =
                        "<body>" +
                            "<h1>Bienvenido a Anemi Prevent</h1>" +
                            "<h4>El equipo de Anemi Prevent te da la bienvenida y agradecimiento por suscribirte</h4>" +
                            "<spam>Para poder realizar su registro legal necesitamos que responda a este correo detallando tu CV</spam><br/>" +
                            "<spam>Ofreceremos todas las facilidad para desarrollar a gran empeño en ayuda con los pacientes</spam>" +
                            "<br/><br/><spam>Saludos Cordiales.</spam>" +
                         "</body>";

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = false;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new System.Net.NetworkCredential("gmaqquesalcedo@gmail.com", "McColins10");
                    smtp.EnableSsl = true;


                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("gmaqquesalcedo@gmail.com", "PreventAnemi");
                    mail.To.Add(new MailAddress(Usuario));
                    mail.Subject = "Mensaje de Bienvenida ";
                    mail.IsBodyHtml = true;
                    mail.Body = body;
                    smtp.Send(mail);

                    Response.Write("<script>alert('" + mensaje + "');</script>");
                    Response.Redirect("RegistroDoctor.aspx?codigo=" + CodUser);
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