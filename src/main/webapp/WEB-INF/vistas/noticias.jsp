<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Noticias</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>

  <!-- Favicons -->
  <link href="img/logo/isotipo.png" rel="icon">
  <link href="img/logo/isotipo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
 
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  

  <!-- Template Main CSS File -->
  <link href="css/noticia.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: KnightOne - v4.3.0
  * Template URL: https://bootstrapmade.com/knight-simple-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  
  
  <!-- agregando el header con el nav -->
  <jsp:include page="menu.jsp"></jsp:include>
  
  

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-xl-8">
          <h1>Noticias</h1>
          <h2>We are team of designers making websites with Bootstrap</h2>
          <!--<a href="#about" class="get-started-btn scrollto">Get Started</a>-->
          <!--<a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>-->
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Noticias Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title">
          <h2>Noticias</h2>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate eos quibusdam quia consequuntur. Porro, ad aliquam? Commodi minus, facilis veniam sit similique cupiditate nostrum eligendi unde quaerat adipisci est officia!</p>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              Entérate de nuestras más recientes noticias y publicaciones en esta sección.
            </p>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <div class="col-lg-4 offset-md-7">
              <select name="tipo" id="id_tipo" class="form-select" aria-label="Default select example">
              
              <option   value=" ">Elige una opción</option>
              <option  selected value="-1">Lo más nuevo</option>
              
              <!-- 
                <option selected>Organizar por</option>
                <option value="1" id="todo">Lo mÃ¡s nuevo</option>
                <option value="2">Noticias Nacionales</option>
                <option value="3">Noticias Internacionales</option>
                
                 -->
              </select>
            </div>
          </div>
        </div>
        
        <div class="row">

          <div class="row row-cols-1 row-cols-md-4 g-4" id="listaNoticias">
          
            <!-- 
           <div class="col">
              <div class="card h-100">
                <img src="img/hero-bg.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title"><a href="noticias-sub.html" class="card-link tet">Derecho Internacional EconÃ³mico: Temas actuales en comercio, inversiÃ³n y derecho transnacional</a></h5>
                  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Actualizado el 07/02/2020 06:39 p.m.</small>
                </div>
              </div>
            </div>
            
              -->
              
            
              
            
           
            
           
            
          </div>
        </div>
      </div>
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Anterior</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Siguiente</a>
          </li>
        </ul>
      </nav>
    </section><!-- End Pricing Section -->
    
  </main><!-- End #main -->

  <jsp:include page="footer.jsp"></jsp:include>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/purecounter/purecounter.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>


  <!-- Template Main JS File -->
  <script src="js/main.js"></script>



<script type="text/javascript">


$.getJSON("listaNoticias", function (data){				
	$.each(data, function(index,item){             
		$('#listaNoticias').append(
				
				
				'<div class="col">'+
	              '<div class="card h-100 cardStyle">'+
	               '<img src='+item.imagen+' class="card-img-top img-card" alt="...">'+
	                '<div class="card-body">'+
	                  '<h5 class="card-title"><a href="detalleNoticia?id='+item.idNoticias+'" class="card-link tet">'+item.titulo+'</a></h5>'+
	                  '<p class="card-text">'+item.descripcion+'</p>'+
	                '</div>'+
	                '<div class="card-footer">'+
	                  '<small class="text-muted">Actualizado el '+item.fechaRegistro+' p.m.</small>'+
	                '</div>'+
	              '</div>'+
	            '</div>'
	          
				 
				
				
				);  			
	});

});




	 $.ajax({
         type: "GET",
         url: "listaTipoNoticias",
         success: function(response)
         {
         	$.each(response, function(index,item){
         		//console.log("option: "+option)
         		$("#id_tipo").append("<option value='"+ item.idTipoNoticias +"'>"+ item.nombre+"</option>");
         	})
         }
 });

	 
	// function listadoxTipo(){
		 
	 //}

		 $("#id_tipo").change(function(){
			 
			 let idTipoNoticia = $("#id_tipo").val();
			 $('#listaNoticias').empty()
			 console.log(idTipoNoticia)
			 
			 if(idTipoNoticia == -1){
				 $.ajax({
			         type: "GET",
			         url: "listaNoticias",			         
			         success: function(response)
			         {
			         	$.each(response, function(index,item){
			         		console.log("Noticias: "+item.titulo)
			         		$('#listaNoticias').append(
			         				
			         				'<div class="col">'+
			      	              '<div class="card h-100 cardStyle">'+
			      	               '<img src='+item.imagen+' class="card-img-top img-card" alt="...">'+
			      	                '<div class="card-body">'+
			      	                  '<h5 class="card-title"><a href="detalleNoticia?id='+item.idNoticias+'" class="card-link tet">'+item.titulo+'</a></h5>'+
			      	                  '<p class="card-text">'+item.descripcion+'</p>'+
			      	                '</div>'+
			      	                '<div class="card-footer">'+
			      	                  '<small class="text-muted">Actualizado el '+item.fechaRegistro+' p.m.</small>'+
			      	                '</div>'+
			      	              '</div>'+
			      	            '</div>'
			      	            
			         		);
			         		
			         	})
			         }
			 });
			 }else{
				 $.ajax({
			         type: "GET",
			         url: "listaNoticiasxTipo",
			         data:{
			        	 idTipo: idTipoNoticia
			         },
			         success: function(response)
			         {
			         	$.each(response, function(index,item){
			         		console.log("Noticias: "+item.titulo)
			         		$('#listaNoticias').append(
			         				
			         				'<div class="col">'+
			      	              '<div class="card h-100 cardStyle">'+
			      	               '<img src='+item.imagen+' class="card-img-top img-card" alt="...">'+
			      	                '<div class="card-body">'+
			      	                  '<h5 class="card-title"><a href="detalleNoticia?id='+item.idNoticias+'" class="card-link tet">'+item.titulo+'</a></h5>'+
			      	                  '<p class="card-text">'+item.descripcion+'</p>'+
			      	                '</div>'+
			      	                '<div class="card-footer">'+
			      	                  '<small class="text-muted">Actualizado el '+item.fechaRegistro+' p.m.</small>'+
			      	                '</div>'+
			      	              '</div>'+
			      	            '</div>'		
			         		
			         		);
			         		
			         	})
			         }
			 });
			 }
		 })
	
	
		/* 
		 function armarTarjeta(item){
			 
			 $('#listaNoticias').append('<div class="col">'+
		              '<div class="card h-100">'+
		               '<img src='+item.imagen+' class="card-img-top" alt="...">'+
		                '<div class="card-body">'+
		                  '<h5 class="card-title"><a href="detalleNoticia?id='+item.idNoticias+'" class="card-link tet">'+item.titulo+'</a></h5>'+
		                  '<p class="card-text">'+item.descripcion+'</p>'+
		                '</div>'+
		                '<div class="card-footer">'+
		                  '<small class="text-muted">Actualizado el '+item.fechaRegistro+' p.m.</small>'+
		                '</div>'+
		              '</div>'+
		            '</div>');
		 }

*/
</script>






</body>

</html>