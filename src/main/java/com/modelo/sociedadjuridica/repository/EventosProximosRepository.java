package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.EventosProximos;

public interface EventosProximosRepository extends JpaRepository<EventosProximos, Integer> {

	@Query("Select a from EventosProximos a where titulo like :fil")
	public abstract List<EventosProximos> listaEventosProximosPorTituloLike(@Param("fil") String filtro);
	
}
