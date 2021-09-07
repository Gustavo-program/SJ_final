package com.modelo.sociedadjuridica.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipo_nosotros")
public class TipoNosotros {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtipo_nosotros")
	private int idTipoNosotros;
	
	private String nombre;

	public int getIdTipoNosotros() {
		return idTipoNosotros;
	}

	public void setIdTipoNosotros(int idTipoNosotros) {
		this.idTipoNosotros = idTipoNosotros;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
