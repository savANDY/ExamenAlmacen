package principal;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

import clases.Cliente;
import clases.DetallesPedido;
import clases.Pedido;
import clases.Producto;
import modelo.Cliente_modelo;
import modelo.DetallesPedido_modelo;
import modelo.Pedido_modelo;
import modelo.Producto_modelo;


public class Main {

	public static final int VER_CLIENTES = 1;
	public static final int INSERTAR_PRODUCTO = 2;
	public static final int BORRAR_PRODUCTOS_MENOS_10 = 3;
	public static final int VER_PEDIDOS_DETALLES = 4;

	public static final int SALIR = 0;
	
	static ArrayList<Cliente> clientes;
	static Cliente_modelo cliente_modelo;
	static Producto_modelo producto_modelo = new Producto_modelo();
	static DetallesPedido_modelo detallesPedido_modelo = new DetallesPedido_modelo();
	static Scanner scan = new Scanner(System.in);
	static ArrayList<Pedido> pedidos;
	static ArrayList<DetallesPedido> compras;

	public static void main(String[] args) {
		int opcion;
		Scanner s;
		do {

			System.out.println("\nMENU PRINCIPAL\n" + "1. VER CLIENTES\n" + "2. INSERTAR PRODUCTO\n"
					+ "3. BORRAR PRODUCTOS CUYAS EXISTENCIAS SEAN MENOR QUE 10\n"
					+ "4. VER TODOS LOS PEDIDOS CON SUS DETALLES" + "0. para SALIR");
			
			System.out.print("\nElige una opcion: ");

			s = new Scanner(System.in);
			opcion = Integer.parseInt(s.nextLine());

			switch (opcion) {
			case VER_CLIENTES:
				// se visualizaran todos los clientes
				clientes = new ArrayList<Cliente>();

				try {
					cliente_modelo = new Cliente_modelo();
					clientes = cliente_modelo.seleccionarTodos();
					System.out.println("\t\tSOCIOS:");

					for (Cliente clien : clientes) {
						System.out.println("\n\t\t\t Id: " + clien.getId());
						System.out.println("\t\t\t Nombre: " + clien.getNombre());
						System.out.println("\t\t\t Direccion: " + clien.getDireccion());
						System.out.println("\t\t\t Codigo postal: " + clien.getCodPostal());
						System.out.println("\t\t\t Telefono: " + clien.getTelefono());

					}

				} catch (Exception e) {
					System.out.println("Error al mostrar Clientes");
					e.printStackTrace();
				}

				break;
			case INSERTAR_PRODUCTO:
				// se pediran datos del producto y se hara un insert
				
				Producto producto = new Producto();
				producto_modelo = new Producto_modelo();
				
				
				System.out.println("\t\tDATOS PRODUCTO");

				System.out.print("\tID: ");
				producto.setId(Integer.parseInt(scan.nextLine()));

				System.out.print("\tNombre: ");
				producto.setNombre(scan.nextLine());

				System.out.print("\tProveedor: ");
				producto.setProveedor(scan.nextLine());

				System.out.print("\tPrecio: ");
				producto.setPrecio(Double.parseDouble(scan.nextLine()));

				System.out.print("\tExistencias: ");
				producto.setExistencias(Integer.parseInt(scan.nextLine()));


				try {
					producto_modelo.insertar(producto);
				} catch (SQLException e) {
					System.out.println("ERROR AL INSERTAR PRODUCTO");
					//e.printStackTrace();
				}

				break;
			
				
			case BORRAR_PRODUCTOS_MENOS_10:
				// TODO se borraran los productos cuyas existencias sean menos
				// que 10
				
				producto_modelo = new Producto_modelo();

				try {
					producto_modelo.borrar(10);
				} catch (Exception e) {
					System.out.println("ERROR AL BORRAR PRODUCTO(S)");
					e.printStackTrace();

				}

				break;

			case VER_PEDIDOS_DETALLES:
				// todos los pedidos con sus detalles
				
				pedidos = new ArrayList<Pedido>();
				compras = new ArrayList<DetallesPedido>();
				
				ArrayList<DetallesPedido> detallesPedidos = new ArrayList<DetallesPedido>();

				
				Pedido_modelo pedido_modelo = new Pedido_modelo();
				Cliente_modelo cliente_modelo = new Cliente_modelo();
				DetallesPedido_modelo detallesPedido_modelo = new DetallesPedido_modelo();
				try {
					pedidos = pedido_modelo.seleccionarTodos();
					
					System.out.println("\n\t\tPEDIDOS:");

					for (Pedido pedi : pedidos) {
						System.out.println("\n\t\t\t Id Pedido: " + pedi.getId());
						System.out.println("\t\t\t Cliente: " + cliente_modelo.seleccionarNombrePorId(pedi.getIdCliente()) + " (id: " + pedi.getIdCliente() + ")");
						System.out.println("\t\t\t Fecha: " + pedi.getFecha());
						System.out.println("\t\t\t Codigo Postal: " + pedi.getCodPostal());
						
						System.out.println("\t\t\t\t ESTE CLIENTE HA COMPRADO: ");
						
						
						compras = detallesPedido_modelo.seleccionarTodos(pedi.getId());
						
						for (DetallesPedido det : compras) {
							
							String nombre_producto = producto_modelo.seleccionarNombrePorId(det.getIdProducto());
							
							System.out.println("\t\t\t\t Producto: " + nombre_producto + "(id: " + det.getIdProducto() + ")" + ", cantidad: " + det.getCantidad());
					
						}
						

					}

				} catch (Exception e) {
					System.out.println("\t\tError al mostrar Pedidos");
					//e.printStackTrace();
				}

				break;

			default:
				System.out.println("Opcion mal....");
				break;
			}
		} while (opcion != SALIR);

	}

}
