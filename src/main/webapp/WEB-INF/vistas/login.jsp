<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="-1" />
	<meta http-equiv="Cache-Control" content="private" />
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />
	
     	<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrapValidator.js"></script>
		
		
        
        <link rel="stylesheet" href="css/bootstrapValidator.css">
        <link href="css/loginOriginal.css" rel="stylesheet" />
		<link href="img/logo/isotipo.png" rel="icon">

</head>
<title>Inicia Sesión</title>
</head>

<body class="bg-primary">

<div id="particles-js"></div>

<div class="top-content">
	<div class="inner-bg">
		<c:if test="${requestScope.mensaje != null}">
               		<div class="alert alert-danger fade in" id="success-alert" style="opacity: 500;display: none;z-index: 100;position: absolute;">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong style="position: relative;color: red;left: -180px;">${requestScope.mensaje}</strong>
				    </div>
				    </c:if>
	</div>
</div>
    <div class="container" id="container">
               <div class="top-content" style=" position: relative; right:50px;">
				<div class="inner-bg">
		<c:if test="${requestScope.mensaje != null}">
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong style="color: red; position: relative; right:-50px;">${requestScope.mensaje}</strong>
				    </div>
				    </c:if>
				</div>
				</div>
        
              <div class="form-container sign-in-container">
              
      
                
                    <form id="login-form" class="form" action="loginPage" method="post" autocomplete="off">


                        <div class="social-container">
                    		<img src="img/logo.png" alt="" width="90%">
                		</div>


                        <div class="form-group" style="width: 100%;">

                            <input type="text" name="login" placeholder="Ingrese Usuario" id="username" class="form-control text" autofocus>
                        </div>


                        <div class="form-group" style="width: 100%;">
              
    						<input type="password" name="password" placeholder="Ingrese Contraseña"  id="password" class="form-control text" onfocus="this.removeAttribute('readonly');">

                        </div>
                        
                        <a href="#">¿Olvidaste tu contraseña?</a>
                		<br>

                        <div class="form-group mt-5">
                            <button type="submit" class="boton" id="ini-sesion" >INICIAR SESION</button>
                            
                        </div>

                    </form>
                
         	</div>
    </div>
   
    
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 700).slideUp(700, function(){
    $("#success-alert").slideUp(700);
});
</script>	


<script type="text/javascript">
$(document).ready(function() {
    $('#login-form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	login: {
                validators: {
                    notEmpty: {
                        message: 'El usuario es obligatorio'
                    },
                    stringLength :{
                    	message: 'El usuario es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es obligatorio'
                    },
                    stringLength :{
                    	message: 'La contraseña es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            }
        }   
    });
    $('#validateBtn').click(function() {
        $('#login-form').bootstrapValidator('validate');
    });
});
</script>
    
    <script src="js/particles.js"></script>
        <script src="js/app.js"></script>
    
</body>

</html>