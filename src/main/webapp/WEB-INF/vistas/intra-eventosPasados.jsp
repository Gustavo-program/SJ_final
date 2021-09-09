<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Eventos Pasados</title>
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
                        <h1 class="mt-4">Eventos Pasados</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item active">Eventos Pasados</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body t2">
                                <i class="bi bi-file-earmark"></i>
                                <a href="verIntraEventosPasadosCrear" class="t2">Crear Evento</a>
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
								<th style="width: 25%">Descripción</th>
								<th style="width: 10%">Fecha</th>
								<th style="width: 10%">Rama</th>
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
        
          <!-- SCRIPT PARA LA FOTO -->
		<script type="text/javascript" src="js/modal-foto.js"></script>
        
             <!-- VALIDACIONES Y JQUERY -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrapValidator.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		
		
		
		<script type="text/javascript">
		
		
		 window.onload=function listar(){
	        	$.getJSON("listaEventosPasados", function (listado){
	        		agregarGrilla(listado);
	        	});
	        	
	        }
		
	    	
	    	
	    	 $("#id_btn_filtrar").click(function(){
        	var fil=$("#id_txt_filtro").val();
        	$.getJSON("listaEventosPasadosxTitulo",{"filtro":fil}, function (lista){
        		agregarGrilla(lista);
        	});
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
	       				{data: "idEventosPasados"},
	       				{data: "titulo"},
	       				{data: "descripcion"},
	       				{data: "fecha"},
	       				{data: "rama.nombre"},
	       				{data: function(row, type, val, meta){
	    					
	    					var salida='<img width=70px height=70px src='+row.foto+'>';
	    					return salida;
	    				},className:'text-center'},
	       				
	       				{data: function(row, type, val, meta){
	       					var salida='<button class="table-btn-crud" id="botoneditar" data-bs-toggle="modal" data-bs-target="#id_modal_actualiza" onclick="editar(\''+row.idEventosNosotros + '\',\'' + row.titulo + '\',\'' + row.descripcion+ '\',\'' +row.fecha+ '\',\'' +row.rama.idRama+ '\',\'' +row.foto+'\')" ><i class="bi bi-pencil"></i></button>';
	       					
	       				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
	       					return salida;
	       				},className:'table-sm m-5 table-borderless  caption-top'},
	       				{data: function(row, type, val, meta){
	       					var salida='<button class="table-btn-crud" id="botoneditar"  onclick="eliminar(\''+row.idNosotros +'\')" ><i class="bi bi-trash"></i></button>';
	       					
	       				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
	       					return salida;
	       				},className:'table-sm m-5 table-borderless  caption-top'},	
	       				
	       			]                                     
	       	    });
	       	 
	       	 
	       	 $('#id_table').removeClass('dataTable');
	       	 //$('#id_table').removeClass('dataTable');
	       	 
	       	 $("#id_table").removeAttr("style");
	       	 
	       	
	       }
		
		</script>
        
    </body>
</html>
