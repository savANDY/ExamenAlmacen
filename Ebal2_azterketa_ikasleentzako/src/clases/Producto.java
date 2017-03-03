package clases;

public class Producto {
	private int id;
	private String nombre;
	private String proveedor;
	private double precio;
	private int existencias;

	public Producto() {
	}
	
	public Producto(int id, String nombre, String proveedor, double precio, int existencias) {
		this.id = id;
		this.nombre = nombre;
		this.proveedor = proveedor;
		this.precio = precio;
		this.existencias = existencias;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getProveedor() {
		return proveedor;
	}

	public void setProveedor(String proveedor) {
		this.proveedor = proveedor;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getExistencias() {
		return existencias;
	}

	public void setExistencias(int existencias) {
		this.existencias = existencias;
	}

}
