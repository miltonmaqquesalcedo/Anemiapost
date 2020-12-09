<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuestionario.aspx.cs" Inherits="ProyectoAnemia.AdminDoctor.Cuestionario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD de la tabla Cuestionario</h1>
    
    <p>
        <asp:Label Text="Numero de preguntas:" runat="server" /> <asp:TextBox runat="server" Id="txtNroPreguntas"/></p>
    <p>
        <asp:Label Text="Id del Doctor:" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtIdDoctor"/></p>
    <p>
        <asp:button Text="Agregar" type="button" class="btn btn-success" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click"  Width="269px"  />&nbsp;&nbsp;&nbsp
       
    </p>

    <p>
        <asp:GridView runat="server" ID="gvCuestionario" CellPadding="4" ForeColor="#333333" GridLines="None" 
            OnRowCancelingEdit="rowCancelEditEvent" 
            OnRowDeleting="rowDeletingEvent" 
            OnRowEditing="rowEditingEvent" 
            OnRowUpdating="rowUpdatingEvent" AutoGenerateColumns="false" DataKeyNames="IdCuestionario" >
            <Columns>
                 <asp:TemplateField HeaderText="ID del cuestionario">
                    <ItemTemplate >
                        <asp:Label ID="Label2" runat="server" Text='<% # Bind("IdCuestionario")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdCuestionario2" runat="server" Text='<% # Bind("IdCuestionario")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Nro Preguntas">
                    <ItemTemplate >
                        <asp:Label ID="Label3" runat="server" Text='<% # Bind("NroPreguntas")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNroPreguntas2" runat="server" Text='<% # Bind("NroPreguntas")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="ID del doctor">
                    <ItemTemplate >
                        <asp:Label ID="Label4" runat="server" Text='<% # Bind("IdDoctor")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtIdDoctor2" runat="server" Text='<% # Bind("IdDoctor")%>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:CommandField ButtonType="Link" ShowEditButton="true" showDeleteButton="true"  />
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
