<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Games</title>
</head>
<body>

	<header> <%@include file="header.jsp"%>
	</header>

	<%
		String name = (String) session.getAttribute("playerSessionName");
		if (name == null) {
			application.setAttribute("playerSessionName", "Guest");
		} else {
			application.setAttribute("playerSessionName", name);
		}
	%>
	<div class="page-header" align="center">
		<h1 style="color: red"><%=application.getAttribute("playerSessionName")%></h1>
		<h1>- Chose your game -</h1>
	</div>


	<article>

	<div class="container" align="center">

		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="thumbnail">
					<img src="images/add.jpg" alt="...">
					<div class="caption">
						<h3>Learn Addition</h3>
						<p>...</p>
						<p>
							<a href="additionBeginer.jsp" class="btn btn-primary"
								role="button">Beginner</a> <a href="additionExpert.jsp"
								class="btn btn-default" role="button">Expert</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-xs-6 col-md-3">
				<div class="thumbnail">
					<img src="images/subtraction.jpg" alt="...">
					<div class="caption">
						<h3>Learn Subtraction</h3>
						<p>...</p>
						<p>
							<a href="subtractionBeginner.jsp" class="btn btn-primary"
								role="button">Beginner</a> <a href="subtractionExpert.jsp"
								class="btn btn-default" role="button">Expert</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="thumbnail">
					<img src="images/multiplication.jpg" alt="...">
					<div class="caption">
						<h3>Learn Multiplication</h3>
						<p>...</p>
						<p>
							<a href="multiplicationBeginner.jsp" class="btn btn-primary"
								role="button">Beginner</a> <a href="multiplicationExpert.jsp"
								class="btn btn-default" role="button">Expert</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="thumbnail">
					<img src="images/division.jpg" alt="...">
					<div class="caption">
						<h3>Learn Division</h3>
						<p>...</p>
						<p>
							<a href="divisionBeginner.jsp" class="btn btn-primary"
								role="button">Beginner</a> <a href="divisionExpert.jsp"
								class="btn btn-default" role="button">Expert</a>
						</p>
					</div>
				</div>
			</div>

		</div>

		<button type="button" class="btn btn-default btn-lg">
			<a href="index.jsp" onclick="<%session.removeAttribute("playerSessionName");%>"><span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true">Logout!</span></a>
		</button>


	</div>
	</article>

	<footer> <%@include file="footer.jsp"%>
	</footer>
</body>
</html>