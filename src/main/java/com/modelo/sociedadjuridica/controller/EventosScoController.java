package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.EventosSco;
import com.modelo.sociedadjuridica.service.EventosScoService;

@Controller
public class EventosScoController {
	
	@Autowired
	private EventosScoService eventosScoService;

	
	@ResponseBody
	@RequestMapping("/listaEventosSco")
	public List<EventosSco> listaEventosSco(){
		return eventosScoService.listaEventosSco();
	}
	
	
	@ResponseBody
	@RequestMapping("/listaEventosScoxTitulo")
	public List<EventosSco> lista(String filtro) {
		return eventosScoService.listaEventosScoPorTitulo("%"+filtro.trim() + "%");
	}
	
}
