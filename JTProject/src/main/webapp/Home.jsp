<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Copperplate, Papyrus, fantasy;
        }
        body {
            background: -webkit-linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
            background: linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
            width: 100%;
            height: 100%;
        }
        .site-header {
            width: 100%;
            /* background: #0f8a9d; */
            /* background: linear-gradient(57deg, #00C6A7 , #1E4D92 ); */
            background: linear-gradient(#F27121, #E94057, #8A2387);

        }


        nav {
            width: 100%;
            height: 100px;
            /*background-color:  red;*/
            display: flex;
            color: white;

        }

        .logo {
            width: 50%;
            height: 100px;
        }

        .logo h1 {
            line-height: 100px;
            padding-left: 50px;
        }

        .menu {
            width: 50%;
            height: 100px;
        }

        .menu ul {
            width: 100%;
            height: 100px;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
        }

        .menu ul li {
            list-style: none;
            font-size: 12px;
            font-weight: bold;
            text-transform: uppercase;
        }

        section {
            display: flex;
        }

        .leftside {
            width: 45%;
            height: auto;
            overflow: hidden;
            margin-top: 20px;
        }

        .leftside img {
            width: 600px;
            height: 500px;
        }

        .rightside {
            width: 55%;
            height: 300px;
            color: white;
            text-align: center;
            margin-top: 80px;
            padding: 40px;
        }

        .rightside h1 {
            text-align: center;
            color: #ffffff;
            font-size: 50px;
            font-weight: 900;
            text-transform: uppercase;
        }

        .rightside p {
            font-size: 1.1rem;
            padding: 30px 0;
        }

        .rightside button {
            font-size: 17px;
            font-weight: 600;
            color: white;
            text-transform: uppercase;
            background: linear-gradient(57deg, #00C6A7, #1E4D92);
            border-radius: 4px 4px 4px 4px;
            padding: 20px 35px;
        }



        .rightside button:hover {
            background: linear-gradient(57deg, #1E4D92, #00C6A7);
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



        

        footer {
            bottom: 0;
            left: 0;
            right: 0;
            background-color: var(--bgcolor);
            height: auto;

               

            padding-top: 10px;
            color: black;
        }

        .footer-content {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

        .footer-content h2 {
            font-family: Copperplate, Papyrus, fantasy;
            text-decoration: underline;
            color: white;
            
        }

        .footer-content p {
            max-width: 500px;
            font-family: Copperplate, Papyrus, fantasy;
            margin: 10px auto;
            line-height: 28px;
            font-size: 2rem;
            color: white;
        }

        .socials {
            list-style: none;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 1rem 0 3rem 0;
        }

        .socials li {
            margin: 0 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .socials img {
            width: 15rem;
            border-radius: 50%;
        }

        .socials a {
            text-decoration: none;
            color: white;
            padding: 5px;
            margin-top: 1rem;
            width: fit-content;

        }
        .socials a i {
            font-size: 2rem;
            transition: color .4s ease;

        }

        .socials a:hover i {
            color: brown;
        }

        .footer-bottom {
            background-color: var(--bgcolor);
            font-size: 2rem;
            padding: 5px;
            text-align: center;
            color: white;

        }

        .footer-bottom a:hover {
            color: white;
            text-decoration: none;
        }

        .footer-menu {
            float: right;

        }

        .footer-menu ul {
            display: flex;
        }

        .footer-menu ul li {
            padding-right: 10px;
            display: block;
        }

        .footer-menu ul li a {
            color: #cfd2d6;
            text-decoration: none;
        }

        .footer-menu ul li a:hover {
            color: #27bcda;
        }

        @media (max-width:500px) {
            .footer-menu ul {
                display: flex;
                margin-top: 10px;
                margin-bottom: 20px;
            }
        }

    </style>
</head>

<body>

    <header class="site-header clearfix">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


        <nav class="navbar navbar-expand-lg bg-light">
            <a class="navbar-brand" href="#">Vivah.com</a>
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
    </header>
    <section>
        <div class="leftside">
            <img src="home.jpeg" style="margin:5rem; border-radius: 20px;">
        </div>
        <div class="rightside">
            <h1>Welcome to Vivah.com</h1>
            <h2> <%= session.getAttribute("name") %> </h2>
            <br>
            <h2>We believe choosing a life partner is a big and important decision, and hence work towards giving a simple and secure matchmaking experience for you and your family. Each profile registered with us goes through a manual screening process before going live on site; we provide superior privacy controls for Free and also verify contact information of members.</h2>
        
        </div>


    </section>



</body>


<footer>
    <div class="footer-content">
        <h2>Made By</h2>


        <ul class="socials">
            <li>
                <img src="neer.jpg" alt="hitarth">
                <p>Neer Patel</p>
                <div class="logos">
                    <a href="https://www.linkedin.com/in/neer-patel-b316b1237/" target="_blank"><i
                            class="fa fa-linkedin-square"></i></a>
                    <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.instagram.com/definetly_not_neer/" target="_blank"><i
                            class="fa fa-instagram"></i></a>
                </div>
            <li>
            <li>
                <img src="hitarth.jpg" alt="hitarth" style="">
                <p>Hitarth Patel</p>
                <div class="logos">
                    <a href="https://www.linkedin.com/in/hitarth-patel-152919223" target="_blank"><i
                            class="fa fa-linkedin-square"></i></a>
                    <a href="https://twitter.com/patelhitarth08" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.instagram.com/_patel_hitarth.24/" target="_blank"><i
                            class="fa fa-instagram"></i></a>
                </div>
            <li>

        </ul>
    </div>
    <div class="footer-bottom">
        <p>copyright &copy; <a href="home">Vivah.com</a> </p>
    </div>

</footer>

</html>