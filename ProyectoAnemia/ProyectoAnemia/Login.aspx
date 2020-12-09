<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoAnemia.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Style-Login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Style-Login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style-Login/css/util.css">
	<link rel="stylesheet" type="text/css" href="Style-Login/css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">        

        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						PREVENT ANEMIA
					</span>
					<span class="login100-form-title p-b-48">
						<img src="Plantilla/images/prueba-de-recuento-de-sangre.svg" width="80PX" alt="image">
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<!--<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Usuario"></span>-->
						<asp:TextBox runat="server" ID="txtUsuario" placeholder="Usuario" Width="280px"></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<asp:TextBox runat="server" ID="txtContrasena" placeholder="Contraseña" Width="182px" TextMode="Password"></asp:TextBox>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<asp:button class="login100-form-btn" Text="INICIAR SESION" runat="server" ID="btnAceptar" OnClick="btnAceptar_Click" BackColor="#A31621">								 
							</asp:button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							¿No tienes una cuenta?
						</span>

						<a class="txt2" href="Registrar.aspx">
							Regístrate
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="Style-Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/vendor/bootstrap/js/popper.js"></script>
	<script src="Style-Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="Style-Login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Style-Login/js/main.js"></script>
    </form>
</body>
</html>
