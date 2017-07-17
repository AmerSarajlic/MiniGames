package minigames.connections;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection {

private static Connection myConnection;
	
	public static Connection getConnectionToDB() {
		Properties properties = getProperties();

		try {
			myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/minigames",
					properties);
			return myConnection;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public static Properties getProperties() {
		Properties properties = new Properties();
		properties.setProperty("user", "root");
		properties.setProperty("password", "ameramer");
		properties.setProperty("useSSL", "false");

		return properties;
	}
	
}

