<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diagnostico.aspx.cs" Inherits="ProyectoAnemia.AdminPaciente.Diagnostico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD de la tabla diagnostico</h1>
     
    <p>
       <asp:Label Text="Descripcion:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" Id="txtDescripcion"/></p>
    <p>
        <asp:Label Text="Tipo de Anemia:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" Id="txtTipoAnemia"/></p>
    <p>
        <asp:Label Text="Tratamiento:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" Id="txtTratamiento"/></p>
    <p>
        <asp:Label Text="Id del Doctor:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" Id="txtIdDoctor"/></p>
    <p>
        <asp:Label Text="Id del detalle de H.:" runat="server" /> <asp:TextBox runat="server" Id="txtIdDetalleHistoria"/></p>
    <p>
        <asp:Button Text="Agregar" type="button" class="btn btn-success" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click1" Height="43px" Width="331px"/>&nbsp;&nbsp;&nbsp
      
    </p>

    <p>
        <asp:GridView runat="server" ID="gvDiagnostico" CellPadding="4" ForeColor="#333333" GridLines="None" 
            OnRowCancelingEdit="rowCancelEditEvent"
            OnRowDeleting="rowDeletingEvent" 
            OnRowEditing="rowEditingEvent" 
            OnRowUpdating="rowUpdatingEvent" AutoGenerateColumns="false" DataKeyNames="IdDiagnostico">
            <Columns>
                <asp:TemplateField HeaderText="CODIGO">
                    <ItemTemplate >
                        <asp:Label ID="Label2" runat="server" Text='<% # Bind("IdDiagnostico")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdDiagnostico2" runat="server" Text='<% # Bind("IdDiagnostico")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="FECHA">
                    <ItemTemplate >
                        <asp:Label ID="Label3" runat="server" Text='<% # Bind("fecha")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfecha2" runat="server" Text='<% # Bind("fecha")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DESCRIPCION">
                    <ItemTemplate >
                        <asp:Label ID="Label4" runat="server" Text='<% # Bind("Descripcion")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescripcionco2" runat="server" Text='<% # Bind("Descripcion")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="TIPO DE ANEMIA">
                    <ItemTemplate >
                        <asp:Label ID="Label5" runat="server" Text='<% # Bind("TipoAnemia")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTipoAnemia2" runat="server" Text='<% # Bind("TipoAnemia")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="TRATAMIENTO">
                    <ItemTemplate >
                        <asp:Label ID="Label6" runat="server" Text='<% # Bind("Tratamiento")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTratamiento2" runat="server" Text='<% # Bind("Tratamiento")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="IdDoctor">
                    <ItemTemplate >
                        <asp:Label ID="Label7" runat="server" Text='<% # Bind("IdDoctor")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdDoctor2" runat="server" Text='<% # Bind("IdDoctor")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                 

                <asp:CommandField ButtonType="Link" ShowEditButton="true" showDeleteButton="true" />
            </Columns>
                    
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </p>    
        </div>
    </form>
</body>
</html>
