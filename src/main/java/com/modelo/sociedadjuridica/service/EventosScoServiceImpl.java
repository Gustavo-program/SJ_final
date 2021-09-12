package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.EventosSco;
import com.modelo.sociedadjuridica.repository.EventosScoRepository;

@Service
public class EventosScoServiceImpl implements EventosScoService{
	
	@Autowired
	private EventosScoRepository eventosScoRepository;

	@Override
	public List<EventosSco> listaEventosSco() {
		return eventosScoRepository.findAll();
	}

	@Override
	public EventosSco insertaActualizaEventosSco(EventosSco obj) {
		return eventosScoRepository.save(obj);
	}

	@Override
	public Optional<EventosSco> obtienePorId(int idEventosSco) {
		return eventosScoRepository.findById(idEventosSco);
	}

	@Override
	public void eliminaEventosSco(int id) {
		eventosScoRepository.deleteById(id);
		
	}

	@Override
	public List<EventosSco> listaEventosScoPorTitulo(String filtro) {
		return eventosScoRepository.listaEventosScoPorTituloLike(filtro);
	}

	@Override
	public List<EventosSco> listaEventosScoPorRama(int idRama) {
		// EN ESPERA
		return null;
	}

	@Override
	public List<EventosSco> listaEventosScoPorTipo(int idTipoSco) {
		//  EN ESPERA
		return null;
	}

}
