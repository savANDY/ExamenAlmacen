package clases;

public class Cliente {
	private String id;
	private String nombre;
	private String direccion;
	private String codPostal;
	private String telefono;

	public Cliente(){
		
	}
	public Cliente(String id, String nombre, String direccion, String codPostal, String telefono) {
		this.id = id;
		this.nombre = nombre;
		this.direccion = direccion;
		this.codPostal = codPostal;
		this.telefono = telefono;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCodPostal() {
		return codPostal;
	}

	public void setCodPostal(String codPostal) {
		this.codPostal = codPostal;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
}
