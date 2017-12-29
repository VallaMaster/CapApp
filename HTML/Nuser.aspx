<%@ Page Language="VB" MasterPageFile="~/HTML/MasterPages.master" AutoEventWireup="false" CodeFile="Nuser.aspx.vb" Inherits="HTML_Nuser" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
    <h1>Crear Usuario</h1>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span6">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
            <h5>Llemnar Campos</h5>
          </div>
          <div class="widget-content nopadding form-horizontal">
              <div class="control-group">
                <label class="control-label">Id:</label>
                <div class="controls">
                  <input type="text" id="Iid" class="span1" placeholder="Id" disabled runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Usuario</label>
                <div class="controls">
                  <input type="text" id="IUsuario" class="span11" placeholder="Usuario" Runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Contraseña</label>
                <div class="controls">
                  <input type="password" id="IContra" class="span11" placeholder="Contraseña"  Runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Nombre:</label>
                <div class="controls">
                  <input type="text" id="INombre" class="span11" placeholder="Nombre" Runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Apellidos:</label>
                <div class="controls">
                  <input type="text" id="IApellidos" class="span11" placeholder="Apellidos" Runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Departamento:</label>
                <div class="controls">
                  <input type="text" id="IDepa" class="span11" placeholder="Departamento" Runat="server"/>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Emprea</label>
                <div class="controls">
                  <select id="SEmpresa" runat="server">
                    <option value="Coco Colima">Coco Colima</option>
                      <option value="Coco Es">Coco Es</option>
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Edad:</label>
                <div class="controls">
                  <input type="text" id="IEdad" class="span11" placeholder="Edad" Runat="server"/>
                </div>
              </div>
              <div class="control-group">
               <label class="control-label">Permisos</label>
                <div class="controls">
                  <select id="SPermisos" runat="server">
                    <option value="1">Super Usuario</option>
                      <option value="2">Administrador</option>
                      <option value="3">Usuario</option>
                  </select>
              <div class="form-actions">
                <asp:Button Id="BtnGuardar" runat="server" cssclass="btn btn-success" Text="Guardar"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   </div>

</asp:Content>