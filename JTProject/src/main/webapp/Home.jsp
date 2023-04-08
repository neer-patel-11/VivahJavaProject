<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>JT Project</title>
  <link rel="stylesheet" href="Home.css">
</head>
<body>
  
  <h1>Jay Shree Ram</h1>
	
	<%= session.getAttribute("name") %>
	
	<form action="display" method="POST">
		<button type="submit">Display</button>
		
	</form>
	<form action="logout" method="POST">
		<button type="submit">Logout</button>
		
	</form>
	
  
</body>
</html>
