package com.modelo.sociedadjuridica.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.modelo.sociedadjuridica.entidad.EventosProximos;
import com.modelo.sociedadjuridica.service.EventosProximosService;

@Controller
public class EventosProximosController {
	
	@Autowired
	private EventosProximosService eventProxService;

	
	@ResponseBody
	@RequestMapping("/listaEventosProximos")
	public List<EventosProximos> listaEventosProximos(){
		return eventProxService.listaEventosProximos();
	}
	
	@ResponseBody
	@RequestMapping("/listaEventosProximosxTitulo")
	public List<EventosProximos> lista(String filtro) {
		return eventProxService.listaEventosProximosPorTitulo("%"+filtro.trim() + "%");
	}
	
	

	//REGISTRO DE OBJETO EVENTOS PROXIMOS
		@ResponseBody
		@RequestMapping(value = "/insertaEventosProximos", method = RequestMethod.POST)
		public Map<String, Object> insertaEventosProximos(
				@RequestParam("titulo") String titulo,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("fecha") String fecha,
				@RequestParam("hora") String hora,
				@RequestParam("estado") Byte estado,
				@RequestParam("foto") String foto
				){
			
			Map<String, Object> salida = new HashMap<>();
			try {
				
				EventosProximos obj = new EventosProximos();
				
				obj.setTitulo(titulo);
				obj.setDescripcion(descripcion);
				
				Date date1 =new  SimpleDateFormat("yyyy-MM-dd").parse(fecha);
				obj.setFecha(date1);
				
				obj.setHora(hora);
				obj.setEstado(estado);
				obj.setFoto(foto);
				
				EventosProximos objSalida = eventProxService.insertaActualizaEventosProximos(obj);
				
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
				List<EventosProximos> lista=eventProxService.listaEventosProximos();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
		
		
		//ACTUALIZAR DE OBJETO 
		
		@ResponseBody
		@RequestMapping(value = "/actualizaEventosProximos", method = RequestMethod.POST)
		public Map<String, Object> actualizaEventosProximos(
				@RequestParam("idEventosProximos") String idEventosProximos, //SI ES QUE HAY ERROR PASALO COMO STRING
				@RequestParam("titulo") String titulo,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("fecha") String fecha,
				@RequestParam("hora") String hora,
				@RequestParam("estado") Byte estado,
				@RequestParam("foto") String foto){
			
			Map<String, Object> salida = new HashMap<>();
			try {
				
				EventosProximos obj = new EventosProximos();
				obj.setIdEventosProximos(Integer.parseInt(idEventosProximos)); //AQUI PARSEAS SI ES QUE HAY ERROR
				obj.setTitulo(titulo);
				obj.setDescripcion(descripcion);
				Date date1 =new  SimpleDateFormat("yyyy-MM-dd").parse(fecha);
				obj.setFecha(date1);
				obj.setHora(hora);
				obj.setEstado(estado);
				obj.setFoto(foto);
				
				EventosProximos objSalida = eventProxService.insertaActualizaEventosProximos(obj);
				
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
				List<EventosProximos> lista=eventProxService.listaEventosProximos();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
		
		

		//ELIMINAR OBJETO EVENTOS
		
		@ResponseBody
		@RequestMapping("eliminaEventosProximos")
		public Map<String, Object> eliminaEventosProximos(int id){
			Map<String, Object> salida=new HashMap<String, Object>();
			
			try {
				Optional<EventosProximos> opt= eventProxService.obtienePorId(id);
				if(opt.isPresent()) {
					eventProxService.eliminaEventosProximos(id);
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
				List<EventosProximos> lista=eventProxService.listaEventosProximos();
				salida.put("lista", lista);	
			}
				
			return salida;
		}
		
	
}
