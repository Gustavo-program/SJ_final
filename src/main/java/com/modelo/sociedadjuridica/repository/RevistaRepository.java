package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.modelo.sociedadjuridica.entidad.Revista;

@Repository
public interface RevistaRepository extends JpaRepository<Revista, Integer>{
	
	/*BUSCAR POR ID*/
	@Query("Select a from Revista a where idrevistas = :id")
	public abstract List<Revista> listaRevistaPorId(@Param("id") int cod);

}
