<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    

        <title>CapAAP</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="HTML/css/bootstrap.min.css" />
		<link rel="stylesheet" href="HTML/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="HTML/css/maruti-login.css" />
    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" runat="server">
				 <div class="control-group normal_text"> <h3><img src="HTML/img/icons/32/coconut.png" class="imagen"alt="CapAAP" />CapAPP</h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on"><i class="icon-user"></i></span><input runat="server" name="username" id="username" type="text" placeholder="Usuario" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on"><i class="icon-lock"></i></span><input runat="server" name="password" id="password" type="password" placeholder="Contraseña" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                   <span class="pull-right"> <asp:Button Text="Iniciar Sesión" runat="server" cssclass="btn btn-success" id="BtnEntrar"/></span>
                </div>
                <div class="form-group text-center">
                   <div runat="server" id="Alertamail" style ="display:none " class="normal_text" role="alert"><b>Usuario o contraseña incorrecta</b></div> 
                </div>
            </form>
        </div>
        
        <script src="HTML/js/jquery.min.js"></script>  
        <script src="HTML/js/maruti.login.js"></script> 
    </body>

</html>
