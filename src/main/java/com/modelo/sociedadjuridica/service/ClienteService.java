package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Cliente;

public interface ClienteService {
	
	/*CRUD*/
	public abstract List<Cliente> listaCliente();
	public abstract Cliente insertaActualizaClientes(Cliente obj);
	public abstract Optional<Cliente> obtienePorId(int idCliente);
	public abstract void eliminaCliente(int id);
	public abstract List<Cliente> consultaEntradas(String filtro);
	
	
	public abstract List<Cliente> buscaPorEvento(int evento);
	
	

}
