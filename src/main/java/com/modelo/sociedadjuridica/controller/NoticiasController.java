package com.modelo.sociedadjuridica.controller;

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

import com.modelo.sociedadjuridica.entidad.Noticias;
import com.modelo.sociedadjuridica.entidad.Rama;
import com.modelo.sociedadjuridica.entidad.TipoNoticias;
import com.modelo.sociedadjuridica.service.NoticiasService;

@Controller
public class NoticiasController {

	@Autowired
	private NoticiasService noticiasService;
	
	
	
	@ResponseBody
	@RequestMapping("/listaNoticias")
	public List<Noticias> listaNoticias(){
		return noticiasService.listaNoticias();
	}
	
	
	
	@ResponseBody
	@RequestMapping("/listaNoticiasxTitulo")
	public List<Noticias> lista(String filtro) {
		return noticiasService.listaNoticiasPorTitulo("%"+filtro.trim() + "%");
	}
	
	
	@ResponseBody
	@RequestMapping("/listaNoticiasxTipo")
	public List<Noticias> listaxTipo(int idTipo) {
		return noticiasService.listaNoticiasPorTipo(idTipo);
	}
	
	
	//REGISTRO DE OBJETO NOTICIAS
	@ResponseBody
	@RequestMapping(value = "/insertaNoticias", method = RequestMethod.POST)
	public Map<String, Object> insertaNoticias(
			@RequestParam("titulo") String titulo,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("tipo") TipoNoticias tipo,
			@RequestParam("rama") Rama rama,
			@RequestParam("imagen") String imagen///imagen
			){
		
		Map<String, Object> salida = new HashMap<>();
		
		try {
			
			Noticias obj = new Noticias();
			
			obj.setTitulo(titulo);
			obj.setDescripcion(descripcion);
			obj.setFechaRegistro(new Date());///fecha de registro
			obj.setTipo(tipo);
			obj.setRama(rama);
			
			obj.setImagen(imagen);////////imagen
			
			Noticias objSalida = noticiasService.insertaActualizaNoticias(obj);
			
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
			List<Noticias> lista=noticiasService.listaNoticias();
			salida.put("lista", lista);
		}
		
		return salida;
		
	}
	
	
	
	
	
	//ACTUALIZAR DE OBJETO 
	
		@ResponseBody
		@RequestMapping(value = "/actualizaNoticias", method = RequestMethod.POST)
		public Map<String, Object> actualizaNoticias(
				@RequestParam("idNoticias") String idNoticias, //SI ES QUE HAY ERROR PASALO COMO STRING
				@RequestParam("titulo") String titulo,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("tipo") TipoNoticias tipo,
				@RequestParam("rama") Rama rama,
				@RequestParam("imagen") String imagen){
			
			Map<String, Object> salida = new HashMap<>();
			try {
				
				Noticias obj = new Noticias();
				obj.setIdNoticias(Integer.parseInt(idNoticias)); //AQUI PARSEAS SI ES QUE HAY ERROR
				obj.setTitulo(titulo);
				obj.setDescripcion(descripcion);
				obj.setFechaRegistro(new Date());/*faltaba poner esto en el actualizar*/
				obj.setTipo(tipo);
				obj.setRama(rama);
				obj.setImagen(imagen);
				
				Noticias objSalida = noticiasService.insertaActualizaNoticias(obj);
				
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
				List<Noticias> lista=noticiasService.listaNoticias();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
		
		
		
		//ELIMINAR OBJETO NOTICIAS
		
		@ResponseBody
		@RequestMapping("eliminaNoticias")
		public Map<String, Object> eliminaNoticias(int id){
			Map<String, Object> salida=new HashMap<String, Object>();
			
			try {
				Optional<Noticias> opt= noticiasService.obtienePorId(id);
				if(opt.isPresent()) {
					noticiasService.eliminaNoticias(id);
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
				List<Noticias> lista=noticiasService.listaNoticias();
				salida.put("lista", lista);	
			}
				
			return salida;
		}
	
	
	
	
}
