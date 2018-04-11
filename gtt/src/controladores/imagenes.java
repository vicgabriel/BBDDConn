package controladores;

import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class imagenes {
	
	public static String getImage(int img){
		
		String url ="";
		String sql ="SELECT imagenes FROM imagenes WHERE id_imagenes='"+ img +"'";			
		
		try (Connection conn = BDConn.getConn();
				Statement stmt = conn.createStatement()) {
			
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				url = rs.getString(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return url;
	}
}
