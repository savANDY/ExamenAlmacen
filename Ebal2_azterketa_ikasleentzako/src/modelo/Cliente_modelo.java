package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import clases.Cliente;

import java.sql.PreparedStatement;

public class Cliente_modelo extends Conector {

	public Cliente_modelo() {
		super();
	}

	//metodos
	public ArrayList<Cliente> seleccionarTodos() throws Exception  {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();
		Statement st;
		try {
			st = conexion.createStatement();
		
		ResultSet rs = st.executeQuery("SELECT * FROM clientes");


		while (rs.next()) {

			Cliente cliente = new Cliente();

			cliente.setId(rs.getString(1));
			cliente.setNombre(rs.getString(2));
			cliente.setDireccion(rs.getString(3));
			cliente.setCodPostal(rs.getString(4));
			cliente.setTelefono(rs.getString(5));
			clientes.add(cliente);

		}

		
		} catch (Exception e) {
			System.out.println("Error al regoger informacion");
		}
		
		return clientes;
	}
	
	public String seleccionarNombrePorId(String id) throws Exception {
		Statement st = conexion.createStatement();
		try {
			
			
			PreparedStatement pst = conexion.prepareStatement("SELECT nombre FROM clientes WHERE id = ?");
			pst.setString(1,id);
		//	System.out.println(pst);
			pst.execute();
			
			ResultSet rs = pst.executeQuery();
			rs.next();
			String nombre = rs.getString(1);

			
			return nombre;
					
		} catch (SQLException e) {
			throw e;
		}

	}
		
}
