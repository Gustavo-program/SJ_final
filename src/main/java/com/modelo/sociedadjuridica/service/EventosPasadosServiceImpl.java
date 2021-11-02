package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.EventosPasados;
import com.modelo.sociedadjuridica.repository.EventosPasadosRepository;

@Service
public class EventosPasadosServiceImpl implements EventosPasadosService{

	@Autowired
	private EventosPasadosRepository eventPasRepository;
	
	@Override
	public List<EventosPasados> listaEventosPasados() {
		return eventPasRepository.findAll();
	}

	@Override
	public EventosPasados insertaActualizaEventosPasados(EventosPasados obj) {
		return eventPasRepository.save(obj);
	}

	@Override
	public Optional<EventosPasados> obtienePorId(int idEventosPasados) {
		return eventPasRepository.findById(idEventosPasados);
	}

	@Override
	public void eliminaEventosPasados(int id) {
		eventPasRepository.deleteById(id);
		
	}

	@Override
	public List<EventosPasados> listaEventosPasadosPorTitulo(String filtro) {
		return eventPasRepository.listaEventosPasadosPorTituloLike(filtro);
	}

	@Override
	public List<EventosPasados> listaEventosPasadosPorRama(int idRama) {
		return null;/*por mientras estará en null hasta que empieze el lado del usuario*/
	}

	@Override
	public List<EventosPasados> listaEventosPasadosPorId(int cod) {
		return eventPasRepository.listaEventosPasadosPorId(cod);
	}
	
	
}
