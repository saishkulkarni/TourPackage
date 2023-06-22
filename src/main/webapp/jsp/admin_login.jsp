<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/adminlog.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>Document</title>
</head>
<body>
	<h1>${fail}</h1>
	<nav id="main">
		<div id="a1">

			<div id="travel_bar">
				<img src="../images/myflight.png" alt="" height="50px" id="flight">
				<h2>TRAVEL</h2>
			</div>
		</div>
		<div id="nav_content">
			<div class="menu">
				<a href="/jsp/Home.jsp" id="lin">Home</a>
			</div>
			<div class="menu">
				<a href="/jsp/contactus.jsp" id="lin">Contact Us</a>
			</div>
		</div>

		<!-- <div id="a4"><span class="material-symbols-outlined">
                person
                </span>
                <div id="cart" class="gl"></div>
                <span class="material-symbols-outlined" id="gl1">
                    shopping_cart
                    </span></div>  -->
	</nav>
	<div class="login-form-container">
		<!-- <i class="fas fa-time" id="form-close"></i> -->
		<form action="/admin/login" method="post">
			<div class="main">
				<h3>Login</h3>
				<input type="email" class="box" placeholder="Email" name="email">
				<input type="password" class="box" placeholder="Password"
					name="password">
				<button type="submit" id="btn">Login</button>

				<!-- <input type="checkbox" id="remember"> -->
				<!-- <label for="remember">Remember me</label> -->
				<!-- <p>Forgot password?<a href="#">Click here</a></p> -->
				<!-- <p>Don't have an account?<a href="#">Register now</a></p>  -->
			</div>
		</form>
	</div>


</body>
</html>