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

import com.modelo.sociedadjuridica.entidad.Nosotros;
import com.modelo.sociedadjuridica.entidad.TipoNosotros;
import com.modelo.sociedadjuridica.service.NosotrosService;

@Controller
public class NosotrosController {
	
	@Autowired
	private NosotrosService nosotrosService;
	
	
	
	@ResponseBody
	@RequestMapping("/listaNosotros")
	public List<Nosotros> listaNosotros(){
		return nosotrosService.listaNosotros();
	}
	
	
	@ResponseBody
	@RequestMapping("/listaNosotrosxNombre")
	public List<Nosotros> lista(String filtro) {
		return nosotrosService.listaNosotrosPorNombreLike(filtro.trim() + "%");
	}
	
	//REGISTRO DE OBJETO NOSOTROS
	@ResponseBody
	@RequestMapping(value = "/insertaNosotros", method = RequestMethod.POST)
	public Map<String, Object> insertaNosotros(
			@RequestParam("nombre") String nombre,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("sexo") String sexo,
			@RequestParam("foto") String foto,
			@RequestParam("tipoNosotros") TipoNosotros tipoNosotros){
		
		Map<String, Object> salida = new HashMap<>();
		try {
			
			Nosotros obj = new Nosotros();
			
			obj.setNombre(nombre);
			obj.setDescripcion(descripcion);
			obj.setSexo(sexo);
			obj.setFoto(foto);
			obj.setTipoNosotros(tipoNosotros);
			
			Nosotros objSalida = nosotrosService.insertaActualizaNosotros(obj);
			
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
			List<Nosotros> lista=nosotrosService.listaNosotros();
			salida.put("lista", lista);
		}
		
		return salida;
		
	}
	
	
	
	
	//ACTUALIZAR DE OBJETO NOSOTROS
	
		@ResponseBody
		@RequestMapping(value = "/actualizaNosotros", method = RequestMethod.POST)
		public Map<String, Object> actualizaNosotros(
				@RequestParam("idNosotros") String idNosotros, //SI ES QUE HAY ERROR PASALO COMO STRING
				@RequestParam("nombre") String nombre,
				@RequestParam("descripcion") String descripcion,
				@RequestParam("sexo") String sexo,
				@RequestParam("foto") String foto,
				@RequestParam("tipoNosotros") TipoNosotros tipoNosotros){
			
			Map<String, Object> salida = new HashMap<>();
			try {
				
				Nosotros obj = new Nosotros();
				obj.setIdNosotros(Integer.parseInt(idNosotros)); //AQUI PARSEAS SI ES QUE HAY ERROR
				obj.setNombre(nombre);
				obj.setDescripcion(descripcion);
				obj.setSexo(sexo);
				obj.setFoto(foto);
				obj.setTipoNosotros(tipoNosotros);
				
				Nosotros objSalida = nosotrosService.insertaActualizaNosotros(obj);
				
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
				List<Nosotros> lista=nosotrosService.listaNosotros();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
	
	
		
		//ELIMINAR OBJETO NOSOTROS
		
		@ResponseBody
		@RequestMapping("eliminaNosotros")
		public Map<String, Object> eliminaNosotros(int id){
			Map<String, Object> salida=new HashMap<String, Object>();
			
			try {
				Optional<Nosotros> opt= nosotrosService.obtienePorId(id);
				if(opt.isPresent()) {
					nosotrosService.eliminaNosotros(id);
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
				List<Nosotros> lista=nosotrosService.listaNosotros();
				salida.put("lista", lista);	
			}
				
			return salida;
		}
		
	
	
	
}
