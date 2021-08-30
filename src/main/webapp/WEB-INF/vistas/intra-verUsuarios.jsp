<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Intranet-Ver usuarios</title>
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
                        <h1 class="mt-4">Ver Usuarios</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="verInicio">Inicio</a></li>
                            <li class="breadcrumb-item active">Usuarios de Sociedad Jur�dica</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body t2">
                                <i class="bi bi-file-earmark"></i>
                                <a href="verUsuariosCrear" class="t2">Crear Usuario</a>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Publicar 
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Ap. Paterno</th>
                                            <th>Ap. Materno</th>
                                            <th>Email</th>
                                            <th>Fecha De Nacimiento</th>
                                            <th>Área</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Ap. Paterno</th>
                                            <th>Ap. Materno</th>
                                            <th>Email</th>
                                            <th>Fecha De Nacimiento</th>
                                            <th>Área</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>SJ1234567</td>
                                            <td>Juan</td>
                                            <td>Paredes</td>
                                            <td>Fuentes</td>
                                            <td>nombre@gmail.com</td>
                                            <td>03/02/1998</td>
                                            <td>Publicaciones</td>
                                            <td><a href="inicio de sesion.html"><button type="button" class="btn btn-primary">
                                                <i class="bi bi-camera"></i>
                                            </button></a>
                                                <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                                <i class="bi bi-x-circle"></i>
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="staticBackdropLabel">¿Estas seguro que deseas eliminar?</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                          Se eliminará la información...
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="button" class="btn btn-primary">Aceptar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SJ1234567</td>
                                            <td>Juan</td>
                                            <td>Paredes</td>
                                            <td>Fuentes</td>
                                            <td>nombre@gmail.com</td>
                                            <td>03/02/1998</td>
                                            <td>Publicaciones</td>
                                            <td><a href="inicio de sesion.html"><button type="button" class="btn btn-primary">
                                                <i class="bi bi-camera"></i>
                                            </button></a>
                                                <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                                <i class="bi bi-x-circle"></i>
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="staticBackdropLabel">¿Estas seguro que deseas eliminar?</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                          Se eliminará la información...
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="button" class="btn btn-primary">Aceptar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </td>                                        
                                        </tr>
                                        <tr>
                                            <td>SJ1234567</td>
                                            <td>Juan</td>
                                            <td>Paredes</td>
                                            <td>Fuentes</td>
                                            <td>nombre@gmail.com</td>
                                            <td>03/02/1998</td>
                                            <td>Publicaciones</td>
                                            <td><a href="inicio de sesion.html"><button type="button" class="btn btn-primary">
                                                <i class="bi bi-camera"></i>
                                            </button></a>
                                                <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                                <i class="bi bi-x-circle"></i>
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="staticBackdropLabel">¿Estas seguro que deseas eliminar?</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                          Se eliminará la información...
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="button" class="btn btn-primary">Aceptar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </td>                                        
                                        </tr>
                                        <tr>
                                            <td>SJ1234567</td>
                                            <td>Juan</td>
                                            <td>Paredes</td>
                                            <td>Fuentes</td>
                                            <td>nombre@gmail.com</td>
                                            <td>03/02/1998</td>
                                            <td>Publicaciones</td>
                                            <td><a href="inicio de sesion.html"><button type="button" class="btn btn-primary">
                                                <i class="bi bi-camera"></i>
                                            </button></a>
                                                <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                                <i class="bi bi-x-circle"></i>
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="staticBackdropLabel">¿Estas seguro que deseas eliminar?</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                          Se eliminará la información...
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                            <button type="button" class="btn btn-primary">Aceptar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </td>                                        
                                        </tr>
                                    </tbody>
                                </table>
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
