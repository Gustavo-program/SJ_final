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

import com.modelo.sociedadjuridica.entidad.Articulo;
import com.modelo.sociedadjuridica.entidad.Revista;
import com.modelo.sociedadjuridica.service.ArticuloService;

@Controller
public class ArticuloController {
	
	@Autowired
	private ArticuloService articuloService;

	@ResponseBody
	@RequestMapping("/listaArticulo")
	public List<Articulo> listaArticulo(){
		return articuloService.listaArticulo();
	}
	
	
	@ResponseBody
	@RequestMapping("/listaDetalleArticulo")
	public List<Articulo> listaDetalleArticulo(int cod){
		return articuloService.listaArticuloPorRevista(cod);
	}
	
	//REGISTRO DE OBJETO ARTICULO
		@ResponseBody
		@RequestMapping(value = "/insertaArticulo", method = RequestMethod.POST)
		public Map<String, Object> insertaArticulo(
				@RequestParam("titulo") String titulo,
				@RequestParam("paginas") String paginas,
				@RequestParam("pdf") String pdf,
				@RequestParam("revista") Revista revista
				){
			
			Map<String, Object> salida = new HashMap<>();
			
			try {
				
				Articulo obj = new Articulo();
				
				obj.setTitulo(titulo);
				obj.setPaginas(paginas);
				obj.setPdf(pdf);
				System.err.println(revista);
				obj.setRevista(revista);
				
				
				Articulo objSalida = articuloService.insertaActualizaArticulo(obj);
				
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
				List<Articulo> lista=articuloService.listaArticulo();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
		
		
		//ACTUALIZAR DE OBJETO 
		
			@ResponseBody
			@RequestMapping(value = "/actualizaArticulo", method = RequestMethod.POST)
			public Map<String, Object> actualizaArticulo(
					@RequestParam("idArticulo") String idArticulo, //SI ES QUE HAY ERROR PASALO COMO STRING
					@RequestParam("titulo") String titulo,
					@RequestParam("paginas") String paginas,
					@RequestParam("pdf") String pdf,
					@RequestParam("revista") Revista revista){
				
				Map<String, Object> salida = new HashMap<>();
				try {
					
					Articulo obj = new Articulo();
					obj.setIdArticulo(Integer.parseInt(idArticulo)); //AQUI PARSEAS SI ES QUE HAY ERROR
					obj.setTitulo(titulo);
					obj.setPaginas(paginas);
					obj.setPdf(pdf);
					obj.setRevista(revista);
					
					Articulo objSalida = articuloService.insertaActualizaArticulo(obj);
					
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
					List<Articulo> lista=articuloService.listaArticulo();
					salida.put("lista", lista);
				}
				
				return salida;
				
			}
			
			//ELIMINAR OBJETO NOTICIAS
			
			@ResponseBody
			@RequestMapping("/eliminaArticulo")
			public Map<String, Object> eliminaArticulo(int id){
				Map<String, Object> salida=new HashMap<String, Object>();
				
				try {
					Optional<Articulo> opt= articuloService.obtienePorId(id);
					if(opt.isPresent()) {
						articuloService.eliminaArticulo(id);
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
					List<Articulo> lista=articuloService.listaArticulo();
					salida.put("lista", lista);	
				}
					
				return salida;
			}
		
}
