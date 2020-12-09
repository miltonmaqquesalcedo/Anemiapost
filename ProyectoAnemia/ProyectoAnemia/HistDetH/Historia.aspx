<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Historia.aspx.cs" Inherits="ProyectoAnemia.Historia1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="apple-touch-icon" sizes="76x76" href="../Administracion/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../Administracion/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    
    <title>Mi Historia</title>
    <!--Reloj-->
    <link rel="stylesheet" href="../Reloj/estilos.css">
    <!--Reloj-->

    
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
          <li class="active">
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
            <a class="navbar-brand" href="">Mi Historia</a>
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

      <div class="panel-header">
        <div class="header text-center">
          <h2 class="title">Historia Médica</h2>
          <p class="category">Handcrafted by our friend <a target="_blank" href="https://github.com/mouse0270">Robert McIntosh</a>. Please checkout the <a href="http://bootstrap-notify.remabledesigns.com/" target="_blank">full documentation.</a></p>
        </div>
      </div>
      <div class="content">
        <div class="row">

          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">Historia Médica Nueva</h4>
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
                                <p id="ampm" class="ampm">AM</p><br /><br />
                                <img src="../Plantilla/images/historia-clinica.svg" alt="" width="150px" />
				            </div>
			            </div>                        
		            </div>
                </div>
                <!-- Fecha y Hora -->
              <div class="card-body">
                <div class="alert alert-primary" align="center">
                  <span >Permite al médico conocer de primera mano la historia del paciente, de manera que sus acciones 
                      puedan estar basados en éste. Facilita la investigación. Los historiales médicos nos permiten ganar 
                      conocimiento sobre la evolución clínica de los pacientes. Esto ayuda en la toma de decisiones y el avance de la ciencia.</span>
                </div>
                <div align="center">
                  <asp:Button class="btn btn-primary btn-sm" ID="btnCrear" runat="server" Text="Crear Historia" OnClick="btnCrear_Click" 
                      BackColor="#A31621" Height="40px" Width="250px"/>
                </div>              
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">Mi Historia Médica</h4>
              </div>

                <div align="center">
                    <div class="wrap">
			            <div class="widget">
				            <!--<div align="center">
					            <p id="diaSemana" class="diaSemana">Martes</p>
					            <p id="dia" class="dia">27</p>
					            <p>de </p>
					            <p id="mes" class="mes">Octubre</p>
                                <p id="year" class="year">2015</p>
				            </div>-->
		
				            <div align="center">
					            <!--<p id="horas" class="horas">11</p>
					            <p>:</p>
					            <p id="minutos" class="minutos">48</p>
					            <p>:</p><p id="segundos" class="segundos">12</p>
                                <p id="ampm" class="ampm">AM</p><br /><br />-->
                                
				            </div>
			            </div><img src="../Plantilla/images/historia-clinica (1).svg" alt="" width="287px" aign="center"/>                        
		            </div>
                </div>

              <div class="card-body">
                <div class="alert alert-primary">
                  <span>
                      <asp:Label runat="server" id="lblFecha" Text=""></asp:Label><br />
                      <asp:Label runat="server" id="lblPaciente" Text=""></asp:Label><br />
                      <asp:Label runat="server" id="lblFechaN" Text=""></asp:Label><br />
                      <asp:Label runat="server" id="lblDni" Text=""></asp:Label><br />
                      <asp:Label runat="server" id="lblUbigeo" Text=""></asp:Label>
                  </span><br />
                </div>
                <div align="center">
                    <!--<asp:Button ID="btnHistorial" runat="server" Text="Mi Historial" OnClick="btnHistorial_Click" />-->
                    <asp:Button class="btn btn-primary btn-sm" ID="btnDetalle" runat="server" Text="Crear Detalle Historia" 
                        OnClick="btnDetalle_Click" BackColor="#A31621" Height="40px" Width="250px" />
                </div>

              </div>
            </div>
          </div>
          </form>
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
