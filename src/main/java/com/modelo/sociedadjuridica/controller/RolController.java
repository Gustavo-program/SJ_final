package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.service.RolService;

@Controller
public class RolController {

	@Autowired
	private RolService rolService;
	
	
	@ResponseBody
	@RequestMapping("/listaCargos")
	public List<String> listaCargos(){
		return rolService.listaCargos();
	}
	
	@ResponseBody
	@RequestMapping("/listaAreas")
	public List<Rol> listaAreas(String cargo){/*si sale error tengo que listar como String y no como Rol*/
		return rolService.listaAreas(cargo);
	}
	
}
