<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.project.JTProject.model.Person"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>Profile</title>

    <style>
    * {
    font-family: Copperplate, Papyrus, fantasy;
    }
        body {
            background: -webkit-linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
            background: linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
            width: 100%;
            height: 100%;
            font-family: Copperplate, Papyrus, fantasy;
        }

        .about-me {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .about-me img {
            width: auto;
            border-radius: 10px;
            margin-top: 10rem;
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
            font-family: Copperplate, Papyrus, fantasy;
            
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
    </style>
</head>

<body>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <nav class="navbar navbar-expand-lg bg-light">
        <a class="navbar-brand" href="#">Vivah</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                        <a class="dropdown-item" href="updateProff">Change your proffesional profile</a>
                        <a class="dropdown-item" href="deleteProfile">Delete your profile</a>
                    </div>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="./logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="about-me">
        <div class="image">
            <img src="data:image/jpeg;base64,<c:out value='${person.img}'/>" style="height:40rem;">
        </div>
        <div class="details">
            <div class="about-me-text container">
                <h1>- - - Personal Details - - -</h1>
                <br>
                <p><span>First Name:</span> ${person.firstName}</p>
                <br>
                <p><span>Middle Name:</span>${person.middleName}</p>
                <br>
                <p><span>Last Name:</span> ${person.lastName}</p>
                <br>
                <p><span>Gender:</span> ${person.gender}</p>
                <br>
                <p><span>Address:</span>${person.address}</p>
                <br>
                <p><span>Contact:</span> ${person.contact}</p>
                <br>
                <p><span>Religion:</span>${person.religion}</p>
                <br>
                <p><span>Cast:</span> ${person.cast}</p>
                <br>
                <p><span>Mother Name:</span> ${person.motherName}</p>
                <br>

            </div>
            <div class="about-me-text container">

                <p><span>Fathers Name:</span> ${person.fatherName}</p>
                <br>
                <p><span>Date of birth:</span> ${person.dob}</p>
                <br>
                <p><span>Email Id:</span>${person.emailId}</p>
                <br>
                <p><span>Mother Tongue:</span> ${person.motherTongue}</p>
                <br>
                <h1>- - Proffesional Details - -</h1>
                <br>
                <p><span>Occupation:</span> ${ppd.occupation}</p>
                <br>
                <p><span>Qualification:</span> ${ppd.qualification}</p>
                <br>
                <p><span>Choice Description:</span> ${ppd.choiceDescription}</p>
                <br>
                <p><span>Description:</span> ${ppd.description}</p>
                <br>
            </div>
        </div>
    </div>
</body>

</html>