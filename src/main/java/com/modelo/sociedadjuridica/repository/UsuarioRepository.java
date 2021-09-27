package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

	
	@Query("Select a from Usuario a where nombre like :fil")
	public abstract List<Usuario> listaUsuarioPorNombreLike(@Param("fil") String filtro);	
	
}
