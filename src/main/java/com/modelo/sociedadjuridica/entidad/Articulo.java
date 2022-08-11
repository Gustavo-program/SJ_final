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
@Table(name = "articulos")
public class Articulo implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idarticulo")
	private int idArticulo;
	
	private String titulo;
	
	private String paginas;
	
	private String pdf;
	
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "revista")
	private Revista revista;


	
	public int getIdArticulo() {
		return idArticulo;
	}


	public void setIdArticulo(int idArticulo) {
		this.idArticulo = idArticulo;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getPaginas() {
		return paginas;
	}


	public void setPaginas(String paginas) {
		this.paginas = paginas;
	}


	public String getPdf() {
		return pdf;
	}


	public void setPdf(String pdf) {
		this.pdf = pdf;
	}


	public Revista getRevista() {
		return revista;
	}


	public void setRevista(Revista revista) {
		this.revista = revista;
	}
	
	
	

}
