<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-SCO</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
        <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
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
                        <h1 class="mt-4">Seminario - Cursos - Otros</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item active">SCO</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body t2">
                                <i class="bi bi-file-earmark"></i>
                                <a href="verIntraEventosSCOCrear" class="t2">Crear</a>
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
	                               		 	<input id="id_txt_filtro" name="filtro" class="form-control" placeholder="Ingrese el título del evento"  />
	                               		 
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
								<th style="width: 20%">Título</th>
								<th style="width: 20%">Descripción</th>
								<th style="width: 15%">Fecha de Registro</th>
								<th style="width: 15%">Tipo</th>
								<th style="width: 15%">Rama</th>
								<th style="width: 15%">Foto</th>
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
       
       
       
       
       
       
        <!-- MODAL PARA ACTUALIZAR  -->
        
<div class="modal fade" id="id_modal_actualiza" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">EDITAR DATOS</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding-bottom:100px;">
      
      
  <form id="form-act" method="post" enctype="multipart/form-data">
                        
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
                                        <input class="form-control" id="id" name="idEventosSco" maxlength="8" type="hidden"/>	
                                            <div class="form-group mt-3">
                                                <input type="text" class="form-control" name="titulo" id="id_titulo" placeholder="Título" required>
                                              </div>
                                              <div class="form-group mt-3">
                                                <textarea class="form-control" name="descripcion" id="id_descripcion" rows="5" placeholder="Descripción" required></textarea>
                                              </div>
                                              <br>
                                              <div class="row">
                                                <div class="col-md-6">
                                                    <label for="inputState" class="form-label">Publicar en</label>
                                                    <select id="id_tipo" name="tipoSco" class="form-select">
                                                      <option selected value=" ">-- Elija un lugar --</option>
                                                    </select>
                                                  </div>
                                                <div class="col-md-6">
                                                    <label for="inputState" class="form-label">Rama</label>
                                                    <select id="id_rama" name="rama" class="form-select">
                                                      <option selected value=" ">-- Elija un lugar --</option>
                                                      
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
		
		<script type="text/javascript">
		
		
		 window.onload=function listar(){
	        	$.getJSON("listaEventosSco", function (listado){
	        		agregarGrilla(listado);
	        		console.log(listado);
	        	});
	        	
	        }
		
		 $("#id_btn_filtrar").click(function(){
	        	var fil=$("#id_txt_filtro").val();
	        	$.getJSON("listaEventosScoxTitulo",{"filtro":fil}, function (lista){
	        		agregarGrilla(lista);
	        	});
	        });
		
		 
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
	    	
	    	 $.ajax({
	            type: "GET",
	            url: "listaTipoSco",
	            success: function(response)
	            {
	            	$.each(response, function(index,item){
	            		//console.log("option: "+option)
	            		$("#id_tipo").append("<option value='"+ item.idTipoSco +"'>"+ item.nombre+"</option>");
	            	})
	            }
	    });
		 
		
		
		
		
	    	 
	    	 
	    	 /* METODO PARA ACTUALZAR*/    
	    	    $("#id_btn_actualiza").click(function(e){
	    		e.preventDefault();
	    		
	    		var validator = $('#form-act').data('bootstrapValidator');
	    	  	validator.validate();
	    		
	    	  if (validator.isValid()) {
	    		  
	    		  var formData=new FormData();
	    		  
	    		  
	    		  let foto = document.getElementById('foto_eventos');	            
	    	      var file =  foto.getAttribute("src");
	    		  
	    		  formData.append("idEventosSco", $("#id").val());
	    		  formData.append("foto", file);
	    		  formData.append("titulo", $("#id_titulo").val());
	    		  formData.append("descripcion", $("#id_descripcion").val());
	    		  formData.append("tipoSco", $("#id_tipo").val());
	    		  formData.append("rama", $("#id_rama").val());
	    		  
	    		  
	    		  
	    	      $.ajax({
	    	        type: "POST",
	    	        url: "actualizaEventosSco", 
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
	    	        
	    	    	 
	    	        <!-- EDITAR DATOS DE EVENTOS -->
	    	    	function editar(id,titulo,descripcion,tipo,rama,foto){	
	    	    		let desEnter = descripcion.replace(/\n/g, "\n");
	    	    		console.log(desEnter);
	    	    		$('#id').val(id);
	    	    		$('#id_titulo').val(titulo);
	    	    		$('#id_descripcion').val(descripcion);
	    	    		$('#id_tipo').val(tipo);
	    	    		$('#id_rama').val(rama);
	    	   
	    	    		document.getElementById('foto_eventos').setAttribute('src',foto);
	    	    		
	    	    		
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
	    	    		        url: "eliminaEventosSco", 
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
	    	    	
	    	    	
	    	    	
	    	    	 //AL CERRAR EL MODAL REINICIA LAS VALIDACIONES
	    	        $('#id_modal_actualiza').on('hide.bs.modal', function (e) {
	    	        	var validator = $('#form-act').data('bootstrapValidator');
	    	          	validator.validate();
	    	        	
	    	            validator.resetForm();
	    	            limpiar();
	    	        });  
	    			
		
		
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
	       				{data: "idEventosSco"},
	       				{data: "titulo"},
						{data: function(row, type, val, meta){
							
	    					var salida = row.descripcion
	    					return salida;
	    					
	    				},className:'text-center'},
	       				/*{data: "descripcion"},*/
	       				{data: "fechaRegistro"},
	       				{data: "tipoSco.nombre"},
	       				{data: "rama.nombre"},
	       				{data: function(row, type, val, meta){
	    					
	    					var salida='<img width=85px height=70px src='+row.foto+'>';
	    					return salida;
	    				},className:'text-center'},
	       				
	       				{data: function(row, type, val, meta){
	       					var salida='<button class="table-btn-crud" id="botoneditar" data-bs-toggle="modal" data-bs-target="#id_modal_actualiza" onclick="editar(\''+row.idEventosSco + '\',\'' + row.titulo + '\',\'' + row.descripcion.replace(/\n/g, "\\r") + '\',\'' +row.tipoSco.idTipoSco+ '\',\'' +row.rama.idRama+ '\',\'' +row.foto+'\')" ><i class="bi bi-pencil"></i></button>';
	       					
	       				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
	       					return salida;
	       				},className:'table-sm m-5 table-borderless  caption-top'},
	       				{data: function(row, type, val, meta){
	       					var salida='<button class="table-btn-crud" id="botoneditar"  onclick="eliminar(\''+row.idEventosSco +'\')" ><i class="bi bi-trash"></i></button>';
	       					
	       				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
	       					return salida;
	       				},className:'table-sm m-5 table-borderless  caption-top'},	
	       				
	       			]                                     
	       	    });
	       	 
	       	 
	       	 $('#id_table').removeClass('dataTable');
	       	 //$('#id_table').removeClass('dataTable');
	       	 
	       	 $("#id_table").removeAttr("style");
	       	 
	       	
	       }
		
		
		
		
 /*VALIDACIONES PARA ACTUALIZAR*/
        
    	
    	$('#form-act').bootstrapValidator({
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
    	      
    	      tipoSco: {
					selector: '#id_tipo',
					validators: {
						notEmpty: {
							message: '*Elija una opción'
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
