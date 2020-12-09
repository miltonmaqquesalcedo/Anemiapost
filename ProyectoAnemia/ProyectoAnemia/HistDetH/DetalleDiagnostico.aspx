<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleDiagnostico.aspx.cs" Inherits="ProyectoAnemia.DetalleDiagnostico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 330px; margin-bottom: 406px;">
                <tr>
                    <td>
                        <div class="card border-primary mb-3" style="max-width: 18rem;">
                          <div class="card-header">Header</div>
                          <div class="card-body text-primary">
                            <h5 class="card-title"><asp:Label runat="server" ID="lblFecha" Text=""></asp:Label></h5>
                            <asp:Label runat="server" ID="lblSintomas" Text="Sintomas:"></asp:Label><br />
                            <asp:Label runat="server" ID="lblPaciente" Text="Paciente:"></asp:Label><br />
                            <asp:Label runat="server" ID="lblSexo" Text="Sexo:"></asp:Label><br />
                            <asp:Label runat="server" ID="lblFechaNac" Text="Fecha Nacimiento"></asp:Label><br />
                            <asp:Label runat="server" ID="lblDni" Text="Dni:"></asp:Label><br />
                            <asp:Label runat="server" ID="lblUbigeo" Text="Ubigeo"></asp:Label><br />
                            <p><asp:Label runat="server" ID="lblDescripcion" Text="Descripcion:"></asp:Label></p>
                            <asp:Image ID="imgHemograma" runat="server" />
                          </div>
                        </div>
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
