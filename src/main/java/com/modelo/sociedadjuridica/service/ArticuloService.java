package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Articulo;

public interface ArticuloService {
	
public abstract List<Articulo> listaArticulo();
	
	public abstract Articulo insertaActualizaArticulo(Articulo obj);
	
	public abstract Optional<Articulo> obtienePorId(int idArticulo);
	
	public abstract void eliminaArticulo(int id);
	
	public abstract List<Articulo> listaArticuloPorRevista(int cod);
	

}
