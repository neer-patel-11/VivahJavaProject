<%@page import="com.project.JTProject.model.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>
	
	<div class="container">
		
			<h3>List Persons</h3>
			
			<hr/>
		
			<c:forEach items="${ps}" var="p">
			
				<p> ${p.gender} </p>
				<p> ${p.firstName} </p>
				<img src="data:image/jpeg;base64,<c:out value='${p.img}'/>" style="height:40rem;">
			</c:forEach>
								
		</div>
		
	
</body>
</html>