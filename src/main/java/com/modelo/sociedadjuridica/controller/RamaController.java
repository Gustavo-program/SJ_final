package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.Rama;
import com.modelo.sociedadjuridica.service.RamaService;

@Controller
public class RamaController {

	@Autowired
	private RamaService ramaService;
	
	@ResponseBody
	@RequestMapping("/listaRamas")
	public List<Rama> listaRamas(){
		return ramaService.listarRamas();
	}
	 
}
