package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.EventosProximos;
import com.modelo.sociedadjuridica.repository.EventosProximosRepository;


@Service
public class EventosProximosServiceImpl implements EventosProximosService {
	
	
	@Autowired
	private EventosProximosRepository eventProxRepository;
	

	@Override
	public List<EventosProximos> listaEventosProximos() {
		return eventProxRepository.findAll();
	}

	@Override
	public EventosProximos insertaActualizaEventosProximos(EventosProximos obj) {
		return eventProxRepository.save(obj);
	}

	@Override
	public Optional<EventosProximos> obtienePorId(int idEventosProximos) {
		return eventProxRepository.findById(idEventosProximos);
	}

	@Override
	public void eliminaEventosProximos(int id) {
		eventProxRepository.deleteById(id);
		
	}

	@Override
	public List<EventosProximos> listaEventosProximosPorTitulo(String filtro) {
		return eventProxRepository.listaEventosProximosPorTituloLike(filtro);
	}

	@Override
	public List<EventosProximos> listaEventosProximosPorId(int cod) {
		return eventProxRepository.listaEventosProximosPorId(cod);
	}

}
