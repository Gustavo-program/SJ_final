<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Ver usuarios</title>
        
        
        
        
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
                        <h1 class="mt-4">Ver Usuarios</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item"><a href="verUsuarios">Usuarios de Sociedad Jurídica</a></li>
                            <li class="breadcrumb-item active">Crear</li>
                        </ol>
                        <div class="card mb-4">
                        
                        
                        <form id="form-reg" method="post" enctype="multipart/form-data">
                        
                            <div class="container-fluid px-4 d2">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 portfolio-item">
                                           <img src="img/img_referencial.jpeg" id="foto_usuarios" class="card-img-top" alt="...">
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
                                      
                                      
                                      
                                      
                                    <div class="col-lg-9 col-md-6 portfolio-item">
                                      <div class="card-body">
                                        
                                              <div class="row">
                                                <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Nombre</label>
                                                    <input type="text" class="form-control" name="nombre" id="id_nombre" placeholder="Nombre Completo" required>
                                                  </div>
                                                  <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Apellidos Paterno</label>
                                                    <input type="text" class="form-control" name="apePaterno" id="id_paterno" placeholder="Apellidos Paterno" required>
                                                  </div>
                                                  <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Apellidos Materno</label>
                                                    <input type="text" class="form-control" name="apeMaterno" id="id_materno" placeholder="Apellidos Materno" required>
                                                  </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                      <div class="col-md-4">
                                                        <label for="inputState" class="form-label">Telefono</label>
                                                        <input type="number" class="form-control" name="telefono" id="id_telefono" placeholder="Teléfono" required>
                                                      </div>
                                                      <div class="col-md-4">
                                                        <label for="inputState" class="form-label">DNI</label>
                                                        <input type="number" class="form-control" name="dni" id="id_dni" placeholder="Escriba su DNI" required>
                                                      </div>
                                                      <div class="col-md-4">
                                                        <label for="inputState" class="form-label">Fecha de Nacimiento</label>
                                                        <input type="date" class="form-control day2" id="id_fecha" name="fechaNacimiento">
                                                      </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label for="inputState" class="form-label">Email</label>
                                                        <input type="email" class="form-control" name="correo" id="id_correo" placeholder="Escriba su email" required>
                                                      </div>
                                                      <div class="col-md-4">
                                                        <label for="inputState" class="form-label">Contraseña</label>
                                                        <input type="password" class="form-control" name="password" id="id_password" placeholder="Contraseña" required>
                                                      </div>
                                                      <div class="col-md-4">
                                                        <label for="inputState" class="form-label">Dirección o Domicilio</label>
                                                        <input type="text" class="form-control" name="direccion" id="id_direccion" placeholder="Escriba su dirección" required>
                                                      </div>
                                              </div> 
                                              <br>
                                              <div class="row">
                                                <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Sexo</label>
                                                    <select id="id_sexo" name="sexo" class="form-select">
                                                      <option value=" "selected>-- Elija un lugar --</option>
                                                      <option value="Hombre">Hombre</option>
                                                      <option value="Mujer">Mujer</option>
                                                      <option value="Otros">Otros</option>
                                                    </select>
                                                  </div>
                                                <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Cargo</label>
                                                    <select id="id_cargo" name="" class="form-select">
                                                      <option selected value=" "> [Seleccione Cargo] </option>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Área</label>
                                                    <select id="id_area" name="rol" class="form-select">
                                                      <option selected value=" "> [Seleccione Area] </option>
                                                    </select>
                                                </div>
                                          </div> 
                                          <br>
                                              <div class="row">
                                                <div class="col-md-4">
                                                  <label for="inputState" class="form-label">Departamento</label>
                                                  <select id="id_departamento" name="" class="form-select">
                                                    <option value=" " selected> [Seleccione Departamento] </option>
                                                  </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Provincia</label>
                                                    <select id="id_provincia" name="" class="form-select">
                                                      <option selected value=" "> [Seleccione Provincia] </option>
                                                    </select>
                                                  </div>
                                                  <div class="col-md-4">
                                                    <label for="inputState" class="form-label">Distrito</label>
                                                    <select id="id_distrito" name="ubigeo" class="form-select">
                                                      <option selected value=" "> [Seleccione Distrito] </option>
                                                    </select>
                                                  </div>
                                          </div>                                           
                                              <div class="b3">
                                               <a href="verUsuarios"><button type="button" class="btn btn-secondary">Cancelar</button></a>
                                                <button type="submit" id="id_registrar" class="btn btn-primary">Guardar</button>    
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
        
        
        
        <!-- A PROGRAMAR -->
        
        <script type="text/javascript">
        
        
    	document.getElementById('file-input').addEventListener("change",function(e){
    	    let reader=new FileReader();
    	    reader.readAsDataURL(e.target.files[0]);
    	    reader.onload=function(){    
    	    	
    	            let foto = document.getElementById('foto_usuarios');	            
    	            foto.setAttribute("src",reader.result);
    	    }
    	    
    	})
        
        //UBIGEO
        
        
        $.getJSON("listaDepartamentos",{},function(data){
	console.log(data);
	$.each(data,function(i, item){
		$("#id_departamento").append("<option value='" + item + "'>"+ item +"</option>");
	});
});
        
    	
    	$("#id_departamento").change(function(){
    		var var_dep = $("#id_departamento").val();
    		
    		$("#id_provincia").empty();
    		$("#id_provincia").append("<option value=' '>[Seleccione Provincia]</option>");
    		
    		$("#id_distrito").empty();
    		$("#id_distrito").append("<option value=' '>[Seleccione Distrito]</option>");
    		
    		$.getJSON("listaProvincias",{"departamento":var_dep},function(data){
    			console.log(data);
    			$.each(data,function(i, item){
    				$("#id_provincia").append("<option value='" + item + "'>"+ item +"</option>");
    			});
    		});
    	});
        
    	

    	$("#id_provincia").change(function(){
    		var var_dep = $("#id_departamento").val();
    		var var_pro = $("#id_provincia").val();
    		
    		$("#id_distrito").empty();
    		$("#id_distrito").append("<option value=' '>[Seleccione Distrito]</option>");
    		
    		$.getJSON("listaDistritos",{"departamento":var_dep,"provincia":var_pro},function(data){
    			console.log(data);
    			$.each(data,function(i, item){
    				$("#id_distrito").append("<option value='" + item.idUbigeo + "'>"+ item.distrito +"</option>");
    			});
    		});
    		
    	});
    	
    	
    	
    	//ROLES
    	
    	     $.getJSON("listaCargos",{},function(data){
	console.log(data);
	$.each(data,function(i, item){
		$("#id_cargo").append("<option value='" + item + "'>"+ item +"</option>");
	});
});
    	
    	
    	
    	 	$("#id_cargo").change(function(){
        		var var_cargo = $("#id_cargo").val();
        		
        		$("#id_area").empty();
        		$("#id_area").append("<option value=' '>[Seleccione Area]</option>");
        		
        		$.getJSON("listaAreas",{"cargo":var_cargo},function(data){
        			console.log(data);
        			$.each(data,function(i, obj){
        				$("#id_area").append("<option value='" + obj.idRol + "'>"+ obj.area +"</option>");
        			});
        		});
        	});
    	
    	 	
    	 	
    	 	//registrar
    	 	
    	 		
		$("#id_registrar").click(function(e){
    		e.preventDefault();
    		
    		var validator = $('#form-reg').data('bootstrapValidator');
    		validator.validate();
    		
    		
    		if (validator.isValid()){	
    		  var formData=new FormData();
    		  
    		  //var file = $('#file-input')[0].files[0];
    		  
    		  
    		  let foto = document.getElementById('foto_usuarios');	            
    	      var file =  foto.getAttribute("src");
    		  
    		  formData.append("foto", file);
    		  formData.append("nombre", $("#id_nombre").val());
    		  formData.append("apePaterno", $("#id_paterno").val());
    		  formData.append("apeMaterno", $("#id_materno").val());
    		  formData.append("telefono", $("#id_telefono").val());
    		  formData.append("dni", $("#id_dni").val());
    		  formData.append("fechaNacimiento", $("#id_fecha").val());
    		  formData.append("correo", $("#id_correo").val());
    		  formData.append("password", $("#id_password").val());
    		  formData.append("direccion", $("#id_direccion").val());
    		  formData.append("sexo", $("#id_sexo").val());
    		  formData.append("rol", $("#id_area").val());
    		  formData.append("ubigeo", $("#id_distrito").val());
    		  
    	      $.ajax({
    	        type: "POST",
    	        url: "insertaUsuarios", 
    	        data: formData,
    	       // enctype: 'multipart/form-data',
    	        contentType: false,
    	        processData: false,
    	        cache: false,
    	        success: function(data){
    	        	mostrarMensaje(data.MENSAJE);
    	        	limpiar();
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
    	 	
    	 	
    	 	
	function limpiar(){				

    		
    		$("#id_nombre").val('');
    		$("#id_paterno").val('');
    		$("#id_materno").val('');
    		$("#id_telefono").val('');
    		$("#id_dni").val('');
    		$("#id_fecha").val('');
    		$("#id_correo").val('');
    		$("#id_password").val('');
    		$("#id_direccion").val('');
    		$("#id_sexo").val(' ');
    		$("#id_cargo").val(' ');
    		$("#id_area").val(' ');
    		$("#id_departamento").val(' ');
    		$("#id_provincia").val(' ');
    		$("#id_distrito").val(' ');	
    		$("#foto_usuarios").attr('src','img/img_referencial.jpeg');		
    		$('#file-input').val('');
    		$('#fichero').html('');
    		
    	}
    	 	
			
			$('#form-reg').bootstrapValidator({
					message: 'El valor no es válido',
					feedbackIcons: {
						valid: 'glyphicon glyphicon-ok',
						invalid: 'glyphicon glyphicon-remove',
						validating: 'glyphicon glyphicon-refresh'
					},
					fields: {
						nombre: {
							selector: '#id_nombre',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 3,
									max: 40,
									message: 'De 3 a 40 caracteres'
								},
							}
						},
						apePaterno: {
							selector: '#id_paterno',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 3,
									max: 40,
									message: 'De 3 a 40 caracteres'
								},
							}
						},
						apeMaterno: {
							selector: '#id_materno',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 3,
									max: 40,
									message: 'De 3 a 40 caracteres'
								},
							}
						},
						telefono: {
							selector: '#id_telefono',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 9,
									max: 9,
									message: 'Debe contener 9 digitos'
								},
							}
						},
						direccion: {
							selector: '#id_direccion',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 3,
									max: 40,
									message: 'De 3 a 40 caracteres'
								},
							}
						},
						dni: {
							selector: '#id_dni',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 8,
									max: 8,
									message: 'Debe contener 8 digitos'
								},
							}
						},
						fechaNacimiento: {
							selector: '#id_fecha',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},				
						correo: {
							selector: '#id_correo',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								emailAddress : {
									message : 'El correo no es válido'
								}
							}
						},
						password: {
							selector: '#id_password',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
								stringLength: {
									min: 3,
									max: 40,
									message: 'De 3 a 40 caracteres'
								},
							}
						},
						sexo: {
							selector: '#id_sexo',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},
						cargo: {
							selector: '#id_cargo',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},
						rol: {
							selector: '#id_area',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},
						departamento: {
							selector: '#id_departamento',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},
						provincia: {
							selector: '#id_provincia',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
								},
							}
						},
						ubigeo: {
							selector: '#id_distrito',
							validators: {
								notEmpty: {
									message: '* Este campo es obligatorio'
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
				    	              	type: 'image/jpeg,image/png,',
				    	              	maxSize: 2*1024*1024,                	
				    	             		message: 'La foto es de formato jpg o png de máximo 2MB'
				    	           		}
				    	          }
				    	      }
					}
				});
			
    	 	
    	 	
    	 	
    	 	
    	 	
    	 	
        
        </script>
        
        
        
        
    </body>
</html>
