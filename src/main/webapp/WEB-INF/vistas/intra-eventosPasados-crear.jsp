<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Eventos pasados</title>
        
        
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
                        <h1 class="mt-4">Eventos Pasados</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item"><a href="verIntraEventosPasados">Eventos Pasados</a></li>
                            <li class="breadcrumb-item active">Crear</li>
                        </ol>
                        <div class="card mb-4">
                        
                        <form id="form-reg" method="post" enctype="multipart/form-data">
                        
                            <div class="container-fluid px-4 d2">
                                <div class="row">
                                
                                    <div class="col-lg-4 col-md-6 portfolio-item">
                                          <img src="img/img_eventos.jpg" id="foto_eventos" class="card-img-top" alt="...">
                                        <label 
											for="file-input" class="w-100 text-center"> <svg
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" width="60.048"
												height="60.048" viewBox="0 0 1080 1080">
						                        <image alt="Click aquÃ­ para subir tu foto"
													title="Click aquÃ­ para subir tu foto" x="73" y="220" width="936"
													height="640"
													xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAADQAAAAkCAYAAADGrhlwAAAEXElEQVRYhd2Ze4xeQxjGf1uS1m41kRXqVht3VsUlaVPRVoWWuMU1IqoV9Q/LH4h/xB+CVEo0ITRIio1U2qoq61YRiUupa6JIbInWWpruqq5YglKZ5jnN03HO+c75vvPZ8CRf8s6ZmTPznJl532fer+Wx7h5SMAlYm1YR4UlgdvRsN6Af2LdA/6px66iMF55UcKATU55dOEJkAjp3z6gYNvsb4A0r7wPMlL01pe91Zn8GfFzBRPNwhHZUwE9ZhPrNfh7osnJY1T9lD0f99gKmW/ksoK95XHbgEmCZ7O2BUKdYOk41O2yr8618jNkHARdY+TKz3/8XyAS0eyEQ+rRGhynAsxl1RwHPZNTdXd/8SmMXP5DlFBrFthyiTYWfoe+BryoY7Dfg3pEgQ0ToKeCmJo51AjADOA7YG/gZ6AXeBt4EfqliECc0pooXpmCeXPnxOW02A48DC4AfGhnMz9CPjbwoBSG4vgY8WoMMim23AOuB8xoZ1FdoKnA5MABsUizaUud7j9RWao+eh5i2DvgOGCcvGULEBNWHOLZKK/pQo4Sm6ZdgWAP3ieAg8ArwYo13jk0h84gcxfqMOVwLzAda9exB4GvgpUYIxWgDDtcvwQ3AxBqxa1lEJkTyp3PaBxd/P/Cctughev6Ctu1AGUJ+hoLLfhX4PGiinD5H59RNkdxJMCciE1bvUuBm4JpIoWwAJps+bAHuK0MmJrRCorNTe/owDXB2FJ9i/eZwdRDOS7eVLwa+BJYC92gbfgE8YG0Go+vIFXIYdRHa0+whkXhPZ6aIJtsvOoOuus8BlmdcK7oi4j3Rlr6owNg74YRactrtUeBdrrLX2kcYHW274DkXKZgmmB31X2L2jAJj70SVWs5V+IdmzxQp5DUnyqtNkyNIMM/sj8zev8wkqiQ01uwhs/32u0KkEiww+2CzvU1bmUlUSegPs11GfWv25KjPLLP9I4wz+/cyk8iLQ2Wxwdp77PIszCTFqSVSCbdZ3SqzO80eLDOPKlfoLbNPs4+1SW46QQi0K6UMEoSPsdjKruf8PNZEUULbCrRZZ9urVWIzQbCfyOjXKz33l8oHKPYlyFMZ/0BRtT06p85xh9l3AR1Wngucq2vCB5I210t5bLR2y83+RL/C8DMUkiFXSyV0KAi26zJ2YEFyIfrfDoxX+XWdm0SP9URnKsbDkk8JunLapsIJzYq8ThaGatSHROMa2R3ainOk1LMwQWTOtPqFUfAtTSgPw9qSq6OkYxreUeBM7jNhpV+W8A2B9F2pheDajwVOB66MVj5kmW4sSyYm1C+PMqDAtlFZ0z4922oJxlpYpI+wWLnugDP0q4Vwxq6qh0xMaGnFSZJurcZ8bcNaCIf/zsgplEazkyS9UssnS3En1+02pbs2K8O6Wh+0YTihqpMkjjXmKKqGS6tdCE2vx02WwHatyq86i6PkCMbIzru+5GFqFqFT9Psvo7VZue2Rwo7/h0LC4tD/AZktwMK/AYg22ha43FwEAAAAAElFTkSuQmCC" />
						                      </svg>
										</label>
                                        <div class="mb-3 text-center">
                                            <label id="fichero" for="file-input" class="my-btn btn-danger"></label>
                                            <input  class="form-control" id="file-input" type="file" name="foto"/>
                                            <br>
                                            <label>Subir maximo foto de 1MB</label>
                                          </div>
                                      </div>
                                      
                                      
                                    <div class="col-lg-8 col-md-6 portfolio-item">
                                      <div class="card-body">
                                            <div class="form-group mt-3">
                                                <input type="text" class="form-control" name="titulo" id="id_titulo" placeholder="Título" required>
                                              </div>
                                              <div class="form-group mt-3">
                                                <textarea class="form-control" id="id_descripcion"name="descripcion" rows="5" placeholder="Descripción" required></textarea>
                                              </div>
                                              <br>
                                              <div class="row">
                                                <div class="col-md-6">
                                                    <label for="" class="form-label">Fecha</label>
                                                    <input  id="id_fecha" name="fecha" type="date" class="form-control day2">
                                                  </div>
                                                  <div class="col-md-6">
                                                    <label for="" class="form-label">Rama</label>
                                                    <select id="id_rama" name="rama" class="form-select">
                                                      <option value=" ">-- Elija un lugar --</option>
                                                    </select>
                                                  </div>
                                              </div>
                                              <div class="b3">
                                                <button type="button" class="btn btn-secondary" id="id_cancelar">Cancelar</button>
                                                <button type="submit" class="btn btn-primary" id="id_registrar">Guardar</button>    
                                              </div>
                                      </div>
                                    </div>
                                </div>
                            </div>
                            
                            </form>
                            
                        </div>
                    </div>
                </main>
            </div>
        </div>
        
         <!-- SCRIPT PARA LA FOTO -->
		<script type="text/javascript" src="js/modal-foto.js"></script>
		
		<script type="text/javascript">
		
		document.getElementById('file-input').addEventListener("change",function(e){
    	    let reader=new FileReader();
    	    reader.readAsDataURL(e.target.files[0]);
    	    reader.onload=function(){    
    	    	
    	            let foto = document.getElementById('foto_eventos');	            
    	            foto.setAttribute("src",reader.result);
    	    }
    	    
    	})
    	
    	
    	
    	 $.ajax({
            type: "GET",
            url: "listaRamas",
            success: function(response)
            {
            	$.each(response, function(index,item){
            		//console.log("option: "+option)
            		$("#id_rama").append("<option value='"+ item.idRama +"'>"+ item.nombre+"</option>");
            	})
            }
    });
		
		
		
		$("#id_registrar").click(function(e){
    		e.preventDefault();
    		
    		var validator = $('#form-reg').data('bootstrapValidator');
    		validator.validate();
    		
    		
    		if (validator.isValid()){	
    		  var formData=new FormData();
    		  
    		  //var file = $('#file-input')[0].files[0];
    		  
    		  
    		  let foto = document.getElementById('foto_eventos');	            
    	      var file =  foto.getAttribute("src");
    		  
    		  formData.append("foto", file);
    		  formData.append("titulo", $("#id_titulo").val());
    		  formData.append("descripcion", $("#id_descripcion").val());
    		  formData.append("fecha", $("#id_fecha").val());
    		  formData.append("rama", $("#id_rama").val());
    		  
    	      $.ajax({
    	        type: "POST",
    	        url: "insertaEventosPasados", 
    	        data: formData,
    	       // enctype: 'multipart/form-data',
    	        contentType: false,
    	        processData: false,
    	        cache: false,
    	        success: function(data){
    	        	mostrarMensaje(data.MENSAJE);
    	        	
    	        	
    	        	validator.resetForm();
    	        },
    	        error: function(){
    	        	mostrarMensaje(MSG_ERROR);
    	        }
    	      });
    	      
    		return false;	
    		
    		};
    		return false;
    	});
		
		
		
		
		
		
		
		//VALIDACIONES REGISTRAR
		
		
		
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
    	      
    	      descripcion: {
    	  		selector : '#id_descripcion',
    	          validators: {
    	              notEmpty: {
    	                  message: 'La descripción es un campo obligatorio'
    	              },
    	              stringLength :{
    	              	message:'La descripcion es de 3 a 300 caracteres',
    	              	min : 3,
    	              	max : 300
    	              }
    	          }
    	      },
    	      
    	      fecha: {
					selector: '#id_fecha',
					validators: {
						notEmpty: {
							message: '*Seleccione la fecha de publicación'
						},
					}
				},
    	      
    	      rama: {
					selector: '#id_rama',
					validators: {
						notEmpty: {
							message: '* Elija una opción'
						},
					}
				},
    	      foto: {
    	  		selector : '#file-input',
    	          validators: {
    	              notEmpty: {
    	                  message: 'La foto es un campo obligatorio'
    	              },
    	              file: {
    	              	extension: 'png,jpg,jpeg',
    	              	type: 'image/jpeg,image/png,image/jpg',
    	              	maxSize: 2*1024*1024,                	
    	             		message: 'La foto es de formato jpg, jpeg o png de máximo 2MB'
    	           		}
    	          }
    	      }
    	    
    	     
    	  }   
    	});
		
		
		</script>
        
    </body>
</html>
