package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.EventosSco;

public interface EventosScoService {

	
	public abstract List<EventosSco> listaEventosSco();
	
	public abstract EventosSco insertaActualizaEventosSco(EventosSco obj);
	
	public abstract Optional<EventosSco> obtienePorId(int idEventosSco);
	
	public abstract void eliminaEventosSco(int id);
	
	public abstract List<EventosSco> listaEventosScoPorTitulo(String filtro);
	
	//
	
	/**/
	
	public abstract List<EventosSco> listaESeminarios();
	public abstract List<EventosSco> listaECursos();
	public abstract List<EventosSco> listaEOtros();
	
	
	/**/
	
	
	
	public abstract List<EventosSco> listaEventosScoPorRama(int idRama);
	
	public abstract List<EventosSco> listaEventosScoPorTipo(int idTipoSco);
	
	
}
