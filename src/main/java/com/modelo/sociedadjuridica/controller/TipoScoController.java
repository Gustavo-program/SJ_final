package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.TipoSco;
import com.modelo.sociedadjuridica.service.TipoScoService;

@Controller
public class TipoScoController {

	@Autowired
	private TipoScoService tipoScoService;
	
	@ResponseBody
	@RequestMapping("/listaTipoSco")
	public List<TipoSco> listaTipoSco(){
		return tipoScoService.listaTipoSco();
	}
	
}
