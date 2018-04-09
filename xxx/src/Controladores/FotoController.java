package Controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import modelos.home;

public class FotoController {

		public static List<home> gethom(){
		
			List<home> theList = new ArrayList<home>();
			String sql ="select * from Fotos where likes limit 4";
			
			try (Connection conn = BBDDConn.getConn();
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
	
}