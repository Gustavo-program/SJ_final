package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Usuario;

public interface UsuarioService {

	public abstract List<Usuario> listaUsuarios();
	public abstract Usuario insertaActualizaUsuarios(Usuario obj);
	public abstract Optional<Usuario> obtienePorId(int idUsuario);
	public abstract void eliminaUsuario(int id);
	public abstract List<Usuario> listaUsuarioPorNombreLike(String filtro);
	
	
	
}
