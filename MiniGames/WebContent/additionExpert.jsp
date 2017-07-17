<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header> <%@include file="header.jsp"%>
	</header>
	<div class="page-header" align="center">
		<h1>Learn Addition For Experts</h1>
	</div>

	<article>

	<div class="row">

		<center>

			<form method="post" action="ResultController">
				<div class="container">
					<table class="table">
						<p>Insert your answers and press submit button.</p>
						<thead>
							<tr>
								<th>No:</th>
								<th>Question</th>
								<th>Answers</th>
								<th></th>
							</tr>
						</thead>
						<%
							Class.forName("com.mysql.jdbc.Driver").newInstance();
							Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/minigames", "root",
									"ameramer");
							Statement st = connection.createStatement();
							ResultSet rs = st.executeQuery("Select * FROM addition WHERE mode= 'expert'");
							int i = 1;
							int pbValue = 10;
							while (rs.next()) {
						%>

						<tbody>
							<tr>
								<td><%=i%></td>
								<td><%=rs.getString("number1")%> + <%=rs.getString("number2")%>
									=</td>
								<td><input type="text" placeholder="Type answer"
									name="radio<%=i%>" /></td>
								<td>
									<div class="progress">
										<div class="progress-bar progress-bar-striped active"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: <%=pbValue%>%"><%=pbValue%>%
										</div>
									</div>
								</td>
							</tr>
							<%
								i++;
									pbValue += 10;
								}
							%>
						</tbody>
					</table>
				</div>
				<input type="submit" name="btnLogin" value="Submit"
					class="btn btn-primary" />
	</div>
	
	<input type="hidden" name="operation" value="addition" />
	<input type="hidden" name="gameMode" value="expert" />
	</form>
	
	</center>
	</div>

	</article>

</body>
</html>