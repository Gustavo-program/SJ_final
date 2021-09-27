package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Usuario;
import com.modelo.sociedadjuridica.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public List<Usuario> listaUsuarios() {
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario insertaActualizaUsuarios(Usuario obj) {
		return usuarioRepository.save(obj);
	}

	@Override
	public Optional<Usuario> obtienePorId(int idUsuario) {
		return usuarioRepository.findById(idUsuario);
	}

	@Override
	public void eliminaUsuario(int id) {
		usuarioRepository.deleteById(id);
		
	}

	@Override
	public List<Usuario> listaUsuarioPorNombreLike(String filtro) {
		return usuarioRepository.listaUsuarioPorNombreLike(filtro);
	}

	
	
}
