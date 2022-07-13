<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Eventos Próximos</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <!-- Favicons -->
  <link href="img/logo/isotipo.png" rel="icon">
  <link href="img/logo/isotipo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">
    

<!-- Template Main JS File -->
	
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrapValidator.css"/>


  <!-- Template Main CSS File -->
  <link href="css/eventosProximo-sub.css" rel="stylesheet">


</head>

<body>

 <jsp:include page="menu-sub.jsp"></jsp:include>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container" id="id_encabezado">

		<!-- Encabezado -->
		
      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container" id="id_detelles">



 <!-- Modal -->
              <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">TUS DATOS PERSONALES</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    
                    
                    <form id="form-reg" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                    
                    <div class="form-group mb-3" id="poneridEvento">
                         <!--<input type='text' class='form-control' id='id_evento' placeholder='id' value='hola'>  -->
                      </div>
                    
                    
                      <div class="form-group mb-3">
                        <label for="formGroupExampleInput" class="form-label">Nombre</label>
                        <input type="text" class="form-control" name="nombres" id="id_reg_nombres" placeholder="Nombre">
                      </div>
                      <div class="form-group mb-3">
                        <label for="formGroupExampleInput" class="form-label">Apellido Paterno</label>
                        <input type="text" class="form-control" name="apePaterno" id="id_reg_apePaterno" placeholder="Apellido Paterno">
                      </div>
                      <div class="form-group mb-3">
                        <label for="formGroupExampleInput" class="form-label">Apellido Materno</label>
                        <input type="text" class="form-control" name="apeMaterno" id="id_reg_apeMaterno" placeholder="Apellido Materno">
                      </div>
                      <div class="form-group mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Correo Electrónico</label>
                        <input type="email" class="form-control" name="correo" id="id_reg_correo" placeholder="Correo Electrónico">
                      </div>
                      <div class="form-group mb-3">
                        <label for="formGroupExampleInput2" class="form-label">Teléfono</label>
                        <input type="text" class="form-control" name="telefono" id="id_reg_telefono" placeholder="Teléfono">
                      </div>
                    </div>
                    
                    
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                      <button type="button" id="id_registrar" class="btn btn-success">Enviar</button>
                    </div>
                    
                    </form>
                  </div>
                </div>
              </div>
                     
        
      </div>
    </section>

  </main><!-- End #main -->
  
<jsp:include page="footer.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>



	
	
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	
<script type="text/javascript">
  

  
  
  $(document).ready(function() {
	  //obtenerId();
	 listaEncabezado();
	 listaData();
	 incluirID();
	  
	});
  
/* function obtenerId() {
	  
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  return numeroId;
	  
  }
 
 */
 
 function listaEncabezado(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleEvenProximo",{"cod":fil}, function (item){
		  console.log(item);
		  
			
		  $('#id_encabezado').append(
					
				  "<ol>"+
		          "<li>"+
		          "<a href='verEventosProximos'>"+
		          'Eventos Próximos'+
		          "</a>"+
		          "</li>"+
		          "<li>"+
		          'Información'+
		          "</li>"+
		        "</ol>"+
		        "<h2>"+
		       item[0].titulo+
		       "</h2>"
					
					);  	
		  
		  
 	});
	  
 }
 
 

 
 function incluirID(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleEvenProximo",{"cod":fil}, function (item){
		  console.log(item);
		  
			
		  $('#poneridEvento').append(
				  "<input type='text' class='form-control' id='id_reg_evento' name='eventos' value='"+item[0].titulo+"' readonly> <input type='hidden' class='form-control' id='reg_evento_id' name='eventosProximos' value='"+item[0].idEventosProximos+"' readonly>"
					);
		  
	});
	  
}
 
 
 function listaData(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleEvenProximo",{"cod":fil}, function (item){
		  let enter = item[0].descripcion.replace(/\n/g, "<br>");
		  console.log(item);
		  
		  $('#id_detelles').append(
					
				  "<div class='card mb-3'>"+
		          "<div class='card-body'>"+
		            "<div class='row content'>"+
		              "<img src="+item[0].foto+" id='detimg' alt='...'>"+
		              "<p class='card-text'>"+
		              "<small class='text-muted'>"+
		              'Se realizará el ' +item[0].fecha+ ' a las '+item[0].hora+
		              "</small>"+
		              "</p>"+
		              "<h5 class='card-title tet'>"+
		              item[0].titulo+
		              "</h5>"+
		              "<hr>"+

		              "<p>"+
		              
		              enter+
		              
		              "</p>"+
		              
		              
		              "<button type='button' class='btn btn-primary' data-bs-toggle='modal' data-bs-target='#exampleModal'>"+
		                'Comprar Entrada'+
		              "</button>"+

		             

		            "</div>"+
		            "<hr>"+
		           "<p>"+
		            'Compartir en:'+
			          "<a href='https://www.facebook.com' target='_blank'>"+
			        "<i class='bx bi-facebook ad'>"+
			        	"</i>"+
			        	"</a>"+
			          "	<a href='https://www.instagram.com' target='_blank'>"+
			          	"<i class='bx bi-instagram ad'>"+
			          	"</i>"+
			          	"</a>"+
			          	"<a href='https://wa.me/+51953067712' target='_blank'>"+
			          	"<i class='bi bi-whatsapp ad'>"+
			          	"</i>"+
			          	"</a>"+
			          	"<a href='#'>"+
			          	"<i class='bi bi-share ad'>"+
			          	"</i>"+
			          	"</a>"+
		            "</p>"+
		            "<hr>"+
		          "</div>"+
		        "</div>"
					
					);  		
		  
 	});
	  
 }
 

	$("#id_registrar").click(function(e){
		e.preventDefault();
		
		var validator = $('#form-reg').data('bootstrapValidator');
		validator.validate();
		
		
		if (validator.isValid()){	
		  var formData=new FormData();
		  
		  
		  
		  formData.append("nombres", $("#id_reg_nombres").val());
		  formData.append("apePaterno", $("#id_reg_apePaterno").val());
		  formData.append("apeMaterno", $("#id_reg_apeMaterno").val());
		  formData.append("correo", $("#id_reg_correo").val());
		  formData.append("telefono", $("#id_reg_telefono").val());
		  formData.append("eventosProximos", $("#reg_evento_id").val());
		  
		  
	      $.ajax({
	        type: "POST",
	        url: "insertaClientes",
	        data: formData,
	        contentType: false,
	        processData: false,
	        cache: false,
	        success: function(data){
	        	mostrarMensaje(data.MENSAJE);
	        	
	        	limpiar();
	        	validator.resetForm();
	        	$('#exampleModal').modal("hide");
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

  		
  		$('#id_reg_nombres').val('');
  		$('#id_reg_apePaterno').val('');
  		$('#id_reg_apeMaterno').val('');
  		$('#id_reg_correo').val('');
  		$('#id_reg_telefono').val('');
  		
  	}
	
	  $('#exampleModal').on('hide.bs.modal', function (e) {
      	var validator = $('#form-reg').data('bootstrapValidator');
        	validator.validate();
      	
          validator.resetForm();
          limpiar();
      	
      }); 
	
	$('#form-reg').bootstrapValidator(
			{
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					nombres : {
						selector : '#id_reg_nombres',
						validators : {
							notEmpty : {
								message : 'ingrese su nombre completo'
							},
							stringLength : {
								message : 'El nombre es de 5 a 100 caracteres',
								min : 5,
								max : 100
							}
						}
					},

					apePaterno : {
						selector : '#id_reg_apePaterno',
						validators : {
							notEmpty : {
								message : 'Ingrese su apellido Paterno'
							},
							stringLength : {
								message : 'El apellido paterno es de 5 a 25 caracteres',
								min : 5,
								max : 25
							}
							
						}
					},
					apeMaterno : {
						selector : '#id_reg_apeMaterno',
						validators : {
							notEmpty : {
								message : 'Ingrese su apellido Materno'
							},
							stringLength : {
								message : 'El apellido materno es de 5 a 25 caracteres',
								min : 5,
								max : 25
							}
							
						}
					},
					

					correo : {
						selector : '#id_reg_correo',
						validators : {
							notEmpty : {
								message : 'Ingrese su correo electrónico'
							},
							emailAddress : {
								message : 'El correo no es válido'
							}
						}
					},
					
					telefono : {
						selector : '#id_reg_telefono',
						validators : {
							notEmpty : {
								message : 'Ingrese su número de teléfono'
							},
							digits: {
	                    		message:"Ingrese solo números/ "
	                  		},
							stringLength : {
								message : 'El número de teléfono es de 9 caracteres',
								min : 9,
								max : 9
							}
							
						}
					}

				}
			});
	
 
  </script>



</body>

</html>