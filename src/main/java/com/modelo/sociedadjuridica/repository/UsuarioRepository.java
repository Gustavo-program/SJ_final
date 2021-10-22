package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Opcion;
import com.modelo.sociedadjuridica.entidad.Rol;
import com.modelo.sociedadjuridica.entidad.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

	
	/*LOGUEARSE*/
	@Query("Select x from Usuario x where x.login = :#{#usu.login} and x.password = :#{#usu.password}")
	public abstract Usuario login(@Param(value = "usu") Usuario bean);
	
	
	/*BUSQUEDA POR DNI
	 * DNI UNICO*/
	public abstract List<Usuario> findByDni(String dni);
	public abstract List<Usuario> findByDniAndIdUsuarioNot(String dni, int idUsuario);
	
	
	
	/*BUSQUEDA POR NOMBRE*/
	@Query("Select a from Usuario a where nombre like :fil or apellido_paterno like :fil or apellido_materno like :fil")
	public abstract List<Usuario> consultaCliente(@Param("fil") String filtro);	
	
	
	
	/*
	 EN LA ULTIMA PARTE DEL QUERY PUEDE QUE OCURRA UN ERROR, VERIFICAR
	 */
	
	//CAPAZ ESTE MAL EL QUERY
	/*TRAER OPCIONES*/
	@Query("Select p from Opcion p, RolHasOpcion pr, Rol r, Usuario u where "
			+ " p.idOpcion = pr.opcion.idOpcion and "//p join pr on p.idopcion=pr.idopcion
			+ " pr.rol.idRol = r.idRol and "//pr join rol on pr.idrol=r.idrol
			+ " r.idRol = u.rol.idRol and "
			+ " u.idUsuario = :var_idUsuario")//u.usuario.idUsuario = :var_idUsuario")
	public abstract List<Opcion> traerEnlacesDeUsuario(@Param("var_idUsuario") int idUsuario);
	
	
	
	/*TRAER ROLES*/
	@Query("Select r from Rol r, Usuario u where "
			+ " r.idRol = u.rol.idRol and "
			+ " u.idUsuario = :var_idUsuario")//+ " u.usuario.idUsuario = :var_idUsuario")
	public abstract List<Rol> traerRolesDeUsuario(@Param("var_idUsuario")int idUsuario);
	
	
	/*LISTAR POR AREAS*/
	
	@Query("Select u from Usuario u, Rol r where "
			+ " u.rol.idRol = r.idRol and "
			+ " r.area = 'Todos' ")
	public abstract List<Usuario> listaTodos();
	
	@Query("Select u from Usuario u, Rol r where "
			+ " u.rol.idRol = r.idRol and "
			+ " r.area = 'Publicaciones' ")
	public abstract List<Usuario> listaPublicaciones();
	
	@Query("Select u from Usuario u, Rol r where "
			+ " u.rol.idRol = r.idRol and "
			+ " r.area = 'Marketing & Finaciamiento' ")
	public abstract List<Usuario> listaMarketing();
	
	@Query("Select u from Usuario u, Rol r where "
			+ " u.rol.idRol = r.idRol and "
			+ " r.area = 'Cursos & Seminarios' ")
	public abstract List<Usuario> listaCursosSeminarios();
	
	
}
