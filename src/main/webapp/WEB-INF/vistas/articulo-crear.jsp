<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet- Artículo</title>
        
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        
          
        		<!-- VALIDACIONES Y JQUERY -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="js/global.js"></script>
        
		<!-- datatables -->
		          
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.7/css/rowReorder.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
          
          
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">  
          
          
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
		
		     
        
        
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
        <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
          
        
    </head>
    <body class="sb-nav-fixed">
        
        <jsp:include page="nav-responsive.jsp"></jsp:include>
        
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                
                
                <jsp:include page="nav-opciones.jsp"></jsp:include>
                
                
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Articulo</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item"><a href="verArticulo">Articulo</a></li>
                            <li class="breadcrumb-item active">Crear</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="container-fluid px-4 d2">
                                <div class="row">
                                   
                                    <div class="col-lg-8 col-md-6 portfolio-item">
                                      <div class="card-body">
                                      
						<form id="form-reg" method="post" enctype="multipart/form-data">
                        
                        
                            <div class="container-fluid px-4">
                                <div class="row">
                                    <div class="col-lg-12 col-md-6 portfolio-item">
                                      <div class="card-body">
                                            <div class="form-group mt-3">
                                                <input type="text" class="form-control" name="titulo" id="id_titulo" placeholder="Título" required>
                                              </div>
                                              <div class="form-group mt-3">
                                                <input type="text" class="form-control" name="paginas" id="id_paginas" placeholder="Páginas" required>
                                              </div>
                                              <div class="form-group mt-3">
                                                <textarea class="form-control" name="pdf" id="id_pdf" rows="5" placeholder="PDF" required></textarea>
                                              </div>
                                              <br>
                                              <div class="row">
                                                <div class="col-md-6">
                                                    <label for="inputState" class="form-label">Articulo de la Revista</label>
                                                    <select name="revista" id="id_revista" class="form-select">
                                                      <option selected value=" ">-- Elija una Revista --</option>
                                                    </select>
                                                  </div>
                                              </div>
                                              
                                              <div class="b3">
                                                <a href="verArticulo"><button type="button" class="btn btn-secondary">Cancelar</button></a> 
                                                <button type="submit" class="btn btn-primary" id="id_registrar">Guardar</button>    
                                              </div>
                                          
                                      </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            </form>
                                      
                                      
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        
        
    <script type="text/javascript">
    
    
    
    $.ajax({
        type: "GET",
        url: "listaRevista",
        success: function(response)
        {
        	$.each(response, function(index,item){
        		//console.log("option: "+option)
        		$("#id_revista").append("<option value='"+ item.idrevistas+"'>"+ item.titulo+"</option>");
        	})
        }
});
	
    
    
	 $("#id_registrar").click(function(e){
 		e.preventDefault();
 		
 		var validator = $('#form-reg').data('bootstrapValidator');
 		validator.validate();
 		
 		
 		if (validator.isValid()){	
 		  var formData=new FormData();
 		  
 		  
 		  formData.append("titulo", $("#id_titulo").val());
 		  formData.append("paginas", $("#id_paginas").val());
 		  formData.append("pdf", $("#id_pdf").val());
 		  formData.append("revista", $("#id_revista").val());
 		  
 	      $.ajax({
 	        type: "POST",
 	        url: "insertaArticulo", 
 	        data: formData,
 	       // enctype: 'multipart/form-data',
 	        contentType: false,
 	        processData: false,
 	        cache: false,
 	        success: function(data){
 	        	mostrarMensaje(data.MENSAJE);
 	        	limpiar();
 	        	validator.resetForm();
 	        	//location.href="verIntraEventosSco";
 	        },
 	        error: function(){
 	        	mostrarMensaje(MSG_ERROR);
 	        }
 	      });
 	      
 		return false;	
 		
 		};
 		return false;
 	});
	
		 function limpiar(){				
   		
   		$("#id_titulo").val('');
   		$("#id_paginas").val('');	
   		$("#id_pdf").val('');
   		$("#id_revista").val(' ');
  
   	}
	 
    
		 
		 /*VALIDACIONES*/

	  		$('#form-reg').bootstrapValidator({
	      	  message: 'This value is not valid',
	      	  feedbackIcons: {
	      	      valid: 'glyphicon glyphicon-ok',
	      	      invalid: 'glyphicon glyphicon-remove',
	      	      validating: 'glyphicon glyphicon-refresh'
	      	  },
	      	  fields: {
	      	  	titulo: {
	      	  		selector : '#id_titulo',
	      	          validators: {
	      	              notEmpty: {
	      	                  message: 'El título es un campo obligatorio'
	      	              },
	      	              stringLength :{
	      	              	message:'El título es de 2 a 100 caracteres',
	      	              	min : 2,
	      	              	max : 100
	      	              }
	      	          }
	      	      },
	      	      
	      	      paginas: {
	      	  		selector : '#id_paginas',
	      	          validators: {
	      	              notEmpty: {
	      	                  message: 'El número de páginas es un campo obligatorio'
	      	              },
	      	              stringLength :{
	      	              	message:' La cantidad de caracteres es de 3 a 25',
	      	              	min : 3,
	      	              	max : 25
	      	              }
	      	          }
	      	      },
	      	    pdf: {
	      	  		selector : '#id_pdf',
	      	          validators: {
	      	              notEmpty: {
	      	                  message: 'El pdf es un campo obligatorio'
	      	              },
	      	              stringLength :{
	      	              	message:'El pdf es de 3 a 1000 caracteres',
	      	              	min : 3,
	      	              	max : 1000
	      	              }
	      	          }
	      	      },
	      	     revista: {
	 					selector: '#id_revista',
	 					validators: {
	 						notEmpty: {
	 							message: '* Elija una opción'
	 						},
	 					}
	 				}, 	      
	      	     
	      	    
	      	     
	      	  }   
	      	});
		 
    </script>    
        
    </body>
</html>
