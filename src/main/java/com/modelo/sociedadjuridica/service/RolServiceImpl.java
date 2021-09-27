package com.modelo.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.repository.RolRepository;

@Service
public class RolServiceImpl implements RolService {

	@Autowired
	private RolRepository rolRepository;

	@Override
	public List<String> listaCargos() {
		return rolRepository.listaCargos();
	}

	@Override
	public List<Rol> listaAreas(String cargo) {
		return rolRepository.listaAreas(cargo);
	}
	
	
	
}
