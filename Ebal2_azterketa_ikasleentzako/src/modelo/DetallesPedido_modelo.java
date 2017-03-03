package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import clases.DetallesPedido;
import clases.Pedido;

public class DetallesPedido_modelo extends Conector {

	public DetallesPedido_modelo() {
		super();
	}

	//metodos
	
	public ArrayList<DetallesPedido> seleccionarTodos(int id_pedido) throws SQLException {

		
		PreparedStatement pst = conexion.prepareStatement("SELECT * FROM detallespedidos WHERE idPedido = ?");
		pst.setInt(1, id_pedido);
		
		//System.out.println(pst);
		
		ResultSet rs = pst.executeQuery();

		ArrayList<DetallesPedido> detalles_pedidos = new ArrayList<DetallesPedido>();

		while (rs.next()) {

			DetallesPedido detalles_pedido = new DetallesPedido();

			detalles_pedido.setIdPedido(rs.getInt(1));
			detalles_pedido.setIdProducto(rs.getInt(2));
			detalles_pedido.setCantidad(rs.getInt(3));
			detalles_pedidos.add(detalles_pedido);
		}

		return detalles_pedidos;
	}
}
