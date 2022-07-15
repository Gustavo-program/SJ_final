package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Revista;
import com.modelo.sociedadjuridica.repository.RevistaRepository;

@Service
public class RevistaServiceImpl implements RevistaService{

	@Autowired
	private RevistaRepository revistaRepository;
	
	@Override
	public List<Revista> listaRevista() {
		return revistaRepository.findAll();
	}

	@Override
	public Revista insertaActualizaRevista(Revista obj) {
		return revistaRepository.save(obj);
	}

	@Override
	public Optional<Revista> obtienePorId(int idRevista) {
		return revistaRepository.findById(idRevista);
	}

	@Override
	public void eliminaRevista(int id) {
		revistaRepository.deleteById(id);
		
	}

	@Override
	public List<Revista> listaRevistaPorId(int cod) {
		return revistaRepository.listaRevistaPorId(cod);
	}

}
