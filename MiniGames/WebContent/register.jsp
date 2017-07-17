<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div class="container">
	<header> <%@ include file="header.jsp"%>
	</header>

	<article>
	<h1 class="page-header">Registration Form</h1>
	<form name="loginForm" class="form-horizontal" action="RegisterController"
		method="post">

		<div class="form-group">
			<label class="col-md-2 control-label">Insert user name :</label>
			<div class="col-md-4">
				<input type="text" class="form-control" name="registerName"
					placeholder="Enter Username" required />
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-2 control-label">Insert password :</label>
			<div class="col-md-4">
				<input type="password" class="form-control"
					placeholder="Enter Passwrod" name="registerPassword" required />
			</div>
		</div>

		<div class="form-group">
			<div class="col-md-4 col-md-offset-2">
				<input type="submit" name="btnLogin" value="Register"
					class="btn btn-primary" />
			</div>

		</div>
	</form>

	<button type="button" class="btn btn-default btn-lg">
		<a href="index.jsp"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span></a>
	</button>


	</article>

	<footer> <%@ include file="footer.jsp"%>
	</footer>

</div>
</body>
</html>