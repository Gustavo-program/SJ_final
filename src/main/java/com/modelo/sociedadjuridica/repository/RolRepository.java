package com.modelo.sociedadjuridica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.modelo.sociedadjuridica.entidad.Rol;

public interface RolRepository extends JpaRepository<Rol, Integer> {
	
	
	@Query("select distinct x.cargo from Rol x")
	public abstract List<String> listaCargos();
	
	@Query("select distinct x from Rol x where x.cargo = :var_cargo")
	public abstract List<Rol> listaAreas(@Param("var_cargo")String cargo);
	

}
