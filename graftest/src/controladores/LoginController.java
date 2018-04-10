package controladores;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.Connection;

public class LoginController {

	public static int getdata(String user, String pass) {

		String sql = "SELECT id FROM Usuarios WHERE usuario= '" + user + "' AND password='" + pass + "' ";
		int resp = -1;

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				resp = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resp;
		}
	
}
