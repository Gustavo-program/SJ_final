package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.EventosProximos;

public interface EventosProximosService {
	
public abstract List<EventosProximos> listaEventosProximos();
	
	public abstract EventosProximos insertaActualizaEventosProximos(EventosProximos obj);
	
	public abstract Optional<EventosProximos> obtienePorId(int idEventosProximos);
	
	public abstract void eliminaEventosProximos(int id);
	
	public abstract List<EventosProximos> listaEventosProximosPorTitulo(String filtro);
	

}
