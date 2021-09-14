package com.modelo.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipo_noticias")
public class TipoNoticias {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipo_noticias")
	private int idTipoNoticias;
	
	
	private String nombre;


	public int getIdTipoNoticias() {
		return idTipoNoticias;
	}


	public void setIdTipoNoticias(int idTipoNoticias) {
		this.idTipoNoticias = idTipoNoticias;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
	
}
