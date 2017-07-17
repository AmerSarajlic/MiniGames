package minigames.data;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

public class PlayerTest {

	Player player;
	
	
	@Before
	public void setUp(){
		player = new Player("Amer", "amer123");
	}
	
	@Test
	public void playerReturningNameTest() {
		assertEquals(player.getName(), "Amer");
	}
	
	@Test
	public void playerSetingNameTest(){
		player.setName("bezveze");
		assertEquals(player.getName(), "bezveze");
	}
}
