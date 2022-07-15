package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Revista;

public interface RevistaService {
	
public abstract List<Revista> listaRevista();
	
	public abstract Revista insertaActualizaRevista(Revista obj);
	
	public abstract Optional<Revista> obtienePorId(int idRevista);
	
	public abstract void eliminaRevista(int id);
	

}
