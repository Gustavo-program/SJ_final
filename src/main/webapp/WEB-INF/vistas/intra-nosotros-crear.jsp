<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Nosotros</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/login.css" rel="stylesheet" />
        <!-- Favicons -->
        <link href="img/logo/isotipo.png" rel="icon">
        <link href="img/logo/isotipo.png" rel="apple-touch-icon">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
          
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
                        <h1 class="mt-4">Nosotros</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item"><a href="verNosotros">Nosotros</a></li>
                            <li class="breadcrumb-item active">Crear</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="container-fluid px-4 d2">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 portfolio-item">
                                        <div class="card">
                                          <img src="img/img2.jpg" class="card-img-top" alt="...">
                                        </div>
                                        <div class="card mb-4">
                                            <div class="card-body">Tamaño establecido es 343 - 221 (Pixeles)
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="formFile" class="form-label"></label>
                                            <input class="form-control" type="file" id="formFile">
                                          </div>
                                      </div>
                                    <div class="col-lg-8 col-md-6 portfolio-item">
                                      <div class="card-body">
                                        <form>
                                            <div class="form-group mt-3">
                                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Nombre" required>
                                              </div>
                                              <div class="form-group mt-3">
                                                <textarea class="form-control" name="message" rows="5" placeholder="Descripciòn" required></textarea>
                                              </div>
                                              <br>
                                              <div class="row">
                                                <div class="col-md-6">
                                                    <label for="inputState" class="form-label">Publicar en</label>
                                                    <select id="inputState" class="form-select">
                                                      <option selected>-- Elija un lugar --</option>
                                                      <option>Asociados Extraordinario</option>
                                                      <option>Consejo Editorial</option>
                                                      <option>Consejo Consultivo</option>
                                                    </select>
                                                  </div>
                                                  <div class="col-md-6">
                                                    <label for="inputState" class="form-label">Licenciado</label>
                                                    <select id="inputState" class="form-select">
                                                      <option selected>-- Elija un lugar --</option>
                                                      <option>ABOGADO</option>
                                                      <option>ABOGADA</option>
                                                    </select>
                                                  </div>
                                              </div>
                                              <div class="b3">
                                                <button type="button" class="btn btn-secondary">Cancelar</button>
                                                <button type="submit" class="btn btn-primary">Guardar</button>    
                                              </div>
                                          </form>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
