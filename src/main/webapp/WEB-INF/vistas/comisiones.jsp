<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Comisiones</title>
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
  <link href="css/comisiones.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: KnightOne - v4.3.0
  * Template URL: https://bootstrapmade.com/knight-simple-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

   <!-- agregando el header con el nav -->
  <jsp:include page="menu.jsp"></jsp:include>
  

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-xl-8">
          <h1>Comisiones</h1>
          <h2>We are team of designers making websites with Bootstrap</h2>
          <!--<a href="#about" class="get-started-btn scrollto">Get Started</a>-->
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="row">
          <div class="col-lg-2 order-2 order-lg-1">
            <div class="col-lg-3 d-flex">
              <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">Sociedad Jurídica</li>
                <li data-filter=".filter-app">Marketing & Financiamiento</li>
                <li data-filter=".filter-card">Publicaciones</li>
                <li data-filter=".filter-web">Cursos & Seminarios</li>
              </ul>
            </div>
          </div>
          <div class="image col-lg-10 order-1 order-lg-2">
            <div class="section-title">
              <h2>Sociedad Juridica</h2>
              <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magnam, libero. Ut nisi corrupti magnam exercitationem nihil est tempora quam dicta distinctio quae cum, error natus hic tenetur et. Quas, vero!</p>
            </div>
            
            
            
            
            <div class=" portfolio-container" >
            
            <div class="row">
	            <div class="col-lg-4 col-md-6 portfolio-item" id="listaTodos">  
				</div>
            </div>
            
            <!-- 
            PEQUEÑO COMENTARIO, CADA DIV TIENE UN 4 EN TAMAÑO DE GRILLA, EL TAMAÑO TOTAL ES 12, ENTONCES SI SON 4 ELEMENTOS CON 4 DE GRILLA 
            OCUPA 16 POR LO QUE EXEDE A LOS 12, POR ENDE NO SE PUEDE VISUALIZAR EL DE MARKETING, PERO SI EN EL FILTRO, SI CAMBIO LA GRILLA
            A 3 SI SALE PERO DEMASIADO JUNTO, LUEGO VEO LOS ESTILOS.
             -->
             <!-- LUEGO TENGO QUE ARREGLAR ESTA WEBA... -->
            
             <div class="row">
	            <div class="col-lg-4 col-md-6 portfolio-item filter-app" id="listaMarketing" >
				</div>
            
            
            
	            <div class="col-lg-4 col-md-6 portfolio-item filter-card" id="listaPublicaciones">
				</div>
           
            
             
	            <div class="col-lg-4 col-md-6 portfolio-item filter-web" id="listaCursos">
				</div>
            </div>
            
            	
              
            </div>
            
            
             
           
            
          </div>
        </div>
    </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

 <jsp:include page="footer.jsp"></jsp:include>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 
 <!-- Vendor JS Files -->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/purecounter/purecounter.js"></script>
 
 
 <!-- Template Main JS File -->
  <script src="js/main.js"></script>


<script type="text/javascript">
  
  $.getJSON("listaTodos", function (data){				
		$.each(data, function(index,item){             
			$('#listaTodos').append(
					
					
					
	                
					"<div class='card cardStyle' style='width: 18rem;'>"+
					 "<img src="+item.foto+" class='card-img-top img-card' alt='imagen no encontrada'>"+
	                  "<div class='card-body'>"+
	                    "<h5 class='card-title tet'>"+
	                  		item.nombre+ ' ' +item.apePaterno+ ' ' +item.apeMaterno+
	                  	"</h5>"+
	                    "<p class='card-text'>"+
	                  		item.rol.cargo+
	                  	"</p>"+
	                  "</div>"+
	                "</div>"
					
		          
					 
					
					
					);  			
		});
	
	});
 
  
  
  $.getJSON("listaMarketing", function (data){				
		$.each(data, function(index,item){             
			$('#listaMarketing').append(
					
					
	                
					"<div class='card cardStyle' style='width: 18rem;'>"+
					 "<img src="+item.foto+" class='card-img-top img-card' alt='imagen no encontrada'>"+
	                  "<div class='card-body'>"+
	                    "<h5 class='card-title tet'>"+
	                  		item.nombre+ ' ' +item.apePaterno+ ' ' +item.apeMaterno+
	                  	"</h5>"+
	                    "<p class='card-text'>"+
	                  		item.rol.cargo+
	                  	"</p>"+
	                  "</div>"+
	                "</div>"
					
		          
					 
					
					
					);  			
		});
	
	});

  
  $.getJSON("listaPublicaciones", function (data){				
		$.each(data, function(index,item){             
			$('#listaPublicaciones').append(
					
					
					
	                
					"<div class='card cardStyle' style='width: 18rem;'>"+
					 "<img src="+item.foto+" class='card-img-top img-card' alt='imagen no encontrada'>"+
	                  "<div class='card-body'>"+
	                    "<h5 class='card-title tet'>"+
	                  		item.nombre+ ' ' +item.apePaterno+ ' ' +item.apeMaterno+
	                  	"</h5>"+
	                    "<p class='card-text'>"+
	                  		item.rol.cargo+
	                  	"</p>"+
	                  "</div>"+
	                "</div>"
					
		         
					 
					
					
					);  			
		});
	
	});

  
 
  
  
  
  $.getJSON("listaCursosSeminarios", function (data){				
		$.each(data, function(index,item){             
			$('#listaCursos').append(
					
					
					
	                
					"<div class='card cardStyle' style='width: 18rem;'>"+
					 "<img src="+item.foto+" class='card-img-top img-card' alt='imagen no encontrada'>"+
	                  "<div class='card-body'>"+
	                    "<h5 class='card-title tet'>"+
	                  		item.nombre+ ' ' +item.apePaterno+ ' ' +item.apeMaterno+
	                  	"</h5>"+
	                    "<p class='card-text'>"+
	                  		item.rol.cargo+
	                  	"</p>"+
	                  "</div>"+
	                "</div>"
					
		    
					 
					
					
					);  			
		});
	
	});
  
  
  
  
  </script>

</body>

</html>