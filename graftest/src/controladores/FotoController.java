package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import modelos.home;

public class FotoController {

		public static List<home> gethom(){
		
			List<home> theList = new ArrayList<home>();
			String sql ="SELECT idFotos,Usuario,url,likes FROM fotos ORDER BY likes DESC limit 3";			
			
			try (Connection conn = BDConn.getConn();
					Statement stmt = conn.createStatement()) {
				
				ResultSet rs = stmt.executeQuery(sql);

				while (rs.next()) {
					theList.add(new home(
							rs.getInt(1),
							rs.getString(2), 
							rs.getString(3),
							rs.getInt(4)
							));
				}
			} catch (Exception e) {
				String s = e.getMessage();
				System.out.println(s);
			}
			return theList;
		}
	
		public static List<home> getimagen(){
			
			List<home> theList2 = new ArrayList<home>();
			String sql ="SELECT idFotos,Usuario,url,likes FROM fotos ORDER BY fecha_mod DESC LIMIT 5";			
			
			try (Connection conn = BDConn.getConn();
					Statement stmt = conn.createStatement()) {
				
				ResultSet rs = stmt.executeQuery(sql);

				while (rs.next()) {
					theList2.add(new home(
							rs.getInt(1),
							rs.getString(2), 
							rs.getString(3),
							rs.getInt(4)
							));
				}
			} catch (Exception e) {
				String s = e.getMessage();
				System.out.println(s);
			}
			return theList2;
		}
}