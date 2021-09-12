package com.modelo.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipo_sco")
public class TipoSco {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipo_sco")
	private int idTipoSco;
	
	
	private String nombre;


	public int getIdTipoSco() {
		return idTipoSco;
	}


	public void setIdTipoSco(int idTipoSco) {
		this.idTipoSco = idTipoSco;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	

}
