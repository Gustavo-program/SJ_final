<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Seminarios</title>
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
  <link href="css/seminario.css" rel="stylesheet">

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
          <h1>Seminarios</h1>
          <h2>We are team of designers making websites with Bootstrap</h2>
          <!--<a href="#about" class="get-started-btn scrollto">Get Started</a>-->
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>Seminarios</h2>
          <p>Ent�rate de nuestras m�s recientes noticias y publicaciones en esta secci�n.</p>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-4" id="listaSeminario">
        
        
        <!--  
          <div class="col">
            <div class="card">
              <img src="assets/img/img6.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title"><a href="Seminario-sub.html" class="card-link ter">CURSO INTERDISCIPLINARIO DE DERECHO</a></h5>
                <p class="card-text ten"><i class="bi bi-briefcase-fill"></i> DERECHO PENAL</p>
                <p class="card-text"><small class="text-muted">Hace 3 minutos</small></p>
              </div>
            </div>
          </div>
          -->
          
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
    </section><!-- End About Us Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <jsp:include page="footer.jsp"></jsp:include>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <!-- Vendor JS Files -->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/purecounter/purecounter.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>



<script type="text/javascript">



$.getJSON("listaEventosSeminarios", function (data){				
	$.each(data, function(index,item){      
		$('#listaSeminario').append(
				
				 "<div class='col'>"+
		            "<div class='card cardStyle'>"+
		              "<img src="+item.foto+" class='card-img-top img-card' alt='...'>"+
		              "<div class='card-body'>"+
		                "<h5 class='card-title'>"+
		                "<a href='detalleSeminario?id="+item.idEventosSco+"' class='card-link ter'>"+
		                 item.titulo+
		                "</a>"+
		                "</h5>"+
		                "<p class='card-text ten'>"+
		                "<i class='bi bi-briefcase-fill'>"+
		                "</i>"+
		                ' ' +item.rama.nombre+
		                "</p>"+
		                "<p class='card-text'>"+
		                "<small class='text-muted'>"+
		                'Actualizado el ' +item.fechaRegistro+
		                "</small>"+
		                "</p>"+
		              "</div>"+
		            "</div>"+
		          "</div>"
				
				
				);  			
	});

});








</script>



  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>