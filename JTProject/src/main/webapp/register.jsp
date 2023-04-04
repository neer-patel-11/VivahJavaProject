<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

	<form action="register" method="POST" enctype="multipart/form-data">
	
		<label>First Name</label> 
		<input type="text" name="fname">
		
		<label>Middle Name</label> 
		<input type="text" name="mname">
		
		<label>Last Name</label> 
		<input type="text" name="lname">
		
		<label>Gender</label> 
		<label>Male</label>
		<input type="radio" name="gender" value="Male">
		<label>Female</label>
		<input type="radio" name="gender" value="Female">
		<label>Other</label>
		<input type="radio" name="gender" value="Other">
		
		<label>Address</label> 
		<input type="text" name="address">
		
		<label>Contact</label> 
		<input type="text" name="contact">
		
		<label>Email ID</label> 
		<input type="email" name="email">
	
		<label>Qualification</label> 
		<input type="text" name="qualification">
		
		<label>Description</label> 
		<input type="text" name="description">
		
		<label>Mother-Tongue</label> 
		<input type="text" name="motherTongue">
		
		<label>Religion</label> 
		<input type="text" name="religion">
		
		<label>Cast</label> 
		<input type="text" name="cast">
		
		<label>Choice Description</label> 
		<input type="text" name="choiceDescription">
		
		<label>Occupation</label> 
		<input type="text" name="occupation">
		
		<label>Mother Name</label> 
		<input type="text" name="mothername">
		
		<label>Father Name</label> 
		<input type="text" name="fathername">
		
		<label>Date Of Birth</label> 
		<input type="date" name="dob">
		
		<label>Password</label> 
		<input type="password" name="password">
		
		<label>Profile Photo</label> 
		<input type="file" name="img">
		
		<button type="submit" name="submit">Submit</button>
		
	</form>
	
</body>
</html>