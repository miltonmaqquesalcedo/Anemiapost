<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroPaciente.aspx.cs" Inherits="ProyectoAnemia.RegistroPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>RegistroPaciente</title>
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
    <form class="login100-form validate-form" id="form1" runat="server">
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				
					<span class="login100-form-title p-b-26">
						Registro Paciente
					</span>
					<span class="login100-form-title p-b-48">
						<img style="width:80px" src="Plantilla/images/prueba-de-recuento-de-sangre.svg"  alt="image">
					</span>

					<div class="wrap-input100 " >
						<!--<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Usuario"></span>-->
						<asp:TextBox ID="txtNombres" runat="server" Placeholder="Nombres" ></asp:TextBox>
					</div>
					
					<div class="wrap-input100 " >
						<!--<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Usuario"></span>-->
						<asp:TextBox ID="txtApellidos" runat="server" Placeholder="Apellidos" ></asp:TextBox>
					</div>
					<label for="formGroupExampleInput">Fecha de Nacimiento</label>
					<div class="wrap-input100 " >
						
						<asp:TextBox ID="txtFechaNacimiento" runat="server" Placeholder="Fecha de Nacimiento" TextMode="Date" ForeColor="Silver"></asp:TextBox>
					</div>

								<div class="form-row align-items-center">
									<div class="form-group col-md-3">
										<label for="inputCity">Provincia</label>
										<asp:DropDownList class="form-control" runat="server" ID="ddlProvincia">
											<asp:ListItem Text="Cusco"></asp:ListItem>
										</asp:DropDownList>
									</div>
									<div class="form-group col-md-3">
										<label for="inputState">Distrito</label>
										<asp:DropDownList class="form-control" runat="server" ID="ddlDistrito">
											<asp:ListItem Text="Cusco"></asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>

								<label for="inputAddress2">Sexo</label><br />
								<div class="form-row align-items-center">
									<asp:RadioButtonList id="RadioButtonList1" runat="server">
										
										<asp:ListItem>Masculino</asp:ListItem>
										<asp:ListItem>Femenino</asp:ListItem>
									</asp:RadioButtonList>
								</div><br />								
								
								<div class="form-row align-items-center ">
									<div class="form-group col-md-4">
										<label for="inputPassword4">DNI</label>
										<div class="wrap-input100 " >
										<asp:TextBox ID="txtDni" runat="server" Placeholder="DNI"></asp:TextBox>
										</div>
									</div>
									<div class="form-group col-md-3">
										<label for="inputZip">Estatura</label>
										<div class="wrap-input100 " >
										<asp:TextBox ID="txtEstatura" runat="server" Placeholder="En cm" ></asp:TextBox>
										</div>
									</div>
									<div class="form-group col-md-3">
										<label for="inputEmail4">Peso</label>
										<div class="wrap-input100 " >
										<asp:TextBox ID="txtPeso" runat="server" Placeholder="En Kg "></asp:TextBox>
										</div>
									</div>									
								</div>	
							<div class="form-row align-items-center">
									<div class="form-group col-md-6">
										<label for="exampleFormControlFile1">Foto de Perfil</label>
										<asp:FileUpload ID="FilePerfil" runat="server" />
									</div>									
								</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<asp:button class="login100-form-btn" Text="Registrar" runat="server" ID="btnAceptar"  BackColor="#A31621" OnClick="btnAceptar_Click" >								 
							</asp:button>
						</div>
					</div>

					
		
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
