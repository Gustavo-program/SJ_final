<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<jsp:include page="intranetValida.jsp" />
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet - SJ</title>
        
           <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        
        
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
          <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

     
    </head>
    
    <body class="sb-nav-fixed">
        
        
        
     <jsp:include page="nav-responsive.jsp"></jsp:include>
     
     
        
        <div id="layoutSidenav">
        
            <div id="layoutSidenav_nav">
            
            
            <jsp:include page="nav-opciones.jsp"></jsp:include>
            
            
            </div>
            
            
            <div id="layoutSidenav_content">
                <main class="w-100">
                    <div class="container-fluid px-4 d2">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 portfolio-item cardImg" >
                                <div class="card cardHome"  style="width :80%; height:100%;">
                                  <img src="${sessionScope.objUsuario.foto}" class="card-img-top" alt="..." style="width: 100%; height:100%;">
                                </div>
                              </div>
                            <div class="col-lg-6-a col-md-6 portfolio-item cardImg">
                              <div class="card-body text-center cardHome">
                                <h1 class=" tar">�Hola!</h1>
                                <h5 class="card-title tet">${sessionScope.objUsuario.nombre} ${sessionScope.objUsuario.apePaterno} ${sessionScope.objUsuario.apeMaterno}</h5>
                                <p class="card-text ter">${sessionScope.objUsuario.rol.cargo} de ${sessionScope.objUsuario.rol.area}</p>
                              </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        
    </body>
</html>
