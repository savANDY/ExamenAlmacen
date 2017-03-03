package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conector {
	
	protected Connection conexion;

	/**
	 * 
	 * @param dbIzena datu basearen izena
	 */
	Conector() {
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				this.conexion = DriverManager.getConnection("jdbc:mysql://localhost/almacen", "root", "");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}

	public Connection getConexion() {
		return conexion;
	}

	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}
	
}
