package clases;

import java.util.Date;

import modelo.Cliente_modelo;
import principal.Main;

public class Pedido {
	private int id;
	private String idCliente;
	private Date fecha;
	private String codPostal;

	public Pedido() {
	}
	
	public Pedido(int id, String idCliente, Date fecha, String codPostal) {
		this.id = id;
		this.idCliente = idCliente;
		this.fecha = fecha;
		this.codPostal = codPostal;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getCodPostal() {
		return codPostal;
	}

	public void setCodPostal(String codPostal) {
		this.codPostal = codPostal;
	}

}
