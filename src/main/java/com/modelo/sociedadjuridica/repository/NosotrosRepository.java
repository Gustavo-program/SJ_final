package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Nosotros;

public interface NosotrosRepository extends JpaRepository<Nosotros, Integer> {
	
	@Query("Select a from Nosotros a where nombre like :fil")
	public abstract List<Nosotros> listaNosotrosPorNombreLike(@Param("fil") String filtro);
	
	
	
	//----------- LISTADO DE NOTICIAS POR TIPO DE NOTICIA -----------------//
		//--------------- FALTA CREAR SU STORE PROCEDURE --------------------//
	//-----------------ESTA MAL HECHO TENGO QUE ARREGLARLO--------//
		@Query(value = "CALL SP_GET_NOTICIAS_POR_TIPO(:idTipoNosotros)", nativeQuery = true)
		public List<Nosotros> listaNosotrosPorTipo(@Param("idTipoNosotros")int idTipoNosotros);

}
