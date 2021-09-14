package com.modelo.sociedadjuridica.entidad;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "eventos_proximos")
public class EventosProximos implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ideventos_proximos")
	private int idEventosProximos;
	
	
	private String titulo;
	private String descripcion;
	
	@Temporal(TemporalType.DATE)
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "America/Lima")
	private Date fecha;
	
	private String hora;
	
	private byte estado;
	
	private String foto;
	
	public int getIdEventosProximos() {
		return idEventosProximos;
	}

	public void setIdEventosProximos(int idEventosProximos) {
		this.idEventosProximos = idEventosProximos;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public byte getEstado() {
		return estado;
	}

	public void setEstado(byte estado) {
		this.estado = estado;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	
	
	
	
	
}
