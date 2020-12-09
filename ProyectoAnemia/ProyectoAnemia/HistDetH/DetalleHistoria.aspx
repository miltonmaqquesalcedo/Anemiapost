<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleHistoria.aspx.cs" Inherits="ProyectoAnemia.DetalleHistoria1"
    ValidateRequest=false %>
<!-- ValidateRequest=false para anular el error que se produce -->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="apple-touch-icon" sizes="76x76" href="../Administracion/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../Administracion/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Crear Detalle Historia</title>
    <!-- TinyMC -->
    <script src="../Scripts/tinymce/tinymce.min.js"></script>    
    <script>
        tinymce.init({
            selector: 'textarea'
        });
    </script>
    <!-- TinyMC -->

    <link rel="stylesheet" href="../Reloj/estilos.css">

      <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
      <!--     Fonts and icons     -->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
      <!-- CSS Files -->
      <link href="../Administracion/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../Administracion/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
      <!-- CSS Just for demo purpose, don't include it in your project -->
      <link href="../Administracion/demo/demo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <script src="../Reloj/reloj.js"></script>

    <div class="wrapper ">
    <div class="sidebar" data-color="red">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="../AdminPaciente/Inicio.aspx" class="simple-text logo-mini">
          <img width="120px" src="../Plantilla/images/prueba-de-recuento-de-sangre.svg"/>
        </a>
        <a href="../AdminPaciente/Inicio.aspx" class="simple-text logo-normal">
          PREVENT ANEMIA
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="../AdminPaciente/Inicio.aspx">
              <i class="now-ui-icons design_app"></i>
              <p>Inicio</p>
            </a>
          </li>
          <li>
            <a href="./user.html">
              <i class="now-ui-icons users_single-02"></i>
              <p>Mi Perfil</p>
            </a>
          </li>
          <li>
            <a href="Historia.aspx">
              <i class="now-ui-icons education_agenda-bookmark"></i>
              <p>Mi Historia</p>
            </a>
          </li>
          <li>
            <a href="ListadoHistorias.aspx">
              <i class="now-ui-icons files_paper"></i>
              <p>Detalle Historia</p>
            </a>
          </li>
          <li>
            <a href="./notifications.html">
              <i class="now-ui-icons ui-2_favourite-28"></i>
              <p>Mis Diagnosticos</p>
            </a>
          </li> 
          <li>
            <a href="./map.html">
              <i class="now-ui-icons files_single-copy-04"></i>
              <p>Recetas</p>
            </a>
          </li>                   
          <li>
            <a href="./tables.html">
              <i class="now-ui-icons emoticons_satisfied"></i>
              <p>Alimentos</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="./upgrade.html">
              <i class="now-ui-icons ui-1_simple-remove"></i>
              <p>Cerrar Sesion</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="">Detalle Historia</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="now-ui-icons users_single-02"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mi Perfil</a>
                  <a class="dropdown-item" href="#">Cerrar Sesion</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>

      <div class="content">
            <div class="row">
              <div class="col-md-6">
                    <div class="card">
                      <div class="card-header">
                        <h4 class="card-title">Crear Detalle Historia</h4>
                      </div>
                      <!-- Fecha y Hora -->
                        <div align="center">
                            <div class="wrap">
			                    <div class="widget">
				                    <div align="center">
					                    <p id="diaSemana" class="diaSemana">Martes</p>
					                    <p id="dia" class="dia">27</p>
					                    <p>de </p>
					                    <p id="mes" class="mes">Octubre</p>
                                        <p id="year" class="year">2015</p>
				                    </div>
		
				                    <div align="center">
					                    <p id="horas" class="horas">11</p>
					                    <p>:</p>
					                    <p id="minutos" class="minutos">48</p>
					                    <p>:</p><p id="segundos" class="segundos">12</p>
                                        <p id="ampm" class="ampm">AM</p>                                        
				                    </div>                                    
			                    </div>                        
		                    </div>
                            <asp:DropDownList class="form-control" ID="ddDoctor" runat="server" Width="300px"></asp:DropDownList>
                            <asp:Button class="btn btn-primary btn-sm" ID="btnConf" runat="server" Text="Aceptar" 
                                BackColor="#A31621" Height="30px" Width="100px" OnClick="btnConf_Click" /><br />

                            <label for="exampleFormControlFile1">Suba aquí su hemograma</label><br />
                            <asp:FileUpload ID="FileHemograma" runat="server" />
                        </div>
                        <!-- Fecha y Hora -->
                      <div class="card-body">                          
                            <h4 class="card-title">Mis Sintomas</h4>
                        <div class="alert" align="center">
                          <asp:MultiView ID="mvConsulta" runat="server">
                            <asp:View ID="vOpcion1" runat="server">
                                <table style="width: 100%;">
                                      <tr>
                                          <td>
                                              <asp:CheckBox ID="CheckBox1" runat="server" Text="Fatiga"/><br />
                                              <asp:CheckBox ID="CheckBox2" runat="server" Text="Debilidad"/><br />
                                              <asp:CheckBox ID="CheckBox3" runat="server" Text="Dificultad para Respirar"/>
                                          </td>
                                          <td>
                                              <asp:CheckBox ID="CheckBox4" runat="server" Text="Fiebre" /><br />
                                              <asp:CheckBox ID="CheckBox5" runat="server" Text="Dolor de Cabeza"/><br />
                                              <asp:CheckBox ID="CheckBox6" runat="server" Text="Mareos o Aturdimiento"/>
                                          </td>
                                          <td>
                                              <asp:CheckBox ID="CheckBox7" runat="server" Text="Piel Amarilla"/><br />
                                              <asp:CheckBox ID="CheckBox8" runat="server" Text="Dolor en el Pecho"/><br />
                                              <asp:CheckBox ID="CheckBox9" runat="server" Text="Manos y Pies frios"/>
                                          </td>
                                      </tr>                                    
                                  </table>
                                <asp:Image ID="imgHemograma" runat="server" />
                            </asp:View>
                          </asp:MultiView>                          

                        </div>             
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="card">
                      <div class="card-header">
                        <table style="width: 100%;">
                            <h4 class="card-title">Responda a las Siguientes Preguntas</h4>
                        </table>
                      </div>
                      <div class="card-body">
                        <asp:MultiView ID="mvPreguntas" runat="server">
                            <asp:View ID="vPreguntas" runat="server">
                                <div>
                                    <asp:GridView class="table table-striped" ID="gvCuestionario" runat="server" AutoGenerateColumns="False"
                                        RowStyle-HorizontalAlign="left" BorderColor="White" >
                                        <Columns>
                                            <asp:BoundField DataField="Descripcion" HeaderText="Pregunta" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                
                                <div>
                                    <h4 class="card-title">Responda a las preguntas enumerando sus respuestas</h4>
                                    <asp:TextBox ID="txtDescripcion" runat="server"  style="resize:none" TextMode="MultiLine"
                                        Height="250px" ></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                                    <asp:Button ID="btnCambiarDoctor" runat="server" Text="Cambiar Doctor" OnClick="btnCambiarDoctor_Click" />
                                    <asp:Button ID="btnCrearDetalle" runat="server" Text="Agregar Detalle " OnClick="btnCrearDetalle_Click" />
                                </div>
                            </asp:View>
                        </asp:MultiView>
                        
                          
                      </div>
                    </div>
                  </div>

                </div>
              </div>
      <footer class="footer">
        <div class=" container-fluid ">
          
          <div class="copyright" id="copyright">
            &copy; <script>
                       document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script><a>, Prevent Anemia, Todos los derechos reservados.</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>

  <script src="../Reloj/reloj.js"></script>
  <!--   Core JS Files   -->
  <script src="../Administracion/js/core/jquery.min.js"></script>
  <script src="../Administracion/js/core/popper.min.js"></script>
  <script src="../Administracion/js/core/bootstrap.min.js"></script>
  <script src="../Administracion/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../Administracion/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../Administracion/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../Administracion/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="../Administracion/demo/demo.js"></script>
</form>
</body>
</html>
