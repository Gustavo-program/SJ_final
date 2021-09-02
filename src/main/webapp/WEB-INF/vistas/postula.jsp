<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Postula</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/logo/isotipo.png" rel="icon">
  <link href="img/logo/isotipo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Template Main JS File -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrapValidator.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrapValidator.css"/>

  <!-- Template Main CSS File -->
  <link href="css/postula.css" rel="stylesheet">
  
</head>

<body>

   <!-- agregando el header con el nav -->
  <jsp:include page="menu.jsp"></jsp:include>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-xl-8">
          <h1>Postula</h1>
          <h2>We are team of designers making websites with Bootstrap</h2>
          <!--<a href="#about" class="get-started-btn scrollto">Get Started</a>-->
          <!--<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>-->
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>¡POSTULA A SOCIEDAD JURÍDICA Y SÉ PARTE DE NUESTRA HISTORIA!</h2>
          <p>
            Para participar en nuestro proceso de convocatoria envía al correo <a href="#" class="tet">sociedadjuridica.sej@gmail.com</a> los siguientes documentos:
          </p>
          <ul>
            <li><i class="ri-check-double-line"></i> <strong><span>Curriculum Vitae</span></strong> y <strong><span>Ficha de Datos</span></strong> siguiendo el modelo obligatorio (*)</li>
            <li><i class="ri-check-double-line"></i> <strong><span>Consolidado de Notas (**)</span></strong></li>
            <li><i class="ri-check-double-line"></i> El postulante debe ser alumno matriculado de la <strong><span>Facultadad de Derecho de Federico Villareal</span></strong></li>
          </ul>
          <hr>
        </div>

        <div class="row content">
          <div class="col-lg-6">
          
          
            <form id="idpostula"  method="post">
            
            <div class="mb-3 form-group">
              <label for="" class="form-label"><b>Nombre Completo</b></label>
              <input type="text" class="form-control" name="nombre" id="id_nombre" placeholder="Nombre Completo">
            </div>
            
            <div class="mb-3 form-group">
              <label for="" class="form-label"><b>Teléfono</b></label>
              <input type="text" class="form-control" name="telefono" id="id_telefono" placeholder="Teléfono">
            </div>
            
            <div class="mb-3 form-group">
              <label for="" class="form-label"><b>DNI</b></label>
              <input type="text" class="form-control"name="dni" id="id_dni" placeholder="DNI">
            </div>
            
            <div class="mb-3 form-group">
              <label for="" class="form-label"><b>Correo Electrónico</b></label>
              <input type="email" class="form-control" name="email" id="id_email" placeholder="ejemplo@correo.com">
            </div>
            
            
            <div class="mb-3 archivo-upload form-group">
              <label  class="form-label"><b>Adjuntar Curriculum Vitae (*)</b></label>
              
              <label for="idCV" class="w-100 form-control d-flex label1">
					 			<span id="nombre_cv" class="me-auto" style="color:#767574">Adjuntar CV</span> 
					 			<i class="bi bi-upload ms-auto me-5"></i>
			 </label> 
              
              <input class="" name="uploadCV" type="file" id="idCV" accept=".pdf">
            </div>
            
            
            <div class="mb-3 archivo-upload form-group">
              <label class="form-label"><b>Consolidado de Notas (**)</b></label>
              
              <label for="idNotas" class="w-100 form-control d-flex label1" placehaolde>
					 			<span id="nombre_consolidado" class="me-auto" style="color:#767574">Consolidado de Notas</span> 
					 			<i class="bi bi-upload ms-auto me-5"></i>
			  </label> 
              
              <input class="" name="uploadNotas" type="file" id="idNotas" accept=".pdf">
            </div>
            
            
            
            <!--  
            <div class="mb-3 form-check">
              <input type="checkbox" class="form-check-input" id="check" required>
              <label class="form-check-label" for="check">Acepto los términos & condiciones</label>
            </div>
            
            -->
            <a href="#"><button id="id_registrar" type="button" class="btn btn-primary" >Enviar</button></a>
            
            </form>
          </div>
          
          <div class="col-lg-6 pt-4 pt-lg-0">
            <!--<div class="ratio ratio-16x9">
              <iframe src="https://www.youtube.com/watch?v=P982oehprfY" title="YouTube video" allowfullscreen></iframe>
            </div>-->
            <img src="img/pexels-august-de-richelieu-4427430.jpg" alt="" width="100%">
            <!--<a href="#" class="btn-learn-more text-center">Ver video</a>-->
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
   <jsp:include page="footer.jsp"></jsp:include>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  
  
  <!-- a programar osea copiar y pegar xd -->
  
  <script type="text/javascript">
  
  
  	let nameCV = "";
	let nameConsolidado = "";
	
	document.getElementById('idCV').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);	    
	    nameCV = e.target.files[0].name	  
	    
	    document.getElementById('nombre_cv').innerHTML = nameCV
	    
	    
	    let cadenainvertida = nameCV.split("").reverse().join("");
	    let extension = cadenainvertida.split(".")[1];
	    nameCV = extension.split("").reverse().join("");   
	    
	    
	    
	    reader.onload=function(){    
	    	
	            let filePDF = document.getElementById('idCV');	            
	            filePDF.setAttribute("value",reader.result);
	            
	            filePDF.getAttribute("value");	            
	        
	            
	            //document.getElementById('DOWNLOAD-PDF').setAttribute('href',reader.result)
	            //document.getElementById('VISOR-PDF').setAttribute('src',reader.result)
	    }
	    
	})
	
	
	
	document.getElementById('idNotas').addEventListener("change",function(e){
	    let reader=new FileReader();
	    reader.readAsDataURL(e.target.files[0]);
	    
	    nameConsolidado = e.target.files[0].name	
	    
	    document.getElementById('nombre_consolidado').innerHTML = nameConsolidado
	    
	    let cadenainvertida = nameConsolidado.split("").reverse().join("");
	    let extension = cadenainvertida.split(".")[1];
	    nameConsolidado = extension.split("").reverse().join("");
	    
	    
	    reader.onload=function(){    
	    	
	            let filePDF = document.getElementById('idNotas');	            
	            filePDF.setAttribute("value",reader.result);
	            
	            //document.getElementById('DOWNLOAD-PDF').setAttribute('href',reader.result)
	            //document.getElementById('VISOR-PDF').setAttribute('src',reader.result)
	    }
	    
	})
	
	
	$("#id_registrar").click(function(e) {
			e.preventDefault();
			var validator = $('#idpostula').data('bootstrapValidator');
			validator.validate();
			
			if(validator.isValid()){	  
			      
				  var formData=new FormData();  
				
				  formData.append("nombre", $("#id_nombre").val());
				  formData.append("telefono", $("#id_telefono").val());
				  formData.append("dni", $("#id_dni").val());
				  formData.append("email", $("#id_email").val());
				  
				  formData.append("cvPDF", $("#idCV").attr('value'));
				  formData.append("consolidadoNotaPDF", $("#idNotas").attr('value'));	
				  
				  formData.append("nameCvPDF", nameCV);
				  formData.append("nameConsolidadoNotaPDF", nameConsolidado);
				 
				  
				
				
				$.ajax({
					type : 'POST',
					data: formData,
				    contentType: false,
				    processData: false,
				    cache: false,
					url : 'registroPostulantes',
					success : function(data) {
						mostrarMensaje(data.MENSAJE);
						limpiar();
						validator.resetForm();
					},
					error: function(data){
						mostrarMensaje(MSG_ERROR);
						console.log(data);
					}
				});
				 return true;
			};
			return false;
		});
	
	
	
	function limpiar(){
			$("#id_nombre").val('');
			$("#id_telefono").val('');
			$("#id_dni").val('');
			$("#id_email").val('');
			
			
			//------ archivos -------
			$("#idCV").val('');
			$("#idNotas").val('');	
			
			//--- NOMBRES ----
			document.getElementById('nombre_cv').innerHTML = 'Adjuntar CV';
		    document.getElementById('nombre_consolidado').innerHTML = 'Consolidado de Notas';
		}
	
	
	/*validaciones*/
			$('#idpostula')
				.bootstrapValidator(
						{
							message : 'This value is not valid',
							feedbackIcons : {
								valid : 'glyphicon glyphicon-ok',
								invalid : 'glyphicon glyphicon-remove',
								validating : 'glyphicon glyphicon-refresh'
							},
							fields : {
								nombre : {
									selector : '#id_nombre',
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

								telefono : {
									selector : '#id_telefono',
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
								},
								
								dni : {
									selector : '#id_dni',
									validators : {
										notEmpty : {
											message : 'Ingrese su número de DNI'
										},
										digits: {
				                    		message:"Ingrese solo números/ "
				                  		},
										stringLength : {
											message : 'El número de DNI es de 8 caracteres',
											min : 8,
											max : 8
										}
										
									}
								},

								email : {
									selector : '#id_email',
									validators : {
										notEmpty : {
											message : 'Ingrese su correo electrónico'
										},
										emailAddress : {
											message : 'El correo no es válido'
										}
									}
								},
								uploadCV : {
									selector : '#idCV',
									validators : {
										notEmpty : {
											message : 'Ingrese su CV'
										}
									}
								},
								uploadNotas : {
									selector : '#idNotas',
									validators : {
										notEmpty : {
											message : 'Ingrese su Consolidado de Notas'
										}
									}
								},

							}
						});
	
	
  
  </script>
  
  <script type="text/javascript" src="js/main.js"></script>	

</body>

</html>