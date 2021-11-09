package com.modelo.sociedadjuridica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.modelo.sociedadjuridica.entidad.Cliente;
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
	
	
	
	/*REGISTRO DE CLIENTES O ENTRADAS NOSE*/
	
	
	
	
	
	
	
	
	
}
