<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InvalidRegistration</title>
</head>
<body>
	<header> <%@ include file="header.jsp"%>
	</header>

	<article>
	<div class="jumbotron">
		<div class="alert alert-danger" align="center">
			<strong>Invalid Input !!!</strong> Inserted username is already in use. Please try new one.
		</div>
		</div>
		
		<p class="text-center">
			<a href="register.jsp" class="btn btn-lg btn-info">Try again</a>
		</p>
		
	</article>

	</article>


	<footer> <%@include file="footer.jsp"%>
	</footer>
</body>
</html>