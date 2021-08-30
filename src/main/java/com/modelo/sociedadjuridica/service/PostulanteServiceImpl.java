package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Postulantes;
import com.modelo.sociedadjuridica.repository.PostulanteRepository;

@Service
public class PostulanteServiceImpl implements PostulanteService {

	
	
	@Autowired
	private PostulanteRepository postulanteRepository;

	
	@Override
	public List<Postulantes> listaPostulante() {
		return postulanteRepository.findAll();
	}

	@Override
	public Postulantes insertaActualizaUsuario(Postulantes obj) {
		return postulanteRepository.save(obj);
	}

	@Override
	public Postulantes insertaPostulantes(Postulantes obj) {
		return postulanteRepository.save(obj);
	}

	@Override
	public Optional<Postulantes> obtenerPorId(int idPostulante) {
		return postulanteRepository.findById(idPostulante);
	}

	@Override
	public List<Postulantes> listaPostulantePorNombreLike(String filtro) {
		return postulanteRepository.listaPostulantePorNombreLike(filtro);
	}

	@Override
	public void estadoPostulante(int id, byte estado) {
		postulanteRepository.estadoPostulante(id, estado);
		
	}

}
