<%@ Page Language="VB" MasterPageFile="~/HTML/MasterPages.master" AutoEventWireup="false" CodeFile="Empleados.aspx.vb" Inherits="HTML_Empleados" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div id="content">
  <div id="content-header">
     <div id="breadcrumb"><a href="#" class="tip-bottom"><i class="icon-home"></i> Inicio</a> <a href="#" class="current">Empleados</a></div>
  </div>
  
  <div class="container-fluid">
   <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title">
             <span class="icon"><i class="icon-briefcase"></i></span> 
            <h5>Empleados</h5>
          </div>
          <asp:GridView id="GvEmpleados" runat="server" GridLines="None" CssClass="table table-bordered data-table dataTable" 
                                                    ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" AutoPostBack="true" CausesValidation="false">
                                        <Columns>
                                            <asp:BoundField HeaderText="Pedido" DataField="Pedido" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Fechadoc" DataField="Fechadoc" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="CodProv" DataField="CodProv" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Proveedor" DataField="Proveedor" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Ref.Proveedor" DataField="Ref.Proveedor" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Total" DataField="Total" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Pagado Hasta" DataField="PagadoHasta" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Comentarios" DataField="Comentarios" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Autor" DataField="Autor" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Articulo" DataField="Articulo" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Estado Linea" DataField="EstadoLinea" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Entrada de Mercancia" DataField="Entrada" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Comentarios1" DataField="Comentarios1" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Entrada diario" DataField="EntradaDiario" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Factura" DataField="Factura" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Fecha de Vencimiento" DataField="FechaVencimiento" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Referencia" DataField="Referencia" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Estado Factura" DataField="EstadoFactura" ItemStyle-CssClass="active"/>
                                            <asp:BoundField HeaderText="Factura Cancelada" DataField="FacturaCancelada" ItemStyle-CssClass="active"/>
                                        </Columns>
                                    </asp:GridView>  

        </div>      
      </div>
    </div>
   </div>
</div>


</asp:Content>
