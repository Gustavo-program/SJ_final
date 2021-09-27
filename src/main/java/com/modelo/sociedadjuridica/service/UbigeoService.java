package com.modelo.sociedadjuridica.service;

import java.util.List;

import com.modelo.sociedadjuridica.entidad.Ubigeo;

public interface UbigeoService {
	
	
	public abstract List<String> listaDepartamentos();
	public abstract List<String> listaProvincias(String departamento);
	public abstract List<Ubigeo> listaDistritos(String departamento, String provincia);

}
