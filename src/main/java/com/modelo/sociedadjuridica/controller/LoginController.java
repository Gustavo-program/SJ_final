package com.modelo.sociedadjuridica.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.modelo.sociedadjuridica.entidad.Opcion;
import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.entidad.Usuario;
import com.modelo.sociedadjuridica.service.UsuarioService;

@Controller
public class LoginController {

	
	@Autowired
	private UsuarioService service;
	
	
	@RequestMapping("/loginPage")
	public String login(Usuario user, HttpSession session, HttpServletRequest request, ModelMap model) {
		Usuario usuario = service.login(user);
		if(usuario == null) {
			request.setAttribute("mensaje", "El Usuario No existe");
			
			return "login";
		}
		else {
			List<Opcion> menus = service.traerEnlacesDeUsuario(usuario.getIdUsuario());
			List<Rol> roles = service.traerRolesDeUsuario(usuario.getIdUsuario());
			model.addAttribute("ruta", "verInicio");
			session.setAttribute("objUsuario", usuario);
			session.setAttribute("objRoles", roles);
			session.setAttribute("objMenus", menus);
			
			return "inicioDeSesion";
		}
		
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		session.invalidate();

		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");

		request.setAttribute("mensaje", "El usuario salió de sesión");
		return "login";

	}
	
	
}
