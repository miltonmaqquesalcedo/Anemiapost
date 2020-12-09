<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiagnosticarDetalle.aspx.cs" Inherits="ProyectoAnemia.DiagnosticarDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Diagnosticar Detalles de Historia</h1>

            <br />
            <asp:GridView ID="gvDetalles" runat="server" AutoGenerateColumns="False"
                RowStyle-HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="FechaCreacion" HeaderText="Fecha Creacion" />
                    <asp:BoundField DataField="NroSintomas" HeaderText="Sintomas" />
                    <asp:BoundField DataField="Paciente" HeaderText="Paciente" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" />
                    <asp:BoundField DataField="Fecha_Nacimiento" HeaderText="Fecha Nacimiento" />
                    <asp:BoundField DataField="dni" HeaderText="DNI" />
                    <asp:BoundField DataField="Ubigeo" HeaderText="Ubigeo" />
                    <asp:TemplateField HeaderText="Diagnosticar">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDiagnostico"  runat="server" CommandArgument='<%# Eval("IdDetalleHistoria") %>' OnClick="btnDiagnostico_Click">
                                <asp:Image  runat="server" ImageUrl="~/Plantilla/images/chequeo.svg" Width="70px" />
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

<RowStyle HorizontalAlign="Center"></RowStyle>
            </asp:GridView>
            <br />
            <asp:Label ID="lblPrueba" runat="server" Text="lblPrueba"></asp:Label>
        </div>
    </form>
</body>
</html>
