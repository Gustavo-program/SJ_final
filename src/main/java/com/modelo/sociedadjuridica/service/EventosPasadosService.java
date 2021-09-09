package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.EventosPasados;

public interface EventosPasadosService {

	public abstract List<EventosPasados> listaEventosPasados();
	
	public abstract EventosPasados insertaActualizaEventosPasados(EventosPasados obj);
	
	public abstract Optional<EventosPasados> obtienePorId(int idEventosPasados);
	
	public abstract void eliminaEventosPasados(int id);
	
	public abstract List<EventosPasados> listaEventosPasadosPorTitulo(String filtro);
	
	public abstract List<EventosPasados> listaEventosPasadosPorRama(int idRama);
	
}
