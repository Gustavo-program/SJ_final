package com.modelo.sociedadjuridica.repository;


import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Noticias;

public interface NoticiasRepository extends JpaRepository<Noticias, Integer> {
	
	
	@Query("Select a from Noticias a where titulo like :fil")
	public abstract List<Noticias> listaNoticiasPorTituloLike(@Param("fil") String filtro);
	
	@Query("Select a from Noticias a where tipo.idTipoNoticias = :idTipo")
	public abstract List<Noticias> listaNoticiasPorTipo(@Param("idTipo") int idTipoNoticias);
	
	
	
	@Query("Select a from Noticias a order by a.idNoticias desc")
	public abstract List<Noticias> listaNoticiasDesc(Pageable pageable);

	
	/*BUSCAR POR ID*/
	@Query("Select a from Noticias a where idNoticias = :id")
	public abstract List<Noticias> listaNoticiasPorId(@Param("id") int cod);
	
}
