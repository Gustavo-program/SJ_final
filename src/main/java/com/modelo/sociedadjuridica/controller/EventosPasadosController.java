package com.modelo.sociedadjuridica.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.EventosPasados;
import com.modelo.sociedadjuridica.entidad.Rama;
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
	
	
	
	//REGISTRO DE OBJETO EVENTOS PASADOS
		@ResponseBody
		@RequestMapping(value = "/insertaEventosPasados", method = RequestMethod.POST)
		public Map<String, Object> insertaEventosPasados(
				@RequestParam("titulo") String titulo,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("fecha") String fecha,
				@RequestParam("rama") Rama rama,
				@RequestParam("foto") String foto
				){
			
			Map<String, Object> salida = new HashMap<>();
			try {
				
				EventosPasados obj = new EventosPasados();
				
				obj.setTitulo(titulo);
				obj.setDescripcion(descripcion);
				
				Date date1 =new  SimpleDateFormat("yyyy-MM-dd").parse(fecha);
				obj.setFecha(date1);
				
				obj.setRama(rama);
				
				obj.setFoto(foto);
				
				EventosPasados objSalida = eventPasService.insertaActualizaEventosPasados(obj);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "Error en el Registro");
				}
				else {
					
					salida.put("MENSAJE", "Registro Exitoso");
				}
				
			} 
			
			catch (Exception e) {
				e.printStackTrace();
				salida.put("MENSAJE", "Se generó un error");
			}
			
			finally {
				List<EventosPasados> lista=eventPasService.listaEventosPasados();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
	

}
