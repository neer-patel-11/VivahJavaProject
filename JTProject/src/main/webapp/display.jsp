<%@page import="com.project.JTProject.model.Person" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="ISO-8859-1">
				<title>Display</title>
			</head>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
				crossorigin="anonymous">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

			<style>
			* {
			font-family: Copperplate, Papyrus, fantasy;
			}
				body {
					background: -webkit-linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
					background: linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
					width: 100%;
					height: 100%;
				}

				.about-me {
					display: flex;
					flex-direction: row;
					align-items: center;
					margin-left: 25rem;
				}

				.about-me img {
					width: auto;
					border-radius: 10px;
				}

				.about-me-text p,
				h1 {
					font-size: 30px;
					color: #f43303;
					font-family: Copperplate, Papyrus, fantasy;
					margin: 0;
				}

				.about-me-text p {

					font-size: 1.9rem;
					color: #FFFFFF;
					margin: 10px 0;
				}

				.about-me-text p span {
					color: #7fc3ff;
					font-weight: bold;
				}

				.details {
					display: flex;
					flex-direction: row;
				}


				.container {
					background: linear-gradient(to right, #004e92, rgb(24, 54, 123), #000428);
					box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
					padding: 5rem;
					margin: 10rem;

				}

				nav {
					font-size: 1.5rem;
					background: linear-gradient(to right, #004e92, rgb(24, 54, 123), #000428);

				}

				.navbar-brand {
					font-size: 2rem;
					padding: 1.3rem;
				}

				nav li {
					margin-left: 1rem;
				}

				.nav-link {
					color: #7fc3ff;

				}

				.nav-link:focus {
					color: #f43303;
					
				}
				
				.nav-link:hover {
					text-decoration: none;
					color: #f43303;
					transform: scale(1.2);
				}

				.nav-item a {
					text-decoration: none;
				}

				.dropdown-item {
					font-size: 1.5rem;
				}

				#submit {
					background: transparent;
					font-family: Copperplate, Papyrus, fantasy;

					border: none;
					color: white;
				}

				#submit:hover {
					background-color: #f43303;
					border: none;
				}


				form #show-full  {
					position: relative;
					display: inline-block;
					padding: 10px 20px;
					color: #b73093;
					font-size: 16px;
					text-decoration: none;
					text-transform: uppercase;
					overflow: hidden;
					transition: .5s;
					margin-top: 40px;
					letter-spacing: 4px
				}

				#show-full:hover {
					background: #f43303;
					color: #fff;
					transform: scale(1.2);
					border-radius: 5px;
					box-shadow: 0 0 5px #f43303,
					0 0 25px #f43303,
						0 0 50px #f43303,
						0 0 100px #f43303;
				}

				#show-full  span {
					position: absolute;
					display: block;
				}

				#show-full  span:nth-child(1) {
					top: 0;
					left: -100%;
					width: 100%;
					height: 2px;
					background: linear-gradient(90deg, transparent, #f43303);
					animation: btn-anim1 1s linear infinite;
				}

				@keyframes btn-anim1 {
					0% {
						left: -100%;
					}

					50%,
					100% {
						left: 100%;
					}
				}

				#show-full  span:nth-child(2) {
					top: -100%;
					right: 0;
					width: 2px;
					height: 100%;
					background: linear-gradient(180deg, transparent, #f43303);
					animation: btn-anim2 1s linear infinite;
					animation-delay: .25s
				}

				@keyframes btn-anim2 {
					0% {
						top: -100%;
					}

					50%,
					100% {
						top: 100%;
					}
				}

				#show-full  span:nth-child(3) {
					bottom: 0;
					right: -100%;
					width: 100%;
					height: 2px;
					background: linear-gradient(270deg, transparent, #f43303);
					animation: btn-anim3 1s linear infinite;
					animation-delay: .5s
				}

				@keyframes btn-anim3 {
					0% {
						right: -100%;
					}

					50%,
					100% {
						right: 100%;
					}
				}

				#show-full span:nth-child(4) {
					bottom: -100%;
					left: 0;
					width: 2px;
					height: 100%;
					background: linear-gradient(360deg, transparent, #f43303);
					animation: btn-anim4 1s linear infinite;
					animation-delay: .75s
				}

				@keyframes btn-anim4 {
					0% {
						bottom: -100%;
					}

					50%,
					100% {
						bottom: 100%;
					}
				}
			</style>

			<body>


				<link rel="stylesheet"
					href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


				<nav class="navbar navbar-expand-lg bg-light">
					<a class="navbar-brand" href="#">Vivah</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a class="nav-link" href="./home">Home <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="./display">Display</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
									data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Profile
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="profile">View your profile</a>
									<a class="dropdown-item" href="updateProfile">Change your profile</a>
									<a class="dropdown-item" href="deleteProfile">Delete your profile</a>
									<a class="dropdown-item" href="updateProff">Change your proffesional profile</a>
								</div>
							</li>
						
							<li class="nav-item">
								<a class="nav-link" href="./logout">Logout</a>
							</li>
						</ul>
					</div>
				</nav>

				<c:forEach items="${ps}" var="p">
					<div class="about-me">

						<div class="image">
							<img src="data:image/jpeg;base64,<c:out value='${p.img}'/>" style="height: 45rem; width: auto;">>
						</div>
						<div class="details">
							<div class="about-me-text container">
								<p><span>Name:</span> ${p.firstName} ${p.middleName} ${p.lastName}</p>
								<br>
								<p><span>Gender:</span> ${p.gender}</p>
								<br>
								<p><span>Address:</span>${p.address}</p>
								<br>
								<p><span>Religion:</span>${p.religion}</p>
								<br>
								<p><span>Cast:</span> ${p.cast}</p>
								<br>
								<form method="POST" action="displayProfile">
									<a id="show-full">
										<span></span>
										<span></span>
										<span></span>
										<span></span>

										<input type="hidden" name="email" value="${p.emailId}">
										<button id="submit" type="submit" name="button">View Full Profile</button>
									</a>
								</form>
							</div>

						</div>

					</div>
				</c:forEach>



			</body>

			</html>