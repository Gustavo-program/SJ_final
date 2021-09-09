package com.modelo.sociedadjuridica.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Rama;
import com.modelo.sociedadjuridica.repository.RamaRepository;

@Service
public class RamaServiceImpl implements RamaService{

	@Autowired
	private RamaRepository ramaRepository;
	
	@Override
	public List<Rama> listarRamas() {
		return ramaRepository.findAll();
	}

}
