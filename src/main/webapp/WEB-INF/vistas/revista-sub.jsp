<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Revista</title>
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
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/revista-sub.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: KnightOne - v4.3.0
  * Template URL: https://bootstrapmade.com/knight-simple-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  
 <!-- ======= Header ======= -->
  <jsp:include page="menu-sub.jsp"></jsp:include>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container" id="id_encabezado">
		<!--  
        <ol>
          <li><a href="revista.html" class="ad">Revistas</a></li>
          <li>Información</li>
        </ol>
        <h2>Derecho Internacional Económico: Temas actuales en comercio, inversión y derecho transnacional</h2>
		-->
      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
    <div class="container">
    
    <div class="row">
    
    <div class="col-md-6" id="id_detalles">   
    </div>
    
    
    <div class="col-md-6">
        
           	<div class="mb-3">
           		<div class="section-title2">
           			<h2>ART�CULOS</h2>
				</div>
				<div class="col-lg-9" id="id_articulo">  
		 		</div>
			</div>

         </div> 
    
    </div>
    	
      	
      	
      	
      
      	
    </div>
      
      
      
        
      
    </section><!-- End About Us Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
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
	  
	  
	  listaEncabezado();
	  listaData();
	  listaArticulos();
	  
	});
 
 
 function listaEncabezado(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleRevista",{"cod":fil}, function (item){
		  console.log(item);
		  
			
		  $('#id_encabezado').append(
					
				  "<ol>"+
		          "<li>"+
		          "<a href='verRevistas'>"+
		          'Revistas'+
		          "</a>"+
		          "</li>"+
		          "<li>"+
		           'Informacion'+
		          "</li>"+
		        "</ol>"+
		        "<h2>"+
		        item[0].titulo+	
		        "</h2>"
					
					);  	
		  
		  
 	});
	  
 }
 
 
 function listaArticulos(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleArticulo",{"cod":fil}, function (item){
		  console.log(item);
		  console.log(item.length);
		  
			
		  for (var i = 0; i < item.length; i++) {
			   $('#id_articulo').append(
						
					   "<ul>"+
		                  "<li>"+
		                    "<h5>"+
		                    item[i].titulo+
		                    "</h5>"+
		                    "<p>"+
		                    item[i].paginas+
		                    "</p>"+
		                    "<p class='card-text'>"+
		                    "<a href="+item[i].pdf+" target='_blank' class='card-link'>"+
		                    "<button type='button' class='btn btn-outline-danger'>"+
		                    "<i class='bi bi-file-pdf'>"+
		                    "</i>"+
		                    "PDF"+
		                    "</button>"+
		                    "</a>"+
		                    "</p>"+
		                  "</li>"+
		                "</ul>"
						
						);  	
			}
		  
		 
		  
		  
	});
	  
}
 
 
 function listaData(){
	  var baseUrl = (window.location).href; 
	  var numeroId = baseUrl.substring(baseUrl.lastIndexOf('=') + 1);
	  
	  var fil=numeroId;
	  $.getJSON("listaDetalleRevista",{"cod":fil}, function (item){
		  let enter = item[0].descripcion.replace(/\n/g, "<br>");
		  console.log(item);
		  
		  $('#id_detalles').append(
					
				  "<div class='section-title'>"+
		           " <h2>"+
		           item[0].titulo+
		            "</h2>"+
		            "<p class='card-text'>"+
		            "Para descargar la revista completa en PDF "+
		            
		            "<a href="+item[0].pdf+" target='_blank' class='card-link'>"+
		            "<button type='button' class='btn btn-outline-danger' style='margin-right: 5px;'>"+
		            "<i class='bi bi-file-pdf'>"+
		            "</i>"+
		            "PDF"+
		            "</button>"+
		            "</a>"+
		            "<a href='https://wa.me/+51953067712' target='_blank'>"+
		            "<button type='button' class='btn btn-outline-success' data-bs-toggle='modal' data-bs-target='#exampleModal'>"+
		            "<i class='bi bi-book'>"+
		            "</i>"+
		             " Comprar"+
		            "</button>"+
		            "</a>"+
		            "</p> "+
		          "</div>"+

		        "<div class='row content'>"+
		          "<div class='col-lg-6 pt-4 pt-lg-0' style='margin-left: 5%;'>"+
		            "<img src="+item[0].foto+" alt='' width='100%'>"+
		          "</div>"+

		        "</div>"
					
					);  		
		  
 	});
	  
 }
  
  
  </script>

</body>

</html>