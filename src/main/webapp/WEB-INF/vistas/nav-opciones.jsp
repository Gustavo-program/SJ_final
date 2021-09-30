<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<html lang="en">
<html lang="es">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Intranet - SJ</title>



</head>
<body class="sb-nav-fixed">

	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">Actualizar</div>


				<c:forEach var="x" items="${sessionScope.objMenus}">

					<c:if test="${x.seccion == 'A' }">
						<a class="nav-link" href="verInicio">
							<div class="sb-nav-link-icon active">
								<i class="bi bi-house-fill"></i>
							</div> ${x.nombre}
						</a>
					</c:if>

				</c:forEach>


				<a class="nav-link" href="verInicio">
					<div class="sb-nav-link-icon active">
						<i class="bi bi-house-fill"></i>
					</div> Inicio
				</a>
				<div class="sb-sidenav-menu-heading">Editar</div>

				<c:forEach var="x" items="${sessionScope.objMenus}">

					<c:if test="${x.seccion == 'E' }">
						<a
							class="nav-link ${ x.nombre == 'Ver Eventos' ? 'collapsed':'' }"
							href="${ x.nombre == 'Ver Eventos' ? '#': x.ruta }"
							data-bs-toggle="${x.nombre == 'Ver Eventos' ? 'collapse': ''}"
							aria-expanded="${x.nombre == 'Ver Eventos' ? 'false': ''}"
							data-bs-target="${x.nombre == 'Ver Eventos' ? '#collapseLayouts': ''} "
							aria-controls="${x.nombre == 'Ver Eventos' ? 'collapseLayouts': ''} ">
							<div class="sb-nav-link-icon active">
								<i class="bi bi-house-fill"></i>
							</div> ${x.nombre} <c:if test="${x.nombre == 'Ver Eventos' }">
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</c:if>
						</a>
					</c:if>
				</c:forEach>



				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<c:forEach var="x" items="${sessionScope.objMenus}">
							<c:if test="${x.seccion == 'SE'}">
								<a class="nav-link" href="verIntraEventosSCO">${x.nombre}</a>
							</c:if>
						</c:forEach>
					</nav>
				</div>


				<!-- a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="bi bi-calendar2-date"></i></div>
                                Eventos
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="verIntraEventosProximos">Eventos Próximos</a>
                                    <a class="nav-link" href="verIntraEventosPasados">Eventos Pasados</a>
                                    <a class="nav-link" href="verIntraEventosSCO">SCO</a>

                                </nav>
                            </div-->

				<div class="sb-sidenav-menu-heading">Miembros</div>
				
				<c:forEach var="x" items="${sessionScope.objMenus}">

					<c:if test="${x.seccion == 'M' }">
						<a class="nav-link" href="verInicio">
							<div class="sb-nav-link-icon active">
								<i class="bi bi-house-fill"></i>
							</div> ${x.nombre}
						</a>
					</c:if>

				</c:forEach>
							
			</div>
		</div>
	</nav>

</body>
</html>