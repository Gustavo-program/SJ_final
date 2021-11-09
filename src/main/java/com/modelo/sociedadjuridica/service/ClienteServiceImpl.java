package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Cliente;
import com.modelo.sociedadjuridica.repository.ClienteRepository;

@Service
public class ClienteServiceImpl implements ClienteService{

	@Autowired
	private ClienteRepository clienteRespository;
	
	@Override
	public List<Cliente> listaCliente() {
		return clienteRespository.findAll();
	}

	@Override
	public Cliente insertaActualizaClientes(Cliente obj) {
		return clienteRespository.save(obj);
	}

	@Override
	public Optional<Cliente> obtienePorId(int idCliente) {
		return clienteRespository.findById(idCliente);
	}

	@Override
	public void eliminaCliente(int id) {
		clienteRespository.deleteById(id);
		
	}

	@Override
	public List<Cliente> consultaEntradas(String filtro) {
		return clienteRespository.consultaEntradas(filtro);
	}

}
