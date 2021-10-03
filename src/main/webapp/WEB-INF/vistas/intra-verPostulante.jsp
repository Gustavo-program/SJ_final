<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Ver postulante</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
        <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
          
          
          <!-- datatables -->
		          
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/rowreorder/1.2.7/css/rowReorder.jqueryui.min.css" />
	
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
          
          
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">  
          
          
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
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
                        <h1 class="mt-4">Ver Postulantes</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item active">Ver postulantes</li>
                        </ol>
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
                            <div>
                            
                            
                                <table id="id_table" class="table table-hover table-light table-striped table-bordered text-center ">

                                    
			<thead class="table-dark">
				<tr class="text-center">
					
					<th style="width: 10%">N°</th>
					<th style="width: 25%">Nombre Completo</th>
					<th style="width: 5%">Teléfono</th>
					<th style="width: 5%">DNI</th>
					<th style="width: 20%">Email</th>
					<th style="width: 15%">CV</th>
					<th style="width: 25%">Consolidado de Notas</th>
					<th style="width: 5%">Estado</th>		
					<th style="width: 10%">Editar</th>
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
        
        <!-- Estado del postulante -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Editar Estado del Postulante</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding-bottom:100px;">
      
      <form id="id_form_actualiza" action="">
      
      <input class="form-control" id="id_ID" name="idPostulante" type="hidden" maxlength="8"/>
      
      <div class="form-group col-md-12">
        <label class="control-label" for="id_nombre">Nombre del postulante</label>
					<input class="form-control" id="id_nombre" name="nombre" readonly/>
	  </div>
	  
      <div class="form-group col-md-12">
        <label class="control-label" for="id_estado">Estado</label>
					<select id="id_estado" name="estado" class='form-control'>
						<option value=" ">[Seleccione]</option>
						<!-- <option value="1">Activo</option> 
						<option value="0">Inactivo</option> -->
						<option value="0">Pendiente</option>
						<option value="1">Rechazado</option>
						<option value="2">Aceptado</option>
						     
					</select>
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
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        
        
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.24/datatables.min.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>
        
        
        
        
        <!-- listado de los datos a la tabla -->
        
<script type="text/javascript">


window.onload=function listar(){
	$.getJSON("listaPostulante", function (listado){
		agregarGrilla(listado);
	});
	
}

//FILTRAR POR NOMBRE

$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("listaPostulantexNombre",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});


$("#id_btn_actualiza").click(function(){
	var ide = $('#id_ID').val();
	var est = $('#id_estado').val();
	var nom = $('#id_nombre').val();
	
        $.ajax({
          type: "POST",
          url: "actualizaEstadoPostulante", 
          data: {idPostulante:ide, estado: est, nombre:nom},
          success: function(data){
        	  agregarGrilla(data.lista);
        	  $('#exampleModal').modal("hide");
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    
});



function editar(id,estado,nombre){	
	$('#id_ID').val(id);
	$('#id_estado').val(estado);
	$('#id_nombre').val(nombre);
	$('#exampleModal').modal("show");
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
				{data: "idPostulante"},
				{data: "nombre"},
				{data: "telefono"},
				{data: "dni"},
				{data: "email"},
				{data: function(row, type, val, meta){
					console.log(row.cvPDF)
					var salida="<a href="+row.cvPDF+" download="+row.nameCvPDF+"><g>"+row.nameCvPDF+"</g></a>";
					
				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},	
				{data: function(row, type, val, meta){
					let nombre = row.nameConsolidadoNotaPDF;
					var salida="<a href="+row.consolidadoNotaPDF+" target='_blank' download='"+row.nameConsolidadoNotaPDF+"'><g>"+row.nameConsolidadoNotaPDF+"</g></a>";
					
				    <!--var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';-->
					return salida;
				},className:'table-sm m-5 table-borderless  caption-top'},	
				{data: "nombreEstado"},
				{data: function(row, type, val, meta){
					var salida='<button class="table-btn-crud" id="botoneditar" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="editar(\''+row.idPostulante + '\',\'' + row.estado +'\',\'' + row.nombre +'\')" ><i class="bi bi-pencil"></i></button>';
					
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
