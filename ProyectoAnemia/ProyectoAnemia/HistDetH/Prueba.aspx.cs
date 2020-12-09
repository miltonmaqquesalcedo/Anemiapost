using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAnemia.HistDetH
{
    public partial class Prueba : System.Web.UI.Page
    {
        private BDAnemiaDataContext anemia = new BDAnemiaDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {


            //Listar doctores en el DropDownList
            if (!IsPostBack)
            {
                DropDownList1.DataSource = anemia.spListarDoctorEspe();
                DropDownList1.DataTextField = "Doctor";
                DropDownList1.DataValueField = "IdDoctor";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("<-- Seleccione un Médico -->", "0"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue.ToString();
        }
    }
}