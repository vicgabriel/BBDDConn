package Controladores;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class BBDDConn {
	private static final String URL = "jdbc:mysql://localhost/NombreBBDD";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	

	public static Connection getConn() throws SQLException {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
		return (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
	
	public static Connection getConn2() throws SQLException {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
		return (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
	
}
