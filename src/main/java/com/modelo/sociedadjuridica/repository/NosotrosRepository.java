package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Nosotros;

public interface NosotrosRepository extends JpaRepository<Nosotros, Integer> {
	
	@Query("Select a from Nosotros a where nombre like :fil")
	public abstract List<Nosotros> listaNosotrosPorNombreLike(@Param("fil") String filtro);
	
	
	
	/*LISTADO DE NOSOTROS POR TIPO*/
	@Query("Select x from Nosotros x where tipoNosotros = 1")
	public abstract List<Nosotros> listaAsociados();
	
	@Query("Select x from Nosotros x where tipoNosotros = 2")
	public abstract List<Nosotros> listaEditorial();
	
	@Query("Select x from Nosotros x where tipoNosotros = 3")
	public abstract List<Nosotros> listaConsultivo();
	
	/**/
	
	
	//----------- LISTADO DE NOTICIAS POR TIPO DE NOTICIA -----------------//
		//--------------- FALTA CREAR SU STORE PROCEDURE --------------------//
	//-----------------ESTA MAL HECHO TENGO QUE ARREGLARLO--------//
		@Query(value = "CALL SP_GET_NOTICIAS_POR_TIPO(:idTipoNosotros)", nativeQuery = true)
		public List<Nosotros> listaNosotrosPorTipo(@Param("idTipoNosotros")int idTipoNosotros);

}
