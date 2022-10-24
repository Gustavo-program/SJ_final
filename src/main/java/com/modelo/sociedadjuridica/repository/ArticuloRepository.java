package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Articulo;

public interface ArticuloRepository extends JpaRepository<Articulo, Integer>{
	
	/*BUSCAR ARTICULOS POR REVISTAS*/
	@Query("Select a from Articulo a where a.revista.idrevistas = :id")
	public abstract List<Articulo> listaArticuloPorRevista(@Param("id") int cod);

}
