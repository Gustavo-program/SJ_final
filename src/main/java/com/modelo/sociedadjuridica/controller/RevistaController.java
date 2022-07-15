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

import com.modelo.sociedadjuridica.entidad.Rama;
import com.modelo.sociedadjuridica.entidad.Revista;
import com.modelo.sociedadjuridica.service.RevistaService;

@Controller
public class RevistaController {
	
	@Autowired
	private RevistaService revistaService;
	
	@ResponseBody
	@RequestMapping("/listaRevista")
	public List<Revista> listaRevista(){
		return revistaService.listaRevista();
	}
	
	@ResponseBody
	@RequestMapping("/listaDetalleRevista")
	public List<Revista> listaDetalleRevista(int cod) {
		return revistaService.listaRevistaPorId(cod);
	}
	
	
	//REGISTRO DE OBJETO REVISTA
		@ResponseBody
		@RequestMapping(value = "/insertaRevista", method = RequestMethod.POST)
		public Map<String, Object> insertaRevista(
				@RequestParam("titulo") String titulo,
				@RequestParam("anno") String anno,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("pdf") String pdf,
				@RequestParam("rama") Rama rama,
				@RequestParam("foto") String foto
				){
			
			Map<String, Object> salida = new HashMap<>();
			
			try {
				
				Revista obj = new Revista();
				
				obj.setTitulo(titulo);
				obj.setAnno(anno);
				obj.setDescripcion(descripcion);
				obj.setPdf(pdf);
				obj.setRama(rama);
				obj.setFoto(foto);
				
				Revista objSalida = revistaService.insertaActualizaRevista(obj);
				
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
				List<Revista> lista=revistaService.listaRevista();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
		
		//ACTUALIZAR DE OBJETO 
		
			@ResponseBody
			@RequestMapping(value = "/actualizaRevista", method = RequestMethod.POST)
			public Map<String, Object> actualizaRevista(
					@RequestParam("idrevistas") String idrevistas,
					@RequestParam("titulo") String titulo,
					@RequestParam("anno") String anno,
					@RequestParam("descripcion") String descripcion,
					@RequestParam("pdf") String pdf,
					@RequestParam("rama") Rama rama,
					@RequestParam("foto") String foto){
				
				Map<String, Object> salida = new HashMap<>();
				try {
					
					Revista obj = new Revista();
					obj.setIdrevistas(Integer.parseInt(idrevistas));
					obj.setTitulo(titulo);
					obj.setAnno(anno);
					obj.setDescripcion(descripcion);
					obj.setPdf(pdf);
					obj.setRama(rama);
					obj.setFoto(foto);
					
					Revista objSalida = revistaService.insertaActualizaRevista(obj);
					
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
					List<Revista> lista=revistaService.listaRevista();
					salida.put("lista", lista);
				}
				
				return salida;
				
			}
			
			
			//ELIMINAR OBJETO NOTICIAS
			
			@ResponseBody
			@RequestMapping("eliminaRevista")
			public Map<String, Object> eliminaRevista(int id){
				Map<String, Object> salida=new HashMap<String, Object>();
				
				try {
					Optional<Revista> opt= revistaService.obtienePorId(id);
					if(opt.isPresent()) {
						revistaService.eliminaRevista(id);
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
					List<Revista> lista=revistaService.listaRevista();
					salida.put("lista", lista);	
				}
					
				return salida;
			}
	
	
	
	

}
