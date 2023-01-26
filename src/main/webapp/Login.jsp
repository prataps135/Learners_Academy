<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Back Office</title>
</head>
<body>
	<div align="center">
	<h2>Welcome to Learners Academy</h2>
	<form action="ValidationServlet" method="post">
		UserName <input type="text" name="userName"> <br>
		Password <input type="password" name="password"> <br> 
		<input type="submit" Value="Login">
	</form>
	</div>
</body>
</html>