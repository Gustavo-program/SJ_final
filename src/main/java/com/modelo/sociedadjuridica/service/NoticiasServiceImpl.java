package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Noticias;
import com.modelo.sociedadjuridica.repository.NoticiasRepository;

@Service
public class NoticiasServiceImpl implements NoticiasService{

	@Autowired
	private NoticiasRepository noticiasRepository;
	
	
	@Override
	public List<Noticias> listaNoticias() {
		return noticiasRepository.findAll();
	}

	@Override
	public Noticias insertaActualizaNoticias(Noticias obj) {
		return noticiasRepository.save(obj);
	}

	@Override
	public Optional<Noticias> obtienePorId(int idNoticias) {
		return noticiasRepository.findById(idNoticias);
	}

	@Override
	public void eliminaNoticias(int id) {
		noticiasRepository.deleteById(id);
		
	}

	@Override
	public List<Noticias> listaNoticiasPorTitulo(String filtro) {
		return noticiasRepository.listaNoticiasPorTituloLike(filtro);
	}

	@Override
	public List<Noticias> listaNoticiasPorRama(int idRama) {
		// EN ESPERA
		return null;
	}

	@Override
	public List<Noticias> listaNoticiasPorTipo(int idTipo) {
		// EN ESPERA
		return noticiasRepository.listaNoticiasPorTipo(idTipo);
	}

}
