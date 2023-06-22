<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/booking.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
    <nav id="main">
        <div id="a1">
            
                    <div id="travel_bar"><img src="./photoes/myflight.png" alt="" height="50px" id="flight"><h2>TRAVEL</h2></div>
                </div>  
                <div id="nav_content">
                    <div  class="menu"> <a href="./Home.jsp" id="lin">Home</a></div>
                    <div  class="menu"> <a href="./Packages.jsp" id="lin">Packages</a></div>
                    <div class="menu"> <a href="./login.html" id="lin">Login</a></div>
                    <div class="menu"> <a href="./contactus.jsp" id="lin">Contact Us</a></div>
                    </div> 

         
                <!-- <div id="a4"><span class="material-symbols-outlined">
                person
                </span> -->
                <!-- <div><span> <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="mb mb-outline-success" type="submit">Search</button>
                </form>
                </span></div>
            <div id="search_icon"></div><span class="material-symbols-outlined" id="search">
                search
                </span>
            </div>   -->
            <!-- <div id="cart" class="gl"><span class="material-symbols-outlined" id="gl1">
                shopping_cart
                </span></div> -->
    </nav>
    <section class="book" id="book">
        <h1 class="heading">
            <span>B</span>
            <span>o</span>
            <span>o</span>
            <span>k</span>
            <span class="space"></span>
            <span>N</span>
            <span>o</span>
            <span>w</span>
        </h1>
        <div class="row">
            <form action="" >
                <div class="inputBox">
                    <h3>Where to : <input type="text" placeholder="place name" value="<%=request.getParameter("name")%>">
                </div>
                <div class="inputBox">
                    <h3>How many : <input type="number" placeholder="number of guests">
                </div>
                <div class="inputBox">
                    <h3>Arrivals: <input type="date">
               </div>
            <div class="inputBox">
               <h3>Leaving : <input type="date">
            </div>
            <input type="Submit" id="btn" value="BOOK NOW">
            
            </form>
            </div>

    </section>
    
</body>
</html>html>