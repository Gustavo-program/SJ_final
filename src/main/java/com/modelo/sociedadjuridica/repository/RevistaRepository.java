package com.modelo.sociedadjuridica.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.modelo.sociedadjuridica.entidad.Revista;

@Repository
public interface RevistaRepository extends JpaRepository<Revista, Integer>{

}
