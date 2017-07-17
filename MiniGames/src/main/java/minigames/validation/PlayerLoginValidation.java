package minigames.validation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import minigames.connections.DBConnection;

public class PlayerLoginValidation {

	
	public static boolean isValidLoginPlayer(String name, String password) {

		String sql = "SELECT name, password FROM players WHERE name = ? AND password = ?";

		try (Connection conn = DBConnection.getConnectionToDB();
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, name);
			stmt.setString(2, password);

			ResultSet rs = stmt.executeQuery();

			if (!rs.isBeforeFirst()) {
				return false;
			}
			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
}
