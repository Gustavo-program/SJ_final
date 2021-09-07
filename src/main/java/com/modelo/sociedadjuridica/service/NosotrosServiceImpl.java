package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Nosotros;
import com.modelo.sociedadjuridica.repository.NosotrosRepository;

@Service
public class NosotrosServiceImpl implements NosotrosService{
	
	@Autowired
	private NosotrosRepository nosotrosRepository;

	@Override
	public List<Nosotros> listaNosotros() {
		return nosotrosRepository.findAll();
	}

	@Override
	public Nosotros insertaActualizaNosotros(Nosotros obj) {
		return nosotrosRepository.save(obj);
	}

	@Override
	public Optional<Nosotros> obtienePorId(int idNosotros) {
		return nosotrosRepository.findById(idNosotros);
	}

	@Override
	public void eliminaNosotros(int id) {
		nosotrosRepository.deleteById(id);
	}

	@Override
	public List<Nosotros> listaNosotrosPorNombreLike(String filtro) {
		return nosotrosRepository.listaNosotrosPorNombreLike(filtro);
	}

	@Override
	public List<Nosotros> listaNosotrosPorTipo(int idTipoNosotros) {
		return nosotrosRepository.listaNosotrosPorTipo(idTipoNosotros);
	}

}
