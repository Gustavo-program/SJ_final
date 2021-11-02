package com.modelo.sociedadjuridica.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class VistasController {
	
	//vistas para el cliente
	
	@RequestMapping("/detalleNoticia")
	public String detalleNoticia() {
		return "noticias-sub";
	}
	
	@RequestMapping("/detalleEventosPasados")
	public String detalleEventosPasados() {
		return "eventosPasados-sub";
	}
	
	@RequestMapping("/verIndex")
	public String verIndex() {
		return "index";
	}
	
	
	@RequestMapping("/verNoticias")
	public String verNoticias() {
		return "noticias";
	}
	
	
	@RequestMapping("/verAsociados")
	public String verAsociados() {
		return "asociadosExtraordinario";
	}
	
	
	@RequestMapping("/verConsejoEditorial")
	public String verConsejoEditorial() {
		return "consejoEditorial";
	}
	
	
	@RequestMapping("/verConsejoConsultivo")
	public String verConsejoConsultivo() {
		return "consejoConsultivo";
	}
	
	
	@RequestMapping("/verComisiones")
	public String verComisiones() {
		return "comisiones";
	}
	
	
	@RequestMapping("/verEventosProximos")
	public String verEventosProximos() {
		return "eventosProximos";
	}
	
	
	@RequestMapping("/verEventosPasados")
	public String verEventosPasados() {
		return "eventosPasados";
	}
	
	@RequestMapping("/verSeminarios")
	public String verSeminarios() {
		return "seminario";
	}
	
	
	@RequestMapping("/verCursos")
	public String verCursos() {
		return "cursos";
	}
	
	
	@RequestMapping("/verOtros")
	public String verOtros() {
		return "otros";
	}
	
	
	@RequestMapping("/verRevistas")
	public String verRevistas() {
		return "revista";
	}
	
	
	@RequestMapping("/verPostula")
	public String verPostula() {
		return "postula";
	}
	
	
	@RequestMapping("/verLogin")
	public String verLogin() {
		return "login";
	}
	
	
	
	
	
	
	// vistas para la administracion
	
	@RequestMapping("/verInicio")
	public String verInicio() {
		return "inicioDeSesion";
	}
	
	
	@RequestMapping("/verSlider")
	public String verSlider() {
		return "slider";
	}
	
	
	@RequestMapping("/verCrearSlider")
	public String verCrearSlider() {
		return "slider-crear";
	}
	
	
	@RequestMapping("/verIntraNoticias")
	public String verIntraNoticias() {
		return "intra-noticias";
	}
	
	
	@RequestMapping("/verIntraNoticiasCrear")
	public String verIntraNoticiasCrear() {
		return "intra-noticias-crear";
	}
	
	
	@RequestMapping("/verNosotros")
	public String verNosotros() {
		return "intra-nosotros";
	}
	
	@RequestMapping("/verNosotrosCrear")
	public String verNosotrosCrear() {
		return "intra-nosotros-crear";
	}
	
	
	@RequestMapping("/verIntraEventosProximos")
	public String verIntraEventosProximos() {
		return "intra-eventosProximo";
	}
	
	
	@RequestMapping("/verIntraEventosProximosCrear")
	public String verIntraEventosProximosCrear() {
		return "intra-eventosProximo-crear";
	}
	
	
	@RequestMapping("/verIntraEventosPasados")
	public String verIntraEventosPasados() {
		return "intra-eventosPasados";
	}
	
	
	@RequestMapping("/verIntraEventosPasadosCrear")
	public String verIntraEventosPasadosCrear() {
		return "intra-eventosPasados-crear";
	}
	
	
	@RequestMapping("/verIntraEventosSCO")
	public String verIntraEventosSCO() {
		return "intra-eventosSco";
	}
	
	
	@RequestMapping("/verIntraEventosSCOCrear")
	public String verIntraEventosSCOCrear() {
		return "intra-eventosSco-crear";
	}
	
	
	@RequestMapping("/verVentaRevista")
	public String verVentaRevista() {
		return "intra-ventaDeRevista";
	}
	
	
	@RequestMapping("/verVentaRevistaCrear")
	public String verVentaRevistaCrear() {
		return "intra-ventaDeRevista-crear";
	}
	
	
	@RequestMapping("/verUsuarios")
	public String verUsuarios() {
		return "intra-verUsuarios";
	}
	
	
	@RequestMapping("/verUsuariosCrear")
	public String verUsuariosCrear() {
		return "intra-verUsuarios-crear";
	}
	
	
	@RequestMapping("/verPostulantes")
	public String verPostulantes() {
		return "intra-verPostulante";
	}
	

	@RequestMapping("/verEntradas")
	public String verEntradas() {
		return "intra-adquirirEntradas";
	}
	
	
}



