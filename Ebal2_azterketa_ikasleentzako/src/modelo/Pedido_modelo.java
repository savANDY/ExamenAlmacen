package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import clases.Pedido;

public class Pedido_modelo extends Conector {

	public Pedido_modelo() {
		super();
	}
	
	//metodos
	public ArrayList<Pedido> seleccionarTodos() throws SQLException {

		Statement st = conexion.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM pedidos");

		ArrayList<Pedido> prestamos = new ArrayList<Pedido>();

		while (rs.next()) {

			Pedido pedido = new Pedido();

			pedido.setId(rs.getInt(1));
			pedido.setIdCliente(rs.getString(2));
			pedido.setFecha(rs.getDate(3));
			pedido.setCodPostal(rs.getString(4));
			prestamos.add(pedido);
		}

		return prestamos;
	}
}
