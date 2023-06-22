<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="../css/project.css">
<link rel="stylesheet" href="../css/sevices.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="../css/footer.css">     
</head>
<body>
<h1>${pass}</h1>
<h1>${fail}</h1>
    <nav id="main">
        <div id="a1">
   
         
          
            <div id="travel_bar"><img src="../images/myflight.png" alt="" height="50px" id="flight"><h2>TRAVEL</h2></div>
            </div>  
            <div id="nav_content">
                <div  class="menu"> <a href="/jsp/Home.jsp" id="lin">Home</a></div>
                <div class="menu"> <a href="#page2" id="lin">Services</a></div>
                <div  class="menu"> <a href="/user/tourpackages" id="lin">Packages</a></div>
                <div class="menu"> <a href="/jsp/contactus.jsp" id="lin">Contact Us</a></div> 
               
               <%if(session.getAttribute("dto")==null){ %>
                
                <div class="menu"> <a href="/jsp/User_login.jsp" id="lin">Login</a></div>
               
                </div> 
                
          
           <div id="menu" ><a href="/jsp/admin_login.jsp" id="admin"> <h4>ADMIN</h4></a></div>
                <%}else{ %>
               <div class="menu" ><a href="/user/history" id="admin">Purchased</a></div>
                <div class="menu" ><a href="/logout" id="admin">Logout</a></div>
                <%} %>
            </div>   
    </nav>
    
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          
          <div class="carousel-item active">
            
            <img src="../images/waterfall.gif" class="d-block w-100" alt="..." height="100%" id="first">
            <div class="carousel-caption d-none d-md-block">
              <center><button type="button" class="btn btn-warning"><a href="/jsp/Packages.jsp" id="discover">Discover More</a></button></center>

              <h1 id="heading1">ADVENTURE IS WORTHWHILE</h1>
              <p id="para1">Discover New Places With Us, Adventure Awaits...</p>
            </div>
          </div>

          <div class="carousel-item">
            <img src="../images/girl.gif" class="d-block w-100" alt="..." height="100%" id="sec">
            <div class="carousel-caption d-none d-md-block">
              <center><button type="button" class="btn btn-warning"> <a href="/jsp/Packages.jsp" id="discover">Discover More</a></button></center>

              <h1>Job Fill Your Pocket, Adventures Fill Your Soul.</h1>
              <p>Travel Is My Therapy.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="../images/fam.gif" class="d-block w-100" alt="..." height="100%" id="third">
            <div class="carousel-caption d-none d-md-block">
              <center><button type="button" class="btn btn-warning"><a href="/jsp/Packages.jsp" id="discover">Discover More</a></button></center>

              <h1>Life Is Short, And The World Is Wide...</h1>
              <p>Sandy Toes Sunkissed Nose.</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      
    </div>


    <!--services  -->
    <div id="page2">
        <div class="login-form-container">
            <!-- <i class="fas fa-time" id="form-close"></i> -->
            <form action="">
                <section class="book" id="book">
                    <h1 class="heading">
                        <span>S</span>
                        <span>e</span>
                        <span>r</span>
                        <span>v</span>
                        <span>i</span>
                        <span>c</span>
                        <span>e</span>
                        <span>s</span>
                    </h1>
        <div class="seer">
        <div class="card"><span class="material-symbols-outlined">hotel</span><h4 class="text">Affortdable Hotels</h4>
        <h6 class="text">Hotels are designed to provide a safe, clean place to stay, with compact rooms, 
            and basic furniture.</h6>
        </div> 
        <div class="card"><span class="material-symbols-outlined">Restaurant</span><h4 class="text">Food And Drinks</h4>
        <h6 class="text">The menu is crafted to become more efficient and fast to give the best experience to guests.</h6>
        </div> 
        <div class="card"><span class="material-symbols-outlined">campaign</span><h4 class="text">Safty Guide</h4>
            <h6 class="text">The success of tourism destination is being able to provide a safe and secure environment for visitors.</h6>
        </div> 
    </div>
    <div class="seer">
        <div class="card"><span class="material-symbols-outlined">globe_asia</span><h4 class="text">Around The World</h4>
            <h6 class="text">Travelling is an amazing way to learn a lot of things in life and find your happy place around world</h6>
        </div> 
        <div class="card"><span class="material-symbols-outlined">travel</span><h4 class="text">Fastest Travel</h4>
        <h6 class="text">Travel with the fastest transport thourgh road, water and airline services with comfort</h6>
        </div> 
        <div class="card"><span class="material-symbols-outlined">hiking</span><h4 class="text">Adventures</h4>
            <h6 class="text">Experience worlds best and thrilling Adventures.Life is a journey, enjoy the trip. Aim for the sky</h6>
            </div> 
        </div> 
      </div>
   
        <!-- footer -->
    <footer class="footer">
        <div class="footer-cols">
            <div>
              <div><h4>About Us</h4></div>
              <div>Our mission is to be the leading and most trustworthy <br>
                   travel mangement company that sets standard for<br>
                   professionalism. <br>
                   reliablity and transparency to customer.<br>
                   We Focus on exceeding services expectation.
            
               </div>
            </div>
          <div>
            <!-- <ul type="none"> -->
              <div><h4>Branch Location</h4></div>
              <div>Agra</div>
              <div>Dubai</div>
              <div>las vegas</div>
              <div>Paris</div>
              <div>London</div>
              <div>New york</div>
            </div>
            <!-- <ul type="none"> -->
                <div>
            <div><h4>Quick Links</h4></div>
            <div>Home</div>
            <div>Login</div>
            <div>Contact</div>
            <div>Book</div>
            <div>Packages</div>
            <div>Services</div>
                </div>
                <div>
          <!-- <ul type="none"> -->
            <div>
            <div> <h4>Follow us</h4></div>
           <div><img src="../images/fb.png" alt=""  height="50px"></div>
           <div><img src="../images/insta.png" alt="" height="50px"></div>
           <div><img src="../images/tweeter.png" alt="" height="50px"></div>
           <div><img src="../images/linkedin.png" alt="" height="50px"></div>
            
            </div>
            


</body>
</html>