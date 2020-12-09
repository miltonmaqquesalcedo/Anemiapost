<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoAnemia.index" %>

<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>RD Business - Responsive HTML5 Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="#" type="image/x-icon" />
    <link rel="apple-touch-icon" href="#" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Plantilla/css/bootstrap.min.css" />
    <!-- Pogo Slider CSS -->
    <link rel="stylesheet" href="Plantilla/css/pogo-slider.min.css" />
    <!-- Site CSS -->
    <link rel="stylesheet" href="Plantilla/css/style.css" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="Plantilla/css/responsive.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="Plantilla/css/custom.css" />

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
            <img src="Plantilla/images/loader.gif" alt="#" />
        </div>
    </div>
    <!-- END LOADER -->

    <!-- Start header -->
    <header class="top-header">
        <nav class="navbar header-nav navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.aspx"><img src="Plantilla/images/prueba-de-recuento-de-sangre.svg" width="65PX" alt="image"> PREVENT <span class="theme_color">ANEMIA</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-wd" aria-controls="navbar-wd" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
                    <ul class="navbar-nav">
                        <li><a class="nav-link active" href="index.aspx">Inicio</a></li>
                        <li><a class="nav-link" href="about.html">Nosotros</a></li>
                        <li><a class="nav-link" href="services.html">IMC</a></li>
                        <li><a class="nav-link" href="#">Alimentos</a></li>
                        <li><a class="nav-link active" style="background:#28231C;color:#fff;" href="Login.aspx">Iniciar Sesion</a></li>
                        <li><a class="nav-link active" style="background:#A31621 ;color:#fff;" href="Registro.aspx">Registrar</a></li>
                    </ul>
                </div>
                <div class="search-box">
                    <input type="text" class="search-txt" placeholder="Search">
                    <a class="search-btn">
                        <img src="Plantilla/images/search_icon.png" alt="#" />
                    </a>
                </div>
            </div>
        </nav>
    </header>
    <!-- End header -->

    <!-- Start Banner -->
    <div class="ulockd-home-slider">
        <div class="container-fluid">
            <div class="row">
                <div class="pogoSlider" id="js-main-slider">
                    <div class="pogoSlider-slide" style="background-image:url(Plantilla/img/banner-img1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="slide_text">
                                        <h3>Prevent Anemia</h3>
                                        <br>
                                        <h4><span class="theme_color">Bienvenido</span></h4>
                                        <br>
                                        <p>La comida que ingieres puede ser la más segura y poderosa forma<br /> de medicina o la forma más lenta de veneno.</p>
                                        <a class="contact_bt" style="background:#A31621;color:#fff; href="about.html">Iniciar Sesion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pogoSlider-slide" style="background-image:url(Plantilla/img/banner-img2.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="slide_text">
                                        <h3>Prevent Anemia</h3>
                                        <br>
                                        <h4><span class="theme_color">Bienvenido</span></h4>
                                        <br>
                                        <p>El doctor del futuro no tratará más al ser humano con drogas;<br /> curará y prevendrá las enfermedades con la nutrición.</p>
                                        <a class="contact_bt" style="background:#A31621 ;color:#fff; href="about.html">Registrar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .pogoSlider -->
            </div>
        </div>
    </div>
    <!-- End Banner -->
    
	<!-- section -->
    <div class="section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_left">
						   <div class="left">
						     <p class="section_count">01</p>
						   </div>
						   <div class="right">
						    <p class="small_tag">Informate</p>
                            <h2><span class="theme_color">PREVENCIÓN</span> DIAGNOSTICO</h2>
                            <p class="large"></p>
						  </div>	
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- end section -->

    <!-- section -->
    <div class="section dark_bg">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-12 text_align_center padding_0">
                    <div class="full">
                        <img class="img-responsive" src="Plantilla/img/img-2png.png" alt="#" />
                    </div>
                </div>

                <div class="col-lg-6 col-md-12 white_fonts layout_padding padding_left_right">
                    <h3 class="small_heading">LA ANEMIA</h3>
                    <p>La anemia es una afección en la cual careces de suficientes glóbulos rojos sanos para 
                        transportar un nivel adecuado de oxígeno a los tejidos del cuerpo. 
                        La anemia puede hacer que te sientas cansado y débil.</p>
                    <p>Existen muchas formas de anemia, cada una con su propia causa. La anemia puede ser
                        temporal o prolongada y puede oscilar entre leve y grave. Consulta con el médico si 
                        sospechas que tienes anemia. Puede ser una señal de advertencia de una enfermedad grave.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- end section -->
	
	<!-- section -->
    <div class="section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_left">
						   <div class="left">
						     <p class="section_count">02</p>
						   </div>
						   <div class="right">
						    <p class="small_tag">CRITERIOS</p>
                            <h2><span class="theme_color">Toda la información y recomendaciones </span> que te brindamos está basada en los siguientes criterios</h2>
                          </div>	
                        </div>
                    </div>
                </div>
            </div>
			<div class="row margin-top_30">
			
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-1.png" alt="#">
					</div>
					<div class="full">
					   <h4>ALIMENTACIÓN</h4>
					</div>
					<div class="full">
					  <p>Nuestro principal aliado son los alimentos orgánicos los cuales nos brindaran todo lo necesario (Hierro, vitaminas, minerales, Etc.) para poder prevenir o combatir a la anemia.</p>
					</div>
				 </div>
			   </div>
			   
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-2.png" alt="#">
					</div>
					<div class="full">
					   <h4>DESARROLLO</h4>
					</div>
					<div class="full">
					  <p>Llevaremos un control pleno, cuyo objetivo es el poder superar de la mano este proceso en conjunto con tu esfuerzo y constancia. </p>
                        <br /><br />
					</div>
				 </div>
			   </div>
			   
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-3.png" alt="#">
					</div>
					<div class="full">
					   <h4>RESULTADOS</h4>
					</div>
					<div class="full">
					  <p>Toda la información recopilada será utilizada para poder saber cuales son los patrones para llevar un proceso satisfactorio en base a experiencias reales.</p>
					    <br />
                    </div>
				 </div>
			   </div>
			   
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-4.png" alt="#">
					</div>
					<div class="full">
					   <h4>SEGURIDAD</h4>
					</div>
					<div class="full">
					  <p>Tus datos se mantendrán seguros para que nadie pueda ver tu información sin consentimiento.</p>
                        <br /><br />
					</div>
				 </div>
			   </div>
			   
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-5.png" alt="#">
					</div>
					<div class="full">
					   <h4>CREDIBILIDAD</h4>
					</div>
					<div class="full">
					  <p>Todas nuestras recomendaciones son basadas en estudio científicos y comprobados realizados en base a alimentación tanto nacionales como internacionales.</p>
					</div>
				 </div>
			   </div>
			   
			   <div class="col-sm-6 col-md-4">
			     <div class="service_blog">
				    <div class="service_icons">
					   <img width="75" height="75" src="Plantilla/img/icon-6.png" alt="#">
					</div>
					<div class="full">
					   <h4>CONSTANCIA</h4>
					</div>
					<div class="full">
					  <p>La búsqueda del éxito es nuestra meta, por lo cual iremos juntos por este camino para superar a este enemigo que afecta la salud de miles de peruanos llamado Anemia.</p>
					</div>
				 </div>
			   </div>
			   
			   
			</div>
        </div>
    </div>
	<!-- end section -->
	
	<!-- section -->
    <div class="section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_left">
						   <div class="left">
						     <p class="section_count">03</p>
						   </div>
						   <div class="right">
						    <p class="small_tag">Aprende a preparar</p>
                            <h2><span class="theme_color">RECETAS</span> SALUDABLES</h2>
							<p class="large"></p>
                          </div>	
                        </div>
                    </div>
                </div>
            </div>
			<div class="row margin-top_30">
                <div class="col-lg-12 margin-top_30">
                    <div id="demo" class="carousel slide" data-ride="carousel">

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta1.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta2.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta3.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta5.png" alt="#" />
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta6.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta7.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta8.png" alt="#" />
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-sm-12">
                                        <img class="img-responsive" src="Plantilla/images/receta3.png" alt="#" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>

                    </div>
                </div>

                <div class="col-lg-12">
                    <p>Una de las claves para ganarle la batalla a la anemia es la alimentación. Conoce alimentos 
                        y excelentes recetas saludables para combatir la anemia. Aquí encontraras recetas saludables que te ayudarán 
                        a prevenir y tratar la anemia, así como la información nutricional de los alimentos, cantidades y preparación.
                    </p>
                </div>

                <div class="col-lg-12">
                    <div class="full center">
                        <a href="about.html" class="hvr-radial-out button-theme">Iniciar Sesion ></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
	<!-- end section -->
	
	<!-- section -->
    <div class="section layout_padding dark_bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_left white_fonts">
						   <div class="left">
						     <p class="section_count">04</p>
						   </div>
						   <div class="right">
						    <h2>ALIMENTOS <span class="theme_color"> TOP</h2>
							<p class="large">Alimentos altos en hierro</p>
                          </div>	
                        </div>
                    </div>
                </div>
            </div>
			<div class="row margin-top_30">
                <div class="col-lg-12 margin-top_30 white_fonts">
                    <p>Los tratamientos para la anemia abarcan desde tomar suplementos hasta someterse a procedimientos médicos. Podrías prevenir algunos tipos de anemia si consumes una dieta saludable y variada.
                        Es importante consumir alimentos ricos en hierro, lo escuchamos muchas veces, pero… ¿realmente sabemos por qué y cuáles son los alimentos con hierro que podemos consumir para satisfacer las necesidades diarias de este mineral?
                        La mayoría de los minerales y vitaminas que nuestro cuerpo necesita podemos tomarlos de manera natural a través de los alimentos, llevando una dieta equilibrada y saludable.
                    </p>
                </div>
                <div class="col-lg-12">
                    <div class="full">
                        <a href="about.html" class="contact_bt">Conócelos ></a>
                    </div>
                </div>
            </div>
			<div class="row margin-top_30 counter_section">
			   <div class="col-sm-12 col-md-4">
	        <div class="counter margin-top_30">
      
      <!--<h2 class="timer count-title count-number" data-to="" data-speed="1500"></h2>-->
       <p class="count-text">PROTEINAS</p>
    </div>
	        </div>
              <div class="col-sm-12 col-md-4">
               <div class="counter margin-top_30">
      
      <!--<h2 class="timer count-title count-number" data-to="" data-speed="1500"></h2>-->
      <p class="count-text">CARBOHIDRATOS</p>
    </div>
              </div>
              <div class="col-sm-12 col-md-4">
                  <div class="counter margin-top_30">
     
      <!--<h2 class="timer count-title count-number" data-to="" data-speed="1500"></h2>-->
      <p class="count-text">GRASAS</p>
    </div></div>
			</div>
		
        </div>
    </div>
	<!-- end section -->

    <!-- section -->
    <div class="section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="full">
                        <div class="heading_main text_align_left">
						   <div class="left">
						     <p class="section_count">05</p>
						   </div>
						   <div class="right">
						    <p class="small_tag">Nuestro Equipo</p>
                            <h2><span class="theme_color">CONTAMOS CON UN EQUIPO PROFESIONAL</span><br /> DE MÉDICOS ESPECIALISTAS</h2>
							</div>	
                        </div>
                    </div>
                </div>
            </div>
			<div class="row margin-top_30">
                <div class="col-lg-12 margin-top_30">
                    <div id="team_slider" class="carousel slide" data-ride="carousel">

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
								
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-8.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
                                                <h4>Pediatra</h4>
										   </div>
										   <div class="full text_align_center">
										     <p>Especialidad médica que estudia al niño y sus enfermedades</p>
										   </div>
										</div>
                                    </div>
									
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-7.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
                                               <h4>Hematólogo </h4>
										   </div>
										   <div class="full text_align_center">
										     <p>Especialista en enfermedades de la sangre</p>
										   </div>
										</div>
                                    </div>
									
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-9.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
                                               <h4>Gastroenterólogo</h4>
										   </div>
										   <div class="full text_align_center">
										     <p>Especialista en tratar enfermedades del tracto gastrointestinal</p>
										   </div>
										</div>
                                    </div>
									
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
								
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-7.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
										   </div>
										   <div class="full text_align_center">
										     <p>this a long established fact that a reader will be distracted by the readable content </p>
										   </div>
										</div>
                                    </div>
									
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-8.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
										   </div>
										   <div class="full text_align_center">
										     <p>this a long established fact that a reader will be distracted by the readable content </p>
										   </div>
										</div>
                                    </div>
									
                                   <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="full">
										   <div class="full team_member_img text_align_center"> 
										      <img src="Plantilla/img/img-9.png" alt="#" />
											 <div class="social_icon_team">
											    <ul class="social_icon">
                                                    <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                               </ul>
                                             </div>											 
										   </div>
										   <div class="full text_align_center">
										     <h3>Jone due</h3>
										   </div>
										   <div class="full text_align_center">
										     <p>this a long established fact that a reader will be distracted by the readable content </p>
										   </div>
										</div>
                                    </div>
									
                                </div
                            </div>
                        </div>
                        

                        <div class="bullets">
						  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#team_slider" data-slide-to="0" class="active"></li>
    <li data-target="#team_slider" data-slide-to="1"></li>
  </ul>
						</div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
	<!-- end section -->

    <!-- Start Footer -->
    <footer class="footer-box">
        <div class="container">
            <div class="row">
                <div class="col-md-12 margin-bottom_30">
				   <img src="Plantilla/images/prueba-de-recuento-de-sangre.svg" alt="#" width="80px"/>
				</div>
               <div class="col-xl-6 white_fonts">
                    <div class="row">
					<div class="col-md-12 white_fonts margin-bottom_30">
					   <h3>Contactenos</h3>
					</div>
                        <div class="col-md-4">
                            <div class="full icon">
                                <img src="Plantilla/images/social1.png">
                            </div>
                            <div class="full white_fonts">
                                <p>Urb. Ingenieria Larapa Grande A-5, 
                                    <br>San Jeronimo, Cusco 08006</p>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="full icon">
                                <img src="Plantilla/images/social2.png">
                            </div>
                            <div class="full white_fonts">
                                <p>consultation@gmail.com
                                    <br>TeamLosWebs@gmail.com</p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="full icon">
                                <img src="Plantilla/images/social3.png">
                            </div>
                            <div class="full white_fonts">
                                <p>+666
                                    <br>+999</p>
                            </div>
                        </div>
						<div class="col-md-12">
						   <ul class="full social_icon margin-top_20">
                                <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
						</div>
                    </div>
                </div>
				
				 <div class="col-xl-6 white_fonts">
				    <div class="row">
					   <div class="col-md-6">
					     <div class="footer_blog footer_menu">
						    <h3>Menu</h3>
						    <ul> 
							  <li><a href="index.html">Inicio</a></li>
							  <li><a href="about.html">Nosotros</a></li>
							  <li><a href="services.html">IMC</a></li>
							  <li><a href="#">Alimentos</a></li>
							  <li><a href="contact.html">Contáctenos</a></li>
							</ul>
						 </div>
						 <div class="footer_blog recent_post_footer">
						   <h3></h3>
						   <p></p>
						 </div>
					   </div>
					   <div class="col-md-6">
					     <div class="footer_blog full">
						     <h3></h3>
							 <div class="newsletter_form">
							    <form action="index.html">
								   <!--<input type="email" placeholder="Your Email" name="#" required />
								   <button>Submit</button>-->
								</form>
							 </div>
						 </div>
					   </div>
					</div>
				 </div>

            </div>
            
        </div>
    </footer>
    <!-- End Footer -->

    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="crp">© 2020 Prevent Anemia. Todos los derechos reservados.</p>
                    <ul class="bottom_menu">
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="Plantilla/js/jquery.min.js"></script>
	<script src="Plantilla/js/popper.min.js"></script>
    <script src="Plantilla/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="Plantilla/js/jquery.magnific-popup.min.js"></script>
    <script src="Plantilla/js/jquery.pogo-slider.min.js"></script>
    <script src="Plantilla/js/slider-index.js"></script>
    <script src="Plantilla/js/smoothscroll.js"></script>
    <script src="Plantilla/js/form-validator.min.js"></script>
    <script src="Plantilla/js/contact-form-script.js"></script>
    <script src="Plantilla/js/isotope.min.js"></script>
    <script src="Plantilla/js/images-loded.min.js"></script>
    <script src="Plantilla/js/custom.js"></script>
	<script>
        /* counter js */

        (function ($) {
            $.fn.countTo = function (options) {
                options = options || {};

                return $(this).each(function () {
                    // set options for current element
                    var settings = $.extend({}, $.fn.countTo.defaults, {
                        from: $(this).data('from'),
                        to: $(this).data('to'),
                        speed: $(this).data('speed'),
                        refreshInterval: $(this).data('refresh-interval'),
                        decimals: $(this).data('decimals')
                    }, options);

                    // how many times to update the value, and how much to increment the value on each update
                    var loops = Math.ceil(settings.speed / settings.refreshInterval),
                        increment = (settings.to - settings.from) / loops;

                    // references & variables that will change with each update
                    var self = this,
                        $self = $(this),
                        loopCount = 0,
                        value = settings.from,
                        data = $self.data('countTo') || {};

                    $self.data('countTo', data);

                    // if an existing interval can be found, clear it first
                    if (data.interval) {
                        clearInterval(data.interval);
                    }
                    data.interval = setInterval(updateTimer, settings.refreshInterval);

                    // initialize the element with the starting value
                    render(value);

                    function updateTimer() {
                        value += increment;
                        loopCount++;

                        render(value);

                        if (typeof (settings.onUpdate) == 'function') {
                            settings.onUpdate.call(self, value);
                        }

                        if (loopCount >= loops) {
                            // remove the interval
                            $self.removeData('countTo');
                            clearInterval(data.interval);
                            value = settings.to;

                            if (typeof (settings.onComplete) == 'function') {
                                settings.onComplete.call(self, value);
                            }
                        }
                    }

                    function render(value) {
                        var formattedValue = settings.formatter.call(self, value, settings);
                        $self.html(formattedValue);
                    }
                });
            };

            $.fn.countTo.defaults = {
                from: 0,               // the number the element should start at
                to: 0,                 // the number the element should end at
                speed: 1000,           // how long it should take to count between the target numbers
                refreshInterval: 100,  // how often the element should be updated
                decimals: 0,           // the number of decimal places to show
                formatter: formatter,  // handler for formatting the value before rendering
                onUpdate: null,        // callback method for every time the element is updated
                onComplete: null       // callback method for when the element finishes updating
            };

            function formatter(value, settings) {
                return value.toFixed(settings.decimals);
            }
        }(jQuery));

        jQuery(function ($) {
            // custom formatting example
            $('.count-number').data('countToOptions', {
                formatter: function (value, options) {
                    return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
                }
            });

            // start all the timers
            $('.timer').each(count);

            function count(options) {
                var $this = $(this);
                options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                $this.countTo(options);
            }
        });
    </script>
</body>

</html>
