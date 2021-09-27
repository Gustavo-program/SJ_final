<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Ver usuarios</title>
        
        
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        
        
      
        <!-- datatables -->
		          
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.7/css/rowReorder.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
          
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        
        <script type="text/javascript" src="js/global.js"></script>
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
        
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
        <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
        
        
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
                            <li class="breadcrumb-item active">Usuarios de Sociedad Jurídica</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body t2">
                                <i class="bi bi-file-earmark"></i>
                                <a href="verUsuariosCrear" class="t2">Crear Usuario</a>
                            </div>
                        </div>
                        <div class="card mb-4">
                            
                                <div class="card-header">
                                <div class="row" >
                               		<div class="col-md-6">
                               		<p class="mb-0 mt-2">
                               		 <i class="fas fa-table me-1"></i>
                                	Publicar 
                                	</p>
                               		</div>
                               		<div class="col-md-6 input-group w-50">
	                               		 	<input id="id_txt_filtro" name="filtro" class="form-control" placeholder="ingrese el nombre"  />
	                               		 
	                               		 <button class="btn btn-secondary" id="id_btn_filtrar">
	                               		 		<i class="bi bi-search"></i>
	                               		 	</button>
                               		</div>
                               </div>
                            </div>
                            
                            <div class="card-body">
                            
                            
                            <table id="id_table" class="table table-hover table-light table-striped text-center table-bordered">

                                    
						<thead class="table-dark">
							<tr class="text-center">
					
								<th style="width: 5%">ID</th>
								<th style="width: 25%">Nombre Completo</th>
								<th style="width: 5%">Telefono</th>
								<th style="width: 5%">Cargo</th>	
								<th style="width: 10%">Área</th>			
								<th style="width: 10%">Departamento</th>	
								<th style="width: 10%">Provincia</th>	
								<th style="width: 10%">Distrito</th>	
								<th style="width: 10%">Foto</th>	
								<th style="width: 5%">Editar</th>	
								<th style="width: 5%">Eliminar</th>	
								
							</tr>
						</thead>
						<tbody>
						
						
						
						
						</tbody>
                                    
					</table>
                            
                            
                            
                            
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        
               <!-- MODAL PARA ACTUALIZAR EL OBJETO "USUARIOS" -->

<div class="modal fade" id="id_modal_actualiza" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content"  style="width:125%">
      <div class="modal-header">
        <h5 class="modal-title">EDITAR DATOS</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding-bottom:50px;">
       <form id="form_act" action="">
                        
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
                                        <input class="form-control" id="id" name="idUsuario" maxlength="8" type="hidden"/>	
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
                                      </div>
                                    </div>
                                </div>
                            </div>
                            
                            </form>
	  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" id="id_btn_actualiza">Actualizar</button>
      </div>
    </div>
  </div>
</div>
        
        
        
        
        
        
        
        
        
           <!-- SCRIPT PARA LA FOTO -->
		<script type="text/javascript" src="js/modal-foto.js"></script>
        
             <!-- VALIDACIONES Y JQUERY -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		
        
        
        <!-- A PROGRAMAR--->
        
        <script type="text/javascript">
        
        
        window.onload=function listar(){
        	$.getJSON("listaUsuarios", function (listado){
        		agregarGrilla(listado);
        	});
        	
        }
        
        
        $("#id_btn_filtrar").click(function(){
        	var fil=$("#id_txt_filtro").val();
        	$.getJSON("listaUsuariosxNombre",{"filtro":fil}, function (lista){
        		agregarGrilla(lista);
        	});
        });
        
        
        
        document.getElementById('file-input').addEventListener("change",function(e){
    	    let reader=new FileReader();
    	    reader.readAsDataURL(e.target.files[0]);
    	    reader.onload=function(){    
    	    	
    	            let foto = document.getElementById('foto_usuarios');	            
    	            foto.setAttribute("src",reader.result);
    	    }
    	    
    	})
    	
    	
    	//listado de ubigeo
    	
    	  
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
    	
    	
    	
    	 	
    	 	 /* METODO PARA ACTUALZAR*/    
    	   $("#id_btn_actualiza").click(function(e){
    		e.preventDefault();
    		
    		var validator = $('#form_act').data('bootstrapValidator');
    		validator.validate();
    		
    		
    		if (validator.isValid()){	
    		  var formData=new FormData();
    		  
    		  //var file = $('#file-input')[0].files[0];
    		  
    		  
    		  let foto = document.getElementById('foto_usuarios');	            
    	      var file =  foto.getAttribute("src");
    		  
    	      formData.append("idUsuario", $("#id").val());
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
    	        url: "actualizaUsuarios", 
    	        data: formData,
    	       // enctype: 'multipart/form-data',
    	        contentType: false,
    	        processData: false,
    	        cache: false,
    	        success: function(data){
    	        	agregarGrilla(data.lista);
    	        	mostrarMensaje(data.MENSAJE);
    	        	limpiar();
    	        	validator.resetForm();
    	        	
    	        	$('#id_modal_actualiza').modal("hide");
    	        },
    	        error: function(){
    	        	mostrarMensaje(MSG_ERROR);
    	        }
    	      });
    	      
    		return false;	
    		
    		};
    		return false;
    	});
    	        
    	 	
    	
    	
    	
    	
    	 <!-- EDITAR DATOS DE USUARIOS -->
    	function editar(idUsuario,nombre,apePaterno,apeMaterno,telefono,dni,fechaNacimiento,correo,password,direccion,sexo,cargo,area,departamento,provincia,distrito,foto){	
    		
    		$('#id').val(idUsuario);
    		$('#id_nombre').val(nombre);
    		$('#id_paterno').val(apePaterno);
    		$('#id_materno').val(apeMaterno);
    		$('#id_telefono').val(telefono);
    		$('#id_dni').val(dni);
    		$('#id_fecha').val(fechaNacimiento);
    		$('#id_correo').val(correo);
    		$('#id_password').val(password);
    		$('#id_direccion').val(direccion);
    		$('#id_sexo').val(sexo);
    		
    		//para ubigeo
	$("#id_provincia").empty();
    $("#id_distrito").empty();

    $("#id_provincia").append("<option value=' ' >[Seleccione Provincia]</option>");
    $("#id_distrito").append("<option value=' ' >[Seleccione Distrito]</option>");

    //Seleccionar departamento
    $('#id_departamento').val(departamento);
    
    $.getJSON("listaProvincias",{"departamento":departamento},function(data){
    $.each(data,function(i, obj){
       if(obj ==  provincia){
          $("#id_provincia").append("<option selected value='" + obj+ "'>"+obj+"</option>");
       }else{
          $("#id_provincia").append("<option value='" + obj+ "'>"+obj+"</option>");
       }
    });
    });

    $.getJSON("listaDistritos",{"departamento":departamento,"provincia":provincia},function(data){
    $.each(data,function(index,obj){
       if(obj.distrito ==  distrito){
		 $("#id_distrito").append("<option selected value='"+obj.idUbigeo+"'>"+obj.distrito+"</option>")
	  }else{
		 $("#id_distrito").append("<option value='"+obj.idUbigeo+"'>"+obj.distrito+"</option>")
       }
    });

    });
    		
    
    
    
    
   //para los roles
   
   /*limpiamos el combo de area*/
   $("#id_area").empty(); 		
   
   /*le damos el valor de [Seleccione Area]*/
    $("#id_area").append("<option value=' ' >[Seleccione Area]</option>");	
   
   /*capturo el combo de cargo*/
   $('#id_cargo').val(cargo);
   
   
   /*creo la funcion*/
     $.getJSON("listaAreas",{"cargo":cargo},function(data){
    $.each(data,function(index,obj){
       if(obj.area ==  area){
		 $("#id_area").append("<option selected value='"+obj.idRol+"'>"+obj.area+"</option>")
	  }else{
		 $("#id_area").append("<option value='"+obj.idRol+"'>"+obj.area+"</option>")
       }
    });

    });
    		
   
    		document.getElementById('foto_usuarios').setAttribute('src',foto);
    		
    		
    		$('#id_modal_actualiza').modal("show");

    	}
    	
    	
    	
    	
    	
    	
    	 function limpiar(){				

	      		
	      		$('#file-input').val('');
	      		$('#fichero').html('');
	      		
	      	}
        
    	 
    	 
    	 
    	//ELIMINAR
	    	
	    	function eliminar(id){	
	    		mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
	    	}
	    	
	    	
	    	function accionEliminar(id){	
	    		  $.ajax({
	    		        type: "POST",
	    		        url: "eliminaUsuarios", 
	    		        data: {"id":id},
	    		        success: function(data){
	    		      	  agregarGrilla(data.lista);
	    		      	  mostrarMensaje(data.mensaje);
	    		        },
	    		        error: function(){
	    		      	  mostrarMensaje(MSG_ERROR);
	    		        }
	    		   });
	    		}
	    	
    	 
        function agregarGrilla(lista){
          	 $('#id_table').DataTable().clear();
          	 $('#id_table').DataTable().destroy();
          	 $('#id_table').DataTable({
          			data: lista,
          			searching: false,
          			ordering: true,
          			processing: false,
          			responsive: true,
          			pageLength: 5,
          			lengthChange: false,
          			language: {
          		        "decimal": "",
          		        "emptyTable": "No hay información",
          		        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
          		        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
          		        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
          		        "infoPostFix": "",
          		        "thousands": ",",
          		        "lengthMenu": "Mostrar _MENU_ Entradas",
          		        "loadingRecords": "Cargando...",
          		        "processing": "Procesando...",
          		        "search": "Buscar:",
          		        "zeroRecords": "Sin resultados encontrados",
          		        "paginate": {
          		            "first": "Primero",
          		            "last": "Ultimo",
          		            "next": "Siguiente",
          		            "previous": "Anterior"
          		        }
          		    },
          			 
          			columns:[
          				{data: "idUsuario"},
          				{data: function(row, type, val, meta){						

        					var nombresApellidos= row.nombre+" "+row.apePaterno+" "+row.apeMaterno;

        					return nombresApellidos;
        				},className:'table-sm m-5 table-borderless  caption-top'},	
          				{data: "telefono"},
          				{data: "rol.cargo"},
          				{data: "rol.area"},
          				{data: "ubigeo.departamento"},
          				{data: "ubigeo.provincia"},
          				{data: "ubigeo.distrito"},
          				
          				{data: function(row, type, val, meta){
       					
       					var salida='<img width=70px height=70px src='+row.foto+'>';
       					return salida;
       				},className:'text-center'},
          				
          				{data: function(row, type, val, meta){
          					var salida='<button class="table-btn-crud" id="botoneditar" data-bs-toggle="modal" data-bs-target="#id_modal_actualiza" onclick="editar(\''+row.idUsuario + '\',\'' + row.nombre + '\',\'' + row.apePaterno+ '\',\'' +row.apeMaterno+ '\',\'' +row.telefono+ '\',\'' +row.dni+'\',\'' +row.fechaNacimiento+'\',\'' +row.correo+'\',\'' +row.password+'\',\'' +row.direccion+'\',\'' +row.sexo+'\',\'' +row.rol.cargo+'\',\'' +row.rol.area+'\',\'' +row.ubigeo.departamento+'\',\'' +row.ubigeo.provincia+'\',\'' +row.ubigeo.distrito+'\',\'' +row.foto+'\')" ><i class="bi bi-pencil"></i></button>';
          					
          				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
          					return salida;
          				},className:'table-sm m-5 table-borderless  caption-top'},
          				{data: function(row, type, val, meta){
          					var salida='<button class="table-btn-crud" id="botoneditar"  onclick="eliminar(\''+row.idUsuario +'\')" ><i class="bi bi-trash"></i></button>';
          					
          				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
          					return salida;
          				},className:'table-sm m-5 table-borderless  caption-top'},	
          				
          			]                                     
          	    });
          	 
          	 
          	 $('#id_table').removeClass('dataTable');
          	 //$('#id_table').removeClass('dataTable');
          	 
          	 $("#id_table").removeAttr("style");
          	 
          	
          }
        
        
        
        
        //AL CERRAR EL MODAL REINICIA LAS VALIDACIONES
        $('#id_modal_actualiza').on('hide.bs.modal', function (e) {
        	var validator = $('#form_act').data('bootstrapValidator');
          	validator.validate();
        	
            validator.resetForm();
            limpiar();
        });  
        
        
        //validaciones
        	$('#form_act').bootstrapValidator({
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
				    	              file: {
				    	              	extension: 'png,jpeg',
				    	              	type: 'image/jpeg,image/png',
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
