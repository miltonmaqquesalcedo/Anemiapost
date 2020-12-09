<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregunta.aspx.cs" Inherits="ProyectoAnemia.AdminDoctor.Pregunta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD de la tabla Pregunta</h1>
    
    <p>
        <asp:Label Text="Descripcion:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtDescripcion"/> </p>
    <p>
        <asp:Label Text="Id Cuestionario:"  runat="server" />&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtIdCuestionario"/></p>
    
    <p><asp:Button ID="Agregar" type="button" class="btn btn-success" runat="server" Text="Agregar" OnClick="Agregar_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Buscar" type="button" class="btn btn-success" runat="server" Text="Buscar por cuestionario" OnClick="Buscar_Click" />
    </p>  


   

     <p>
        
         <asp:GridView runat="server" ID="gvPregunta" 
             OnRowCancelingEdit="rowCancelEditEvent" 
             OnRowDeleting="rowDeletingEvent" 
             OnRowEditing="rowEditingEvent" 
             OnRowUpdating="rowUpdatingEvent" AutoGenerateColumns="False" DataKeyNames="IdPregunta" CellPadding="4" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                 <asp:TemplateField HeaderText="ID la pregunta">
                    <ItemTemplate >
                        <asp:Label ID="Label2" runat="server" Text='<% # Bind("IdPregunta")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdPregunta2" runat="server" Text='<% # Bind("IdPregunta")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Descripcion">
                    <ItemTemplate >
                        <asp:Label ID="Label3" runat="server" Text='<% # Bind("Descripcion")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescripcion2" runat="server" Text='<% # Bind("Descripcion")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="ID Cuestionario">
                    <ItemTemplate >
                        <asp:Label ID="Label4" runat="server" Text='<% # Bind("IdCuestionario")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdCuestionario2" runat="server" Text='<% # Bind("IdCuestionario")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:CommandField ButtonType="Link" ShowEditButton="true" showDeleteButton="true" />
            </Columns>
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
