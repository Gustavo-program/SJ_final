package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.EventosPasados;

public interface EventosPasadosRepository extends JpaRepository<EventosPasados, Integer> {
	
	@Query("Select a from EventosPasados a where titulo like :fil")
	public abstract List<EventosPasados> listaEventosPasadosPorTituloLike(@Param("fil") String filtro);
	
	

}
