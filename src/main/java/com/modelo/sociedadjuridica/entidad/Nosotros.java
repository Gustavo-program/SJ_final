package com.modelo.sociedadjuridica.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "nosotros")
public class Nosotros implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idnosotros")
	private int idNosotros;
	
	private String nombre;
	private String descripcion;
	private String sexo;
	private String foto;
	
	/*EN JOIN COLUM VA EL NOMBRE DE LA FORANEA EN ESTE CASO LA FORANEA DE NOSOTROS EN "TIPO"*/
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tipo")
	private TipoNosotros tipoNosotros;
	

	public int getIdNosotros() {
		return idNosotros;
	}

	public void setIdNosotros(int idNosotros) {
		this.idNosotros = idNosotros;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public TipoNosotros getTipoNosotros() {
		return tipoNosotros;
	}

	public void setTipoNosotros(TipoNosotros tipoNosotros) {
		this.tipoNosotros = tipoNosotros;
	}
	
	
	
	

}
