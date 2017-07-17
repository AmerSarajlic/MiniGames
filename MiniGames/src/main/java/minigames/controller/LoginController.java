package minigames.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import minigames.data.Player;
import minigames.validation.PlayerLoginValidation;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Player player = new Player();
			player.setName(request.getParameter("name"));
			player.setPassword(request.getParameter("password"));
			String name = player.getName();
			String password = player.getPassword();

			boolean isValid = PlayerLoginValidation.isValidLoginPlayer(name, password);

			if (isValid) {
				request.getSession().setAttribute("playerSessionName", name);
				getServletContext().getRequestDispatcher("/games.jsp").forward(request, response);

			} else {
				response.sendRedirect("invalidLogin.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
