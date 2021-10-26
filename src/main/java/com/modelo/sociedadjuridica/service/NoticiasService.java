package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Noticias;

public interface NoticiasService {
	
	public abstract List<Noticias> listaNoticias();
	
	public abstract Noticias insertaActualizaNoticias(Noticias obj);
	
	public abstract Optional<Noticias> obtienePorId(int idNoticias);
	
	public abstract void eliminaNoticias(int id);
	
	public abstract List<Noticias> listaNoticiasPorTitulo(String filtro);
	
	public abstract List<Noticias> listaNoticiasPorRama(int idRama);
	
	public abstract List<Noticias> listaNoticiasPorTipo(int idTipo);	

}
