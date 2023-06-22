<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="../css/contactus.css">
</head>
<body>
    <nav id="main">
        <div id="a1">
            <div id="travel_bar"><img src="../photos/myflight.png" alt="" height="50px" id="flight"><h2>TRAVEL</h2></div>
        </div>
           
                <div id="nav_content">
                    <div  class="menu"> <a href="./Home.jsp" id="lin">Home</a></div>
                    <div  class="menu"><a href="./booking.jsp" id="lin"> Book</a></div>
                    <div  class="menu"> <a href="./Packages.jsp" id="lin">Packagies</a></div>
                    <div class="menu"> <a href="./User_login.jsp" id="lin">Login</a></div>
                    <div class="menu"> <a href="./contactus.jsp" id="lin">Contact Us</a></div>
                    </div> 
                    
                
            <!-- <div id="a4"><span class="material-symbols-outlined">
                person
                </span>
                <div><span> <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="mb mb-outline-success" type="submit">Search</button>
                </form>
                </span></div>
            <div id="search_icon"></div><span class="material-symbols-outlined" id="search">
                search
                </span>

            </div>   -->
    </nav>
    <div class="login-form-container">
        <!-- <i class="fas fa-time" id="form-close"></i> -->
        <form action="/user/contact">
            <section class="book" id="book">
                <h1 class="heading">
                    <span>C</span>
                    <span>o</span>
                    <span>n</span>
                    <span>t</span>
                    <span>a</span>
                    <span>c</span>
                    <span>t</span>
                </h1>
            <input type="Email" name="email" class="box" placeholder="Email">
            <input type="text" name="name" class="box" placeholder="name">
            <input type="Number" class="box" placeholder="Number">
            <input type="Subject" class="box" placeholder="Subject">
            <input type="Message" class="box" placeholder="Enter Message">
            <input type="Submit" value="Submit" class="btn">
            
</form>
</div>
</body>
</html>