package minigames.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import minigames.data.Player;

public class PlayerDAOImpl implements PlayerDAO {

	PreparedStatement stmt = null;
	Connection conn;
	ResultSet rs = null;
	String query = null;

	public PlayerDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public boolean addNewPlayer(Player player) {

		query = "INSERT INTO players (name, password) VALUE (?, ?)";

		try {

			stmt = conn.prepareStatement(query);
			stmt.setString(1, player.getName());
			stmt.setString(2, player.getPassword());

			int done = stmt.executeUpdate();

			if (done == 1) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean getPlayer(String name, String password) {

		query = "SELECT * FROM players WHERE name = ?";

		try {
			stmt = conn.prepareStatement(query);

			stmt.setString(1, name);
			rs = stmt.executeQuery();

			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
