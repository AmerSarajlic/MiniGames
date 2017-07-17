package minigames.dao;

import minigames.data.Player;

public interface PlayerDAO {

	public boolean addNewPlayer(Player player);
	public boolean getPlayer(String name, String password);
}
