package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.modelo.sociedadjuridica.entidad.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Integer>{
	
	/*BUSQUEDA POR NOMBRE*/
	@Query("Select a from Cliente a where nombre like :fil or apePaterno like :fil or apeMaterno like :fil")
	public abstract List<Cliente> consultaEntradas(@Param("fil") String filtro);
	
	/* BUSQUEDA POR NOMBRE DE EVENTO*/
	
}
