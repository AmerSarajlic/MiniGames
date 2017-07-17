package minigames.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import minigames.connections.DBConnection;
import minigames.data.Player;
import minigames.validation.PlayerLoginValidation;

/**
 * Servlet implementation class RegisterControler
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Player player = new Player();
			player.setName(request.getParameter("registerName"));
			player.setPassword(request.getParameter("registerPassword"));
			String name = player.getName();
			String password = player.getPassword();

			boolean isValid = PlayerLoginValidation.isValidLoginPlayer(name, password);

			if (isValid) {
				response.sendRedirect("invalidRegistration.jsp");

			} else {
				
				String sql = "INSERT INTO players (name, password) VALUES (?, ?)";
				
				Connection conn = DBConnection.getConnectionToDB();
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, name);
				stmt.setString(2, password);
				
				stmt.executeUpdate();
				
				request.getSession().setAttribute("playerSessionName", name);
				getServletContext().getRequestDispatcher("/games.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
