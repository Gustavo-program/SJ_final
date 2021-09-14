package com.modelo.sociedadjuridica.entidad;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "noticias")
public class Noticias implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idnoticias")
	private int idNoticias;
	
	private String titulo;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "America/Lima")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "fecha_registro")
	private Date fechaRegistro;
	
	private String descripcion;
	
	
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tipo")
	private TipoNoticias tipo;
	
	
	
	
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rama")
	private Rama rama;
	
	
	
	private String imagen;



	public int getIdNoticias() {
		return idNoticias;
	}



	public void setIdNoticias(int idNoticias) {
		this.idNoticias = idNoticias;
	}



	public String getTitulo() {
		return titulo;
	}



	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}



	public Date getFechaRegistro() {
		return fechaRegistro;
	}



	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}



	public String getDescripcion() {
		return descripcion;
	}



	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}



	public TipoNoticias getTipo() {
		return tipo;
	}



	public void setTipo(TipoNoticias tipo) {
		this.tipo = tipo;
	}



	public Rama getRama() {
		return rama;
	}



	public void setRama(Rama rama) {
		this.rama = rama;
	}



	public String getImagen() {
		return imagen;
	}



	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	
	
	

}
