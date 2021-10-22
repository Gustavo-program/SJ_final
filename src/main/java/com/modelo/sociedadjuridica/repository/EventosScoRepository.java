package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.EventosSco;

public interface EventosScoRepository extends JpaRepository<EventosSco, Integer> {
	
	@Query("Select a from EventosSco a where titulo like :fil")
	public abstract List<EventosSco> listaEventosScoPorTituloLike(@Param("fil") String filtro);
	
	
	@Query("Select s from EventosSco s where tipoSco = 1" )
	public abstract List<EventosSco> listaESeminarios();
	
	@Query("Select s from EventosSco s where tipoSco = 2" )
	public abstract List<EventosSco> listaECursos();
	
	@Query("Select s from EventosSco s where tipoSco = 3" )
	public abstract List<EventosSco> listaEOtros();
	

}
