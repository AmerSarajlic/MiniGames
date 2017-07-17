package minigames.connections;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;

import org.junit.Before;
import org.junit.Test;

public class DBConnectionTest {

	Connection conn;

	@Before
	public void setUp() {
		conn = DBConnection.getConnectionToDB();
	}

	@Test
	public void connectionTest() {

		assertNotNull(conn);

	}

}
