+<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="org.jsp.tour.dto.TourPackage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<style>
* {
	padding: 0;
	margin: 0;
}

body {
	box-sizing: border-box;
}

.container {
	width: 90vw;
	height: 60vh;
	margin: 0px auto;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
}

.subcontainer {
	width: 23vw;
	margin-bottom: 10px;
}

.subcontainer>.image>img {
	height: 30vh;
	width: 100%;
}

.subcontainer .para, .para1, .para2, .para3, .para4 {
	background-color: rgba(216, 197, 197, 0.456);
	width: 85%;
	padding-left: 6%;
	padding-bottom: 5%;
	margin: 0px auto;
}

.image {
	margin: 0px auto;
	width: 90%;
}

.para1 {
	/* display: flex;
    justify-content: center;
    align-items: center; */
	padding: 10px;
}

#bot {
	border-radius: 5px;
}

#loc {
	padding: -2px;
}

#back {
	background-color: black;
	color: whitesmoke;
	height: 50px;
	width: 150px;
	display: flex;
	align-items: center;
	justify-content: center;
}

#back1 {
	color: whitesmoke;
	text-decoration: none;
}

.rating {
	font-size: 15px;
}

.clicked {
	color: yellow;
}
</style>
</head>
<body>
	<button>
		<div id="back">
			<a href="/jsp/Home.jsp" id="back1">BACK</a>
		</div>
	</button>
	<br>
	<div class="container">
		<%
		List<TourPackage> list = (List<TourPackage>) request.getAttribute("list");
		%>
		<%
		for (TourPackage tour : list) {
		%>

		<div class="subcontainer">
			<div class="image">
				<%
				String base64 = Base64.encodeBase64String(tour.getImage());
				%>
				<img src="data:image/jpeg;base64,<%=base64%>" alt="Picture">
			</div>
			<div class="para">
				<span class="material-symbols-outlined"> location_on </span>PARIS
			</div>
			<div class="para1"><%=tour.getDescription()%></div>
			<div class="para2">
				<link
					href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
					rel="stylesheet" />
			</div>
			<div class="para3">INR <%=tour.getCost()%></div>
			<div class="para4">
				<button id="bot"
					style="background-color: rgb(4, 170, 109); color: black; border-color: rgb(4, 170, 109);">
					<a href="/user/book/<%=tour.getId()%>">Book Now</a>
				</button>
			</div>
		</div>

		<%
		}
		%>
	</div>
</body>
</html>