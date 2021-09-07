package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.TipoNosotros;
import com.modelo.sociedadjuridica.service.TipoNosotrosService;

@Controller
public class TipoNosotrosController {
	
	@Autowired
	private TipoNosotrosService tipoNosotrosService;
	
	
	@ResponseBody
	@RequestMapping("/listaTipoNosotros")
	public List<TipoNosotros> listaTipoNosotros(){
		return tipoNosotrosService.listaTipoNosotros();	
	}

}
