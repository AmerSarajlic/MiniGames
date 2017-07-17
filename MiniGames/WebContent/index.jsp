<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MiniGames</title>
</head>
<body>
	<div class="container">
		<header> <%@ include file="header.jsp"%>
		</header>
		<article> <br />
		<div class="row">
			<div class="jumbotron"
				style="background-image: url('images/homeBackground.jpg');"></div>
		</div>
		<div class="row">
			<h1 class="text-center">!!! WE ARE SMART !!!</h1>
			<p class="text-center">You can play game as a guest or you can register your account and login to be part of our</p>
			<br/>
			<p class="text-center" style="color: blue;"><strong>GAMING SQUAD</strong></p>
		</div>
		<br />
		<br />
		<br />
		<div class="row">
			<center>
				<form action="findGame.jsp" class="form-inline">
					<div class="form-group">
						<label class="control-label">Search Game </label> <input
							type="text" class="form-control" name="gameName" id="gameName"
							placeholder="Enter Game Title">
					</div>
					<input type="submit" class="btn btn-primary" value="Search">
				</form>
			</center>
		</div>
		<br />
		<p class="text-center">
			<a href="games.jsp" class="btn btn-lg btn-info">View All Games</a>
		</p>
		<br />
		<br />
		<br />
		<div class="row">
			<p>
				New Player : <a href="register.jsp">Register Here</a>
		</div>

		<div class="row">
			<p>
				Existing Player: <a href="login.jsp">Login Here</a>
		</div>


		</article>
		<footer> <%@ include file="footer.jsp"%>
		</footer>
	</div>
</body>
</html>