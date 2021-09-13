package com.modelo.sociedadjuridica.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.EventosSco;
import com.modelo.sociedadjuridica.entidad.Rama;
import com.modelo.sociedadjuridica.entidad.TipoSco;
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
	
	
	
	//REGISTRO DE OBJETO EVENTOS SCO
	@ResponseBody
	@RequestMapping(value = "/insertaEventosSco", method = RequestMethod.POST)
	public Map<String, Object> insertaEventosSco(
			@RequestParam("titulo") String titulo,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("tipo") TipoSco tipo,
			@RequestParam("rama") Rama rama,
			@RequestParam("foto") String foto
			){
		
		Map<String, Object> salida = new HashMap<>();
		try {
			
			EventosSco obj = new EventosSco();
			
			obj.setTitulo(titulo);
			obj.setDescripcion(descripcion);
			
			obj.setTipoSco(tipo);
			obj.setRama(rama);
			
			obj.setFoto(foto);
			
			EventosSco objSalida = eventosScoService.insertaActualizaEventosSco(obj);
			
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
			List<EventosSco> lista=eventosScoService.listaEventosSco();
			salida.put("lista", lista);
		}
		
		return salida;
		
	}
	
	
	//ACTUALIZAR DE OBJETO 
	
	@ResponseBody
	@RequestMapping(value = "/actualizaEventosSco", method = RequestMethod.POST)
	public Map<String, Object> actualizaEventosSco(
			@RequestParam("idEventosSco") String idEventosSco, //SI ES QUE HAY ERROR PASALO COMO STRING
			@RequestParam("titulo") String nombre,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("tipoSco") TipoSco tipoSco,
			@RequestParam("rama") Rama rama,
			@RequestParam("foto") String foto){
		
		Map<String, Object> salida = new HashMap<>();
		try {
			
			EventosSco obj = new EventosSco();
			obj.setIdEventosSco(Integer.parseInt(idEventosSco)); //AQUI PARSEAS SI ES QUE HAY ERROR
			obj.setTitulo(nombre);
			obj.setDescripcion(descripcion);
			obj.setTipoSco(tipoSco);
			obj.setRama(rama);
			obj.setFoto(foto);
			
			EventosSco objSalida = eventosScoService.insertaActualizaEventosSco(obj);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "Error al actualizar");
			}
			else {
				
				salida.put("MENSAJE", "Actualización Exitosa");
			}
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Se generó un error");
		}
		
		finally {
			List<EventosSco> lista=eventosScoService.listaEventosSco();
			salida.put("lista", lista);
		}
		
		return salida;
		
	}
	
	
	
	//ELIMINAR OBJETO EVENTOS
	
	@ResponseBody
	@RequestMapping("eliminaEventosSco")
	public Map<String, Object> eliminaEventosSco(int id){
		Map<String, Object> salida=new HashMap<String, Object>();
		
		try {
			Optional<EventosSco> opt= eventosScoService.obtienePorId(id);
			if(opt.isPresent()) {
				eventosScoService.eliminaEventosSco(id);
				salida.put("mensaje", "Eliminación Exitosa");
				
			}
			else {
				salida.put("mensaje", "Eliminación Errónea");
			}
				
		} 		
		catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", "Se generó un error");
		}
		finally {
			List<EventosSco> lista=eventosScoService.listaEventosSco();
			salida.put("lista", lista);	
		}
			
		return salida;
	}
	
	
	
	
	
	
}
