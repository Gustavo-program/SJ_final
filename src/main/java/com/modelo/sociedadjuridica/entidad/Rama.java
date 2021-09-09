package com.modelo.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rama")
public class Rama {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idrama")
	private int idRama;
	
	private String nombre;

	
	
	public int getIdRama() {
		return idRama;
	}

	public void setIdRama(int idRama) {
		this.idRama = idRama;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	

}
