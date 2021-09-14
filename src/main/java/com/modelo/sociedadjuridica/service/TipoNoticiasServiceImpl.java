package com.modelo.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.TipoNoticias;
import com.modelo.sociedadjuridica.repository.TipoNoticiasRepository;

@Service
public class TipoNoticiasServiceImpl implements TipoNoticiasService{

	@Autowired
	private TipoNoticiasRepository tipoNoticiasRepository;

	@Override
	public List<TipoNoticias> listaTipoNoticias() {
		return tipoNoticiasRepository.findAll();
	}
	
	

}
