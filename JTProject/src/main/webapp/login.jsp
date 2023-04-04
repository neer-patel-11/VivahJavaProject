<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login" method="POST">
		
		<label>Email ID</label> 
		<input type="email" name="email">
	
		<label>Password</label> 
		<input type="password" name="password">
		
		<button type="submit" name="submit">Submit</button>
		
	</form>
</body>
</html>