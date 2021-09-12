package com.modelo.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.TipoSco;
import com.modelo.sociedadjuridica.repository.TipoScoRepository;


@Service
public class TipoScoServiceImpl implements TipoScoService {

	@Autowired
	private TipoScoRepository tipoScoRepository;
	
	@Override
	public List<TipoSco> listaTipoSco() {
		return tipoScoRepository.findAll();
	}

}
