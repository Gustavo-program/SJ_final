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

import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.entidad.Ubigeo;
import com.modelo.sociedadjuridica.entidad.Usuario;
import com.modelo.sociedadjuridica.service.UsuarioService;

@Controller
public class UsuarioController {
	
	
	@Autowired
	private UsuarioService usuarioService;

	
	@ResponseBody
	@RequestMapping("/listaUsuarios")
	public List<Usuario> listaUsuarios(){
		return usuarioService.listaUsuarios();
	}
	
	@ResponseBody
	@RequestMapping("/listaUsuariosxNombre")
	public List<Usuario> lista(String filtro){
		return usuarioService.listaUsuarioPorNombreLike("%" + filtro.trim() + "%");
	}
	
	
	//REGISTRO DE OBJETO USUARIOS
			@ResponseBody
			@RequestMapping(value = "/insertaUsuarios", method = RequestMethod.POST)
			public Map<String, Object> insertaUsuarios(
					@RequestParam("nombre") String nombre,
					@RequestParam("apePaterno") String apePaterno,
					@RequestParam("apeMaterno") String apeMaterno,
					@RequestParam("telefono") String telefono,
					@RequestParam("dni") String dni,
					@RequestParam("fechaNacimiento") String fechaNacimiento,
					@RequestParam("correo") String correo,
					@RequestParam("password") String password,
					@RequestParam("direccion") String direccion,
					@RequestParam("sexo") String sexo,
					@RequestParam("ubigeo") Ubigeo ubigeo,
					@RequestParam("rol") Rol rol,
					@RequestParam("foto") String foto
					){
				
				Map<String, Object> salida = new HashMap<>();
				try {
					
					Usuario obj = new Usuario();
					
					obj.setNombre(nombre);
					obj.setApePaterno(apePaterno);
					obj.setApeMaterno(apeMaterno);
					obj.setTelefono(telefono);
					obj.setDni(dni);
					
					Date date1 = new SimpleDateFormat("yyy-MM-dd").parse(fechaNacimiento);
					
					obj.setFechaNacimiento(date1);
					obj.setCorreo(correo);
					obj.setPassword(password);
					obj.setDireccion(direccion);
					obj.setSexo(sexo);
					obj.setUbigeo(ubigeo);
					obj.setRol(rol);
					
					//login
					String login = "";
					login = "SJ" + dni;
					
					obj.setLogin(login);
					obj.setFoto(foto);
					
					Usuario objSalida = usuarioService.insertaActualizaUsuarios(obj);
					
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
					List<Usuario> lista=usuarioService.listaUsuarios();
					salida.put("lista", lista);
				}
				
				return salida;
				
			}
			
			
			
			
			//ACTUALIZACION DE OBJETO USUARIOS
			@ResponseBody
			@RequestMapping(value = "/actualizaUsuarios", method = RequestMethod.POST)
			public Map<String, Object> actualizaUsuarios(
					@RequestParam("idUsuario") String idUsuario,
					@RequestParam("nombre") String nombre,
					@RequestParam("apePaterno") String apePaterno,
					@RequestParam("apeMaterno") String apeMaterno,
					@RequestParam("telefono") String telefono,
					@RequestParam("dni") String dni,
					@RequestParam("fechaNacimiento") String fechaNacimiento,
					@RequestParam("correo") String correo,
					@RequestParam("password") String password,
					@RequestParam("direccion") String direccion,
					@RequestParam("sexo") String sexo,
					@RequestParam("ubigeo") Ubigeo ubigeo,
					@RequestParam("rol") Rol rol,
					@RequestParam("foto") String foto
					){
				
				Map<String, Object> salida = new HashMap<>();
				try {
					
					Usuario obj = new Usuario();
					obj.setIdUsuario(Integer.parseInt(idUsuario));
					obj.setNombre(nombre);
					obj.setApePaterno(apePaterno);
					obj.setApeMaterno(apeMaterno);
					obj.setTelefono(telefono);
					obj.setDni(dni);
					
					Date date1 = new SimpleDateFormat("yyy-MM-dd").parse(fechaNacimiento);
					
					obj.setFechaNacimiento(date1);
					obj.setCorreo(correo);
					obj.setPassword(password);
					obj.setDireccion(direccion);
					obj.setSexo(sexo);
					obj.setUbigeo(ubigeo);
					obj.setRol(rol);
					
					//login
					String login = "";
					login = "SJ" + dni;
					
					obj.setLogin(login);
					obj.setFoto(foto);
					
					Usuario objSalida = usuarioService.insertaActualizaUsuarios(obj);
					
					if(objSalida == null) {
						salida.put("MENSAJE", "Error en la Actualización");
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
					List<Usuario> lista=usuarioService.listaUsuarios();
					salida.put("lista", lista);
				}
				
				return salida;
				
			}
			
			
			
			
			
			//ELIMINAR OBJETO USUARIO
			
			@ResponseBody
			@RequestMapping("eliminaUsuarios")
			public Map<String, Object> eliminaUsuarios(int id){
				Map<String, Object> salida=new HashMap<String, Object>();
				
				try {
					Optional<Usuario> opt= usuarioService.obtienePorId(id);
					if(opt.isPresent()) {
						usuarioService.eliminaUsuario(id);
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
					List<Usuario> lista=usuarioService.listaUsuarios();
					salida.put("lista", lista);	
				}
					
				return salida;
			}
			
			
	
}
