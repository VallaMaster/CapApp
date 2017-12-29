<%@ Page Language="VB" MasterPageFile="~/HTML/MasterPages.master" AutoEventWireup="false" CodeFile="user.aspx.vb" Inherits="HTML_user" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.aspx" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Inicio</a> <a href="#" class="tip-bottom">Usuarios</a> <a href="#" class="current">Administración de Usuarios</a> </div>
    </div>
      <div class="container-fluid">
      <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title">
             <span class="icon"><i class="icon-user"></i></span> 
            <h5>Usuarios</h5>
          </div>
          <div class="widget-content nopadding">
        
    <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>   
     <asp:UpdatePanel id="UpdatePanel1" UpdateMode="Conditional" runat="server">
     <ContentTemplate>       
                                    
      <asp:GridView id="GvUsuarios" runat="server" GridLines="None" CssClass="table table-bordered data-table" ShowHeaderWhenEmpty="true" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
        <Columns>
          <asp:BoundField HeaderText="Id" DataField="Id" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Usuario" DataField="Usuario" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Contraseña" DataField="Contra" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Nombre" DataField="Nombre" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Apellidos" DataField="Apellidos" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Departamento" DataField="Depa" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Empresa" DataField="Empresa" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Edad" DataField="Edad" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Permisos" DataField="Permisos" ItemStyle-CssClass="active"/>
          <asp:BoundField HeaderText="Editar" ItemStyle-CssClass="active"/>

        </Columns>
      </asp:GridView>                                       
    
    </ContentTemplate>
    </asp:UpdatePanel>  
              </div>
        </div>
      </div>
    </div>
  </div>
</div>


</asp:Content>
