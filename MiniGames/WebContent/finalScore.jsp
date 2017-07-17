<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FinalScore</title>
</head>
<body>
	<header> <%@include file="header.jsp"%>
	</header>

	<article>
	<h1 style="color: red" align="center">- Game Over -</h1>
	<img src="images/congradulation.jpg" alt="..."
		class="img-responsive center-block" />
	<h3 style="color: blue" align="center">
		<strong style="color: fuchsia;"><%=application.getAttribute("playerSessionName")%></strong>
		Your final score is <strong style="color: green"><%=request.getAttribute("finalScore")%></strong>
	</h3>

	<div align="center">
		<button type="button" class="btn btn-default btn-lg">
			<a href="index.jsp"><span class="glyphicon glyphicon-thumbs-down"
				aria-hidden="true"> Logout!</span></a>
		</button>
		<button type="button" class="btn btn-default btn-lg">
			<a href="games.jsp"><span class="glyphicon glyphicon-thumbs-up"
				aria-hidden="true"> NewGame!</span></a>

		</button>
	</div>

	</article>

	<footer> <%@include file="footer.jsp"%>
	</footer>


</body>
</html>