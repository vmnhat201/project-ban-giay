<%-- 
    Document   : SignUp
    Created on : Feb 19, 2022, 8:55:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Daily UI - Day 1 Sign In</title>

        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/animate.css">
        <!-- Custom Stylesheet -->
        <link rel="stylesheet" href="css/style.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <style>
        body {
            background: url("") no-repeat center center fixed;
            
            background-size: cover;
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            font-weight: 300;
            margin: 0;
            color: #666;
        }

        /* Typography */
        h1#title {
            font-family: 'Roboto Slab', serif;
            font-weight: 300;
            font-size: 3.2em;
            color: white;
            text-shadow: 0 0 10px rgba(0,0,0,0.8);
            margin: 0 auto;
            padding-top: 180px;
            max-width: 300px;
            text-align: center;
            position: relative;
            top: 0px;
        }

        h1#title span span {
            font-weight: 400;
        }

        h2 {
            text-transform: uppercase;
            color: white;
            font-weight: 400;
            letter-spacing: 1px;
            font-size: 1.4em;
            line-height: 2.8em;
        }

        a {
            text-decoration: none;
            color: #666;
        }

        a:hover {
            color: #aeaeae;
        }

        p.small {
            font-size: 0.8em;
            margin: 20px 0 0;
        }


        /* Layout */
        .container {
            margin: 0;
        }

        .top {
            margin: 0;
            padding: 0;
            width: 100%;
            background: -moz-linear-gradient(top,  rgba(0,0,0,0.6) 0%, rgba(0,0,0,0) 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top,  rgba(0,0,0,0.6) 0%,rgba(0,0,0,0) 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom,  rgba(0,0,0,0.6) 0%,rgba(0,0,0,0) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#99000000', endColorstr='#00000000',GradientType=0 ); /* IE6-9 */
        }

        .login-box {
            background-color: white;
            max-width: 340px;
            margin: 0 auto;
            position: relative;
            top: 80px;
            padding-bottom: 30px;
            border-radius: 5px;
            box-shadow: 0 5px 50px rgba(0,0,0,0.4);
            text-align: center;
        }

        .login-box .box-header {
            background-color: forestgreen;
            margin-top: 0;
            border-radius: 5px 5px 0 0;
        }

        .login-box label {
            font-weight: 700;
            font-size: .8em;
            color: #888;
            letter-spacing: 1px;
            text-transform: uppercase;
            line-height: 2em;
        }

        .login-box input {
            margin-bottom: 20px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 2px;
            font-size: .9em;
            color: #888;
        }

        .login-box input:focus {
            outline: none;
            border-color: #665851;
            transition: 0.5s;
            color: #665851;
        }

        .login-box button {
            margin-top: 0px;
            border: 0;
            border-radius: 2px;
            color: white;
            padding: 10px;
            text-transform: uppercase;
            font-weight: 400;
            font-size: 0.7em;
            letter-spacing: 1px;
            background-color: #665851;
            cursor:pointer;
            outline: none;
        }

        .login-box button:hover {
            opacity: 0.7;
            transition: 0.5s;
        }

        .login-box button:hover {
            opacity: 0.7;
            transition: 0.5s;
        }

        .selected {
            color: #665851!important;
            transition: 0.5s;
        }

        /* Animation Delay */
        #logo {
            -webkit-animation-duration: 1s;
            -webkit-animation-delay: 2s;
        }

        .login-box {
            -webkit-animation-duration: 1s;
            -webkit-animation-delay: 1s;
        }
    </style> 
    <body>
        <form action="signup" method="POST" >
            <div class="container">
               
                <div class="login-box ">
                    <div class="box-header">
                        <h2>Sign Up</h2>
                    </div>
                    <div class="alert alert-warning" role="alert">
                        <p>${messsignup}</p>
                    </div>
                    <label for="user">Username</label>
                    <br/>
                    <input name="user" type="text" id="username">
                    <br/>
                    <label for="pass">Password</label>
                    <br/>
                    <input name="pass" type="password" id="password">
                    <br/>
                    <label for="repass">Re_Password</label>
                    <br/>
                    <input name="repass" type="password" id="password">
                    <br/>
                    <button type="submit">Sign Up</button>
                    <br>
                    <a href="Login.jsp">Login</a>

                    <br/>
                    <a href="#"><p class="small">Forgot your password?</p></a>
                </div>
            </div>
        </form>
    </body>



</html>