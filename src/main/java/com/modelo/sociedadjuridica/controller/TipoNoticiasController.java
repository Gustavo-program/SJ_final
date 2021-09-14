package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.TipoNoticias;
import com.modelo.sociedadjuridica.service.TipoNoticiasService;

@Controller
public class TipoNoticiasController {

	@Autowired
	private TipoNoticiasService tipoNoticiasService;
	
	@ResponseBody
	@RequestMapping("/listaTipoNoticias")
	public List<TipoNoticias> listaTipoNoticias(){
		return tipoNoticiasService.listaTipoNoticias();
	}
	
}
