package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Nosotros;

public interface NosotrosService {
	
	
	public abstract List<Nosotros> listaNosotros();
	public abstract Nosotros insertaActualizaNosotros(Nosotros obj);
	public abstract Optional<Nosotros> obtienePorId(int idNosotros);
	
	public abstract void eliminaNosotros(int id);
	
	public abstract List<Nosotros> listaNosotrosPorNombreLike(String filtro);
	
	/**/
	public abstract List<Nosotros> listaAsociados();
	public abstract List<Nosotros> listaEditorial();
	public abstract List<Nosotros> listaConsultivo();
	
	/**/
	
	public abstract List<Nosotros> listaNosotrosPorTipo(int idTipoNosotros);
	

}
