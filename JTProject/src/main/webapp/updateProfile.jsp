<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Update Profile</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <style>
            @import url("https://fonts.googleapis.com/css?family=Open+Sans:400,700");

            :root {
                --white: #7fc3ff;
                --red: #e31b23;
                background: linear-gradient(to right, #000428, rgb(24, 54, 123), #004e92);
                --borderFormEls: #002b51;
                --bgFormEls: hsl(0, 0%, 14%);
                --bgFormElsFocus: #002b51;
            }

            * {
                padding: 0;
                margin-top: 1.5rem;
                box-sizing: border-box;
                outline: none;
            }

            a {
                color: inherit;
            }

            .navbar {
                background: var(--bgcolor);
                border: none;
            }

            .container-fluid {
                background: var(--bgcolor);
                border: none;
            }

            .activ {
                background: var(--rebg);
                color: white;
            }

            .nav li {
                margin-left: 1rem;
            }

            input,
            select,
            textarea,
            button {
                font-family: inherit;
                font-size: 100%;
            }

            button,
            label {
                color: white;
                cursor: pointer;
            }

            select {
                appearance: none;
            }

            /* Remove native arrow on IE */
            select::-ms-expand {
                display: none;
            }

            /*Remove dotted outline from selected option on Firefox*/
            /*https://stackoverflow.com/questions/3773430/remove-outline-from-select-box-in-ff/18853002#18853002*/
            /*We use !important to override the color set for the select on line 99*/
            select:-moz-focusring {
                color: transparent !important;
                text-shadow: 0 0 0 var(--white);
            }

            textarea {
                resize: none;
            }

            ul {
                list-style: none;
            }

            body {


                font-size: 1.2rem;
                font-family: Copperplate, Papyrus, fantasy;

                background: var(--bodyColor);
                color: var(--white);
                margin-bottom: 2.5rem;
            }

            .container {
                max-width: 800px;
                margin: 0 auto;
                padding: 0 1.5rem;
            }


            /* FORM ELEMENTS
–––––––––––––––––––––––––––––––––––––––––––––––––– */

            .form-group {
                font-size: 1.2rem;
            }

            .form-group input {
                font-weight: bold;
            }

            .form-group option, select{
                font-size: 1.2rem;
                font-weight: bold;
            
            }

            .my-form h1 {
                margin-bottom: 1.5rem;
            }


            .my-form li,
            .my-form .grid>*:not(:last-child) {
                margin-bottom: 1.5rem;
            }

            .my-form select,
            .my-form input,
            .my-form textarea,
            .my-form button {
                margin-bottom: 1rem;
                width: 100%;
                line-height: 1.9;
                padding: 15px 10px;
                border: 1px solid var(--borderFormEls);
                color: var(--bgFormEls);
                background: var(--white);
                transition: background-color 0.3s cubic-bezier(0.57, 0.21, 0.69, 1.25),
                    transform 0.3s cubic-bezier(0.57, 0.21, 0.69, 1.25);
            }

            .my-form textarea {
                height: 170px;
            }

            .my-form ::placeholder {
                color: inherit;
                /*Fix opacity issue on Firefox*/
                opacity: 1;
            }

            .my-form select:focus,
            .my-form input:focus,
            .my-form textarea:focus,
            .my-form button:enabled:hover,
            .my-form button:focus,
            .my-form input[type="checkbox"]:focus+label {
                background: var(--bgFormElsFocus);
                color: white;
            }

            .my-form select:focus,
            .my-form input:focus,
            .my-form textarea:focus {
                transform: scale(1.02);
            }

            .my-form *:required,
            .my-form select {
                background-repeat: no-repeat;
                background-position: center right 12px;
                background-size: 10px 15px;
            }

            .my-form *:required {
                background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/asterisk.svg);
            }

            .my-form select {
                background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/down.svg);
            }

            .my-form *:disabled {
                cursor: default;
                filter: blur(2px);
            }


            .my-form .required-msg {
                display: none;
                background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/asterisk.svg) no-repeat center left / 15px 15px;
                padding-left: 20px;
            }

            .my-form .btn-grid {
                position: relative;
                overflow: hidden;
                transition: filter 0.2s;
            }

            .my-form button {
                font-weight: bold;
            }

            .my-form button * {
                display: inline-block;
                width: 100%;
                transition: transform 0.4s ease-in-out;
            }

            .my-form button .back {
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-110%, -50%);
            }

            .my-form button:enabled:hover .back,
            .my-form button:focus .back {
                transform: translate(-50%, -50%);
            }

            .my-form button:enabled:hover .front,
            .my-form button:focus .front {
                transform: translateX(110%);
            }

            .my-form input[type="checkbox"] {
                position: absolute;
                left: -9999px;
            }

            .my-form input[type="checkbox"]+label {
                position: relative;
                display: inline-block;
                padding-left: 2rem;
                transition: background 0.3s cubic-bezier(0.57, 0.21, 0.69, 1.25);
            }

            .my-form input[type="checkbox"]+label::before,
            .my-form input[type="checkbox"]+label::after {
                content: '';
                position: absolute;
            }

            .my-form input[type="checkbox"]+label::before {
                left: 0;
                top: 6px;
                width: 18px;
                height: 18px;
                border: 2px solid var(--white);
            }

            .my-form input[type="checkbox"]:checked+label::before {
                background: var(--red);
            }

            .my-form input[type="checkbox"]:checked+label::after {
                left: 7px;
                top: 7px;
                width: 6px;
                height: 14px;
                border-bottom: 2px solid var(--white);
                border-right: 2px solid var(--white);
                transform: rotate(45deg);
            }


            footer {
                font-size: 1rem;
                text-align: right;
                backface-visibility: hidden;
            }

            footer a {
                text-decoration: none;
            }

            footer span {
                color: var(--red);
            }


            @media screen and (min-width: 600px) {
                .my-form .grid {
                    display: grid;
                    grid-gap: 1.5rem;
                }

                .my-form .grid-2 {
                    grid-template-columns: 1fr 1fr;
                }

                .my-form .grid-3 {
                    grid-template-columns: auto auto auto;
                    align-items: center;
                }

                .my-form .grid>*:not(:last-child) {
                    margin-bottom: 0;
                }

                .my-form .required-msg {
                    display: block;
                }
            }

            @media screen and (min-width: 541px) {
                .my-form input[type="checkbox"]+label::before {
                    top: 50%;
                    transform: translateY(-50%);
                }

                .my-form input[type="checkbox"]:checked+label::after {
                    top: 3px;
                }
            }

            #submit {
                margin: 2rem;
            }

            #submit:hover {
                background: #002b51;
                color: #fff;
                transform: scale(1.05);
                border: none;
                border-radius: 5px;
                box-shadow: 0 0 0px #002b51,
                    0 0 10px #002b51,
                    0 0 10px #002b51,
                    0 0 10px #002b51;
            }
        </style>
    </head>

    <body>

        <form action="updateProfile" method="POST" class="my-form">

            <div class="container">

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" name="fname" value="${person.firstName}">
                </div>

                <div class="form-group">
                    <label>Middle Name</label>
                    <input type="text" name="mname" value="${person.middleName}">
                </div>

                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" name="lname" value="${person.lastName}">
                </div>


                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select name="gender">
                        <option value="" selected>Select Gender</option>
                        <option value="Male" >Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>


                <div class="form-group">
                    <label>Address</label>
                    <input type="text" name="address" value="${person.address}">
                </div>

                <div class="form-group">
                    <label>Contact</label>
                    <input type="text" name="contact" value="${person.contact}">
                </div>


                <div class="form-group">
                    <label>Email ID</label>
                    <input type="email" name="email" value="${person.emailId}">
                </div>




                <div class="form-group">
                    <label>Mother-Tongue</label>
                    <input type="text" name="motherTongue" value="${person.motherTongue}">
                </div>

                <div class="form-group">
                    <label>Religion</label>
                    <input type="text" name="religion" value="${person.religion}">
                </div>

                <div class="form-group">
                    <label>Cast</label>
                    <input type="text" name="cast" value="${person.cast}">
                </div>


                <div class="form-group">
                    <label>Mother Name</label>
                    <input type="text" name="mothername" value="${person.motherName}">
                </div>



                <div class="form-group">
                    <label>Father Name</label>
                    <input type="text" name="fathername" value="${person.fatherName}">
                </div>

                <div class="form-group">
                    <label>Date Of Birth</label>
                    <input type="date" name="dob" value="${person.dob}">
                </div>


                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" value="${person.password}">
                </div>

                <button type="submit">Submit</button>

            </div>
        </form>


    </body>

    </html>