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
  <link href="css/seminarios-sub.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: KnightOne - v4.3.0
  * Template URL: https://bootstrapmade.com/knight-simple-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>


<jsp:include page="menu-sub.jsp"></jsp:include>



  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container" id="id_encabezado">

<!-- 
        <ol>
          <li><a href="Seminario.html">Seminarios</a></li>
          <li>Derecho Penal</li>
        </ol>
        <h2>Derecho Internacional Económico: Temas actuales en comercio, inversión y derecho transnacional</h2>
 -->
      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container" id="id_detelles">

<!-- 
        <div class="card mb-3">
          <div class="card-body">
            <div class="row content">
              <img src="assets/img/img6.png" alt="..." width="100%">
              <p class="card-text"><small class="text-muted">Actualizado el 07/02/2020 06:39 p.m.</small></p>
              <h5 class="card-title tet">Derecho Internacional Económico: Temas actuales en comercio, inversión y derecho transnacional</h5><hr>
              <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas ex possimus at cum, ratione quae voluptates, qui error ut quaerat nesciunt iusto. Quo neque deserunt molestias mollitia nobis. Ducimus, distinctio.
                Ratione sunt, rem ab corporis ex quia fuga repellendus ut nemo culpa suscipit! Corrupti, ducimus suscipit! Unde facere eveniet praesentium nisi itaque, enim distinctio cupiditate. Dicta ut assumenda officia omnis.
                Illo laborum, non eveniet quisquam qui dolor ut placeat quae et, vitae voluptate, deleniti facilis sed laudantium minima laboriosam voluptatibus natus? Provident, quas architecto repellat minus unde repudiandae dolores dolorem.
              </p>
            </div>
            <hr>
            <p>
              Compartir en:
              <a href="#"><i class="bx bi-facebook ad"></i></a>
              <a href="#"><i class="bx bi-instagram ad"></i></a>
              <a href="#"><i class="bi bi-whatsapp ad"></i></a>
              <a href="#"><i class="bi bi-share ad"></i></a>  
            </p>
            <hr>
          </div>
        </div>
         -->
        
      </div>
    </section>

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
  
  
  $(document).ready(function() {
	  
	  listaData();
	  listaEncabezado();
	  
	});
  
  function listaEncabezado(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalle",{"cod":fil}, function (item){
		  console.log(item);
		  
			
		  $('#id_encabezado').append(
					
				  "<ol>"+
		          "<li>"+
		          "<a href='verSeminarios'>"+
		          'Seminarios'+
		          "</a>"+
		          "</li>"+
		          "<li>"+
		           item[0].rama.nombre+
		          "</li>"+
		        "</ol>"+
		        "<h2>"+
		        item[0].titulo+
		        "</h2>"
					
					);  	
		  
		  
  	});
	  
  }
  
  
  
  
  function listaData(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalle",{"cod":fil}, function (item){
		  let enter = item[0].descripcion.replace(/\n/g, "<br>");
		  console.log(item);
		  
		  $('#id_detelles').append(
					
				  "<div class='card mb-3'>"+
			      "<img src="+item[0].foto+" class='card-img-top' id='detimg' alt='...'>"+
			      "<div class='card-body'>"+
			      "<p class='card-text'>"+
			        "<small class='text-muted'>"+
			        'Actualizado el ' +item[0].fechaRegistro+
			        "</small>"+
			        "</p>"+
			       "<h5 class='card-title tet'>"+
			       	item[0].titulo+
			        "</h5>"+
			        "<hr>"+
			        "<p class='card-text'>"+
			        enter+
			     	"</p>"+
			       " <hr>"+
			       " <p>"+
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
			   " </div>	"			
					
					);  		
		  
  	});
	  
  }
  
  </script>
  

</body>

</html>