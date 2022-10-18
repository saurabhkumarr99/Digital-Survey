<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="1_b_home.css">
<script src="1_c_home.js"></script>
</head>
<body>

<body>

    <header>

        <div id="logo">
            <img src="" alt="" srcset="">
        </div>

        <div class="navbar">
            <ul>
                <li class="btn"><a href="http://localhost:8484/Survey/1_a_home.jsp">Home</a></li>
                <li class="btn"><a href="http://localhost:8484/Survey/2_a_about_us.html">About Us</a></li>
                <li class="btn"><a href="http://localhost:8484/Survey/3_a_contact_us.html">Contact</a></li>
            </ul>
        </div>

        <div class="social">
            <ul>
                <li><a href="http://"><img src="" alt="" srcset=""></a></li>
                <li><a href="http://">facebook</a></li>
                <li><a href="http://"><img src="" alt="" srcset=""></a></li>
                <li><a href="http://"><img src="" alt="" srcset=""></a></li>
            </ul>
        </div>
    </header>

    <section>
        <div class="intro">
            <div>
                <h1>Digital Survey</h1>
                <h3>Welcome</h3>
            </div>
            <div>
                <p>
                    We are here to help you to conduct your survey.
                </p>
            </div>
        </div>
        <div class="user">
            <div class="register">
                <h3 ><strong>Sign Up</strong></h3>
                <form action="registration" method="post"   >
                    Name :<input type="text" class="input" name="name" placeholder="Your Name"><br>
                    Gender : Male<input type="radio" name="gender"> Female<input type="radio" name="gender" ><br>
                    Password :<input type="password" class="input" name="password"><br>
                    <input  class="btn"  type="submit" value="Register">
                </form>
            </div>
            <div class="login">
                <h3 ><strong>Sign In</strong></h3>
               
                <form action="login" method="post" target="_blank">
                    Name :<input type="text" class="input" name="name" placeholder="Your Name" ><br>
                    Password :<input type="password" class="input" name="name"><br>
                    <input class="btn" type="submit" value="Login">
                </form>
            </div>
        </div>
    </section>
</body>

</body>
</html>