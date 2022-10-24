package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Articulo;
import com.modelo.sociedadjuridica.repository.ArticuloRepository;

@Service
public class ArticuloServiceImpl implements ArticuloService{
	
	@Autowired
	private ArticuloRepository articuloRepository;

	@Override
	public List<Articulo> listaArticulo() {
		return articuloRepository.findAll();
	}

	@Override
	public Articulo insertaActualizaArticulo(Articulo obj) {
		return articuloRepository.save(obj);
	}

	@Override
	public Optional<Articulo> obtienePorId(int idArticulo) {
		return articuloRepository.findById(idArticulo);
	}

	@Override
	public void eliminaArticulo(int id) {
		articuloRepository.deleteById(id);
		
	}

	@Override
	public List<Articulo> listaArticuloPorRevista(int cod) {
		return articuloRepository.listaArticuloPorRevista(cod);
	}

}
