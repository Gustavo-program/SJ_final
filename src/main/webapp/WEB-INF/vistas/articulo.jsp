<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet- Articulo</title>
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
                        <h1 class="mt-4">Articulo</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item active">Articulo</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body t2">
                                <i class="bi bi-file-earmark"></i>
                                <a href="verCrearArticulo" class="t2">Crear Articulo</a>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Publicar 
                            </div>
                            <div class="card-body">
                                
                                <table id="id_table" class="table table-hover table-light table-striped text-center table-bordered">

                                    
						<thead class="table-dark">
							<tr class="text-center">
					
								<th style="width: 5%">ID</th>
								<th style="width: 15%">Título</th>
								<th style="width: 15%">Páginas</th>
								<th style="width: 15%">PDF</th>
								<th style="width: 15%">Revista</th>
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
      <div class="modal-body" style="padding-bottom:25pxpx;">
      
      
      
        <form id="form-act" method="post" enctype="multipart/form-data">
                        
                        
                            <div class="container-fluid px-4 d2">
                                <div class="row">
                                    
                                    <div class="col-lg-8 col-md-6 portfolio-item">
                                      <div class="card-body">
                                       <input class="form-control" id="id" name="idArticulo" maxlength="8" type="hidden"/>	
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
                                                <div class="col-md-12">
                                                    <label for="inputState" class="form-label">Articulo de la Revista</label>
                                                    <select name="revista" id="id_revista" class="form-select">
                                                      <option selected value=" ">-- Elija una Revista --</option>
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
        
    
    
             <!-- VALIDACIONES Y JQUERY -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript">
	
	
	window.onload=function listar(){
    	$.getJSON("listaArticulo", function (listado){
    		agregarGrilla(listado);
    	});
    	
    }
	
	
	
	//ELIMINAR
	
	function eliminar(id){	
		mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
	}
	
	
	function accionEliminar(id){	
		  $.ajax({
		        type: "POST",
		        url: "eliminaArticulo", 
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
	
	 <!-- EDITAR DATOS DE ARTICULOS -->
  	function editar(id,titulo,paginas,pdf,revista){	
  		
  		$('#id').val(id);
  		$('#id_titulo').val(titulo);
  		$('#id_paginas').val(paginas);
  		$('#id_pdf').val(pdf);
  		$('#id_revista').val(revista);
  		
  		$('#id_modal_actualiza').modal("show");

  	}
	
  	
	 /* METODO PARA ACTUALZAR*/    
	    $("#id_btn_actualiza").click(function(e){
		e.preventDefault();
		
		var validator = $('#form-act').data('bootstrapValidator');
	  	validator.validate();
		
	  if (validator.isValid()) {
		  
		  var formData=new FormData();
		  
		  formData.append("idArticulo", $("#id").val());
		  formData.append("titulo", $("#id_titulo").val());
		  formData.append("paginas", $("#id_paginas").val());
		  formData.append("pdf", $("#id_pdf").val());
		  formData.append("revista", $("#id_revista").val());
		  
		  
		  
	      $.ajax({
	        type: "POST",
	        url: "actualizaArticulo", 
	        data: formData,
	       // enctype: 'multipart/form-data',
	        contentType: false,
	        processData: false,
	        cache: false,
	        success: function(data){
	      	  agregarGrilla(data.lista);
	      	  mostrarMensaje(data.MENSAJE);
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
  	
  	
	    //AL CERRAR EL MODAL REINICIA LAS VALIDACIONES
        $('#id_modal_actualiza').on('hide.bs.modal', function (e) {
        	var validator = $('#form-act').data('bootstrapValidator');
          	validator.validate();
        	
            validator.resetForm();
        	
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
      				{data: "idArticulo"},
      				{data: "titulo"},
      				{data: "paginas"},
      				{data: "pdf"},
      				{data: "revista.titulo"},
      				{data: function(row, type, val, meta){
      					var salida='<button class="table-btn-crud" id="botoneditar" data-bs-toggle="modal" data-bs-target="#id_modal_actualiza" onclick="editar(\''+row.idArticulo + '\',\'' + row.titulo + '\',\'' + row.paginas + '\',\'' +row.pdf+ '\',\'' + row.revista.idrevistas + '\')" ><i class="bi bi-pencil"></i></button>';
      					
      				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
      					return salida;
      				},className:'table-sm m-5 table-borderless  caption-top'},
      				{data: function(row, type, val, meta){
      					var salida='<button class="table-btn-crud" id="botoneditar"  onclick="eliminar(\''+row.idArticulo+'\')" ><i class="bi bi-trash"></i></button>';
      					
      				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
      					return salida;
      				},className:'table-sm m-5 table-borderless  caption-top'},	
      				
      			]                                     
      	    });
      	 
      	 
      	 $('#id_table').removeClass('dataTable');
      	 //$('#id_table').removeClass('dataTable');
      	 
      	 $("#id_table").removeAttr("style");
      	 
      	
      }
	
	
	 $.ajax({
         type: "GET",
         url: "listaRevista",
         success: function(response)
         {
         	$.each(response, function(index,item){
         		//console.log("option: "+option)
         		$("#id_revista").append("<option value='"+ item.idrevistas +"'>"+ item.titulo+"</option>");
         	})
         }
 });
	
	 
	 
	 
	 /*VALIDACIONES*/

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
