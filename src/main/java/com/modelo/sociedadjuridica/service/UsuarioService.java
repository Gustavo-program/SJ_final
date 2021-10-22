package com.modelo.sociedadjuridica.service;

import java.util.List;
import java.util.Optional;

import com.modelo.sociedadjuridica.entidad.Opcion;
import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.entidad.Usuario;

public interface UsuarioService {
	
	public abstract Usuario login(Usuario bean);

	/*CRUD*/
	public abstract List<Usuario> listaUsuarios();
	public abstract Usuario insertaActualizaUsuarios(Usuario obj);
	public abstract Optional<Usuario> obtienePorId(int idUsuario);
	public abstract void eliminaUsuario(int id);
	public abstract List<Usuario> consultaCliente(String filtro);
	
	
	/*DNI*/
	public abstract List<Usuario> buscaPorDni(String dni);
	public abstract List<Usuario> buscaPorDniAndIdUsuario(String dni, int idUsuario); 
	
	
	
	
	/*OPCIONES Y ROLES*/
	public abstract List<Rol> traerRolesDeUsuario(int idUsuario);
	public abstract List<Opcion> traerEnlacesDeUsuario(int idUsuario);
	
	/*LISTA PARA LA VISTA EN PAGINA PRINCIPAL*/
	public abstract List<Usuario> listaPublicaciones();
	public abstract List<Usuario> listaMarketing();
	public abstract List<Usuario> listaCursosSeminarios();
	public abstract List<Usuario> listaTodos();
	
}
