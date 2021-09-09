package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.EventosPasados;
import com.modelo.sociedadjuridica.service.EventosPasadosService;

@Controller
public class EventosPasadosController {
	
	@Autowired
	private EventosPasadosService eventPasService;
	
	@ResponseBody
	@RequestMapping("/listaEventosPasados")
	public List<EventosPasados> listaEventosPasados(){
		return eventPasService.listaEventosPasados();
	}
	
	@ResponseBody
	@RequestMapping("/listaEventosPasadosxTitulo")
	public List<EventosPasados> lista(String filtro) {
		return eventPasService.listaEventosPasadosPorTitulo(filtro.trim() + "%");
	}

}
