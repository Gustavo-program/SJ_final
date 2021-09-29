package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.modelo.sociedadjuridica.entidad.Opcion;
import com.modelo.sociedadjuridica.entidad.Rol;
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
	public List<Usuario> consultaCliente(String filtro) {
		return usuarioRepository.consultaCliente(filtro);
	}

	@Override
	public Usuario login(Usuario bean) {
		return usuarioRepository.login(bean);
	}

	@Override
	public List<Usuario> buscaPorDni(String dni) {
		return usuarioRepository.findByDni(dni);
	}

	@Override
	public List<Usuario> buscaPorDniAndIdUsuario(String dni, int idUsuario) {
		return usuarioRepository.findByDniAndIdUsuarioNot(dni, idUsuario);
	}

	@Override
	public List<Rol> traerRolesDeUsuario(int idUsuario) {
		return usuarioRepository.traerRolesDeUsuario(idUsuario);
	}

	@Override
	public List<Opcion> traerEnlacesDeUsuario(int idUsuario) {
		return usuarioRepository.traerEnlacesDeUsuario(idUsuario);
	}

	
	
}
