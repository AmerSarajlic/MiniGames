package minigames.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdditionController
 */
@WebServlet("/ResultController")
public class ResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResultController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int count = 0;
		String operation = request.getParameter("operation");
		String mode = request.getParameter("gameMode");

		try {

			String st[] = new String[10];
			for (int i = 0; i < st.length; i++) {
				int j = i + 1;
				st[i] = request.getParameter("radio" + j);
				System.out.println(st[i]);

			}

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/minigames", "root",
					"ameramer");
			String sql = "SELECT correct FROM " + operation + " WHERE mode= ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, mode);

			ResultSet rs = stmt.executeQuery();

			String ans = "";
			while (rs.next()) {
				ans += rs.getString("correct") + " ";
			}
			String answers[] = ans.split(" ");
			for (int i = 0; i < answers.length; i++) {
				if (st[i].equals(answers[i])) {
					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		request.setAttribute("finalScore", count);
		getServletContext().getRequestDispatcher("/finalScore.jsp").forward(request, response);
		
	}

}
