package com.modelo.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.TipoNosotros;
import com.modelo.sociedadjuridica.repository.TipoNosotrosRepository;


@Service
public class TipoNosotrosServiceImpl implements TipoNosotrosService {

	@Autowired
	private TipoNosotrosRepository tipoNosotrosRepository;
	
	@Override
	public List<TipoNosotros> listaTipoNosotros() {
		
		return tipoNosotrosRepository.findAll();
		
	}

}
