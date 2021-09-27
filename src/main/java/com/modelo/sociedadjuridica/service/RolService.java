package com.modelo.sociedadjuridica.service;

import java.util.List;

import com.modelo.sociedadjuridica.entidad.Rol;

public interface RolService {
	
	
	public abstract List<String> listaCargos();
	public abstract List<Rol> listaAreas(String cargo);
	

}
