package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import clases.Producto;

public class Producto_modelo extends Conector {

	public Producto_modelo() {
		super();
	}

	//metodos
	public void insertar(Producto producto) throws SQLException {

		try {
			PreparedStatement pst = conexion.prepareStatement("INSERT INTO productos VALUES (?,?,?,?,?)");
			pst.setInt(1, producto.getId());
			pst.setString(2, producto.getNombre());
			pst.setString(3, producto.getProveedor());
			pst.setDouble(4, producto.getPrecio());
			pst.setInt(5, producto.getExistencias());

			pst.execute();

			System.out.println("PRODUCTO INSERTADO CON EXITO");

			if (pst.getUpdateCount() == 0) {
				System.out.println("NO HA INSERTADO NADA");

			}
		} catch (SQLException ex) {
			throw ex;
		}
	}
	
	public void borrar(int existencias) throws Exception {

		try {
			PreparedStatement pst = conexion.prepareStatement("DELETE FROM productos WHERE existencias < ?");
			pst.setInt(1, existencias);

			pst.execute();

			if (pst.getUpdateCount() == 0) {
				System.out.println("No hay ningun producto con existencias <" + existencias);
			} else {
				System.out.println("PRODUCTO(S) BORRADO(S) CON EXITO");
			}

		} catch (SQLException ex) {
			throw ex;
		}

	}
	
	public String seleccionarNombrePorId(int id) throws SQLException {
		Statement st = conexion.createStatement();
		try {
			
			
			PreparedStatement pst = conexion.prepareStatement("SELECT nombre FROM productos WHERE id = ?");
//			ResultSet rs = st.executeQuery("SELECT nombre FROM socios WHERE id = ?");
			pst.setInt(1,id);
			
		//	System.out.println(pst);
			pst.execute();
			ResultSet rs = pst.executeQuery();
			
			String nombre = "ERROR AL BUSCAR NOMBRE";
			
		
			while (rs.next()){
			nombre = rs.getString(1);
			}
			
			return nombre;
					
		} catch (SQLException e) {
			throw e;
		}

	}
	
}
