package com.modelo.sociedadjuridica.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.Cliente;
import com.modelo.sociedadjuridica.entidad.EventosProximos;
import com.modelo.sociedadjuridica.service.ClienteService;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService clienteService;
	
	
	@ResponseBody
	@RequestMapping("/listaClientes")
	public List<Cliente> listaClientes(){
		return clienteService.listaCliente();
	}
	
	
	@ResponseBody
	@RequestMapping("/listaClientesxNombre")
	public List<Cliente> listaClientexNombre(String filtro){
		return clienteService.consultaEntradas("%" + filtro.trim() + "%");
	}
	
	
	
	/*REGISTRO DE CLIENTES Y/O ENTRADAS */
	
	
	//REGISTRO DE OBJETO CLIENTE
		@ResponseBody
		@RequestMapping(value = "/insertaClientes", method = RequestMethod.POST)
		public Map<String, Object> insertaClientes(
				@RequestParam("nombres") String nombre,
				@RequestParam("apePaterno") String apePaterno,
				@RequestParam("apeMaterno") String apeMaterno,
				@RequestParam("correo") String correo,
				@RequestParam("telefono") String telefono,
				@RequestParam("eventosProximos") EventosProximos eventosProximos
				){
			
			Map<String, Object> salida = new HashMap<>();
			
			try {
				
				Cliente obj = new Cliente();
				
				obj.setNombres(nombre);
				obj.setApePaterno(apePaterno);
				obj.setApeMaterno(apeMaterno);
				obj.setCorreo(correo);
				obj.setTelefono(telefono);
				//obj.setFechaRegistro(new Date());///fecha de registro
				obj.setEventosProximos(eventosProximos);
				
				Cliente objSalida = clienteService.insertaActualizaClientes(obj);
				
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
				List<Cliente> lista=clienteService.listaCliente();
				salida.put("lista", lista);
			}
			
			return salida;
			
		}
		
	
	
	
	
	
	
}
