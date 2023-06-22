<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="org.jsp.tour.dto.TourPackage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Student</title>
<style>
@
keyframes gradient { 0% {
	background-position: 0% 50%;
}

50




%
{
background-position




:




100


%
50


%;
}
100




%
{
background-position




:




0


%
50


%;
}
}
body {
	font-family: Arial, sans-serif;
	height: 100vh;
	margin: 0;
	background-size: 200% 200%;
	background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 55%, #fad0c4 100%);
	animation: gradient 10s ease infinite;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 20px 0;
	animation: slideIn 1s ease-in-out;
}

th {
	background-color: #333;
	color: white;
	padding: 10px;
	text-align: center;
	animation: colorChange 3s infinite;
}

tr:nth-child(even) {
	background-color: #ddd;
}

tr:hover {
	background-color: #bcbcbc;
}

a {
	color: #333;
	text-decoration: none;
}

button {
	padding: 10px 20px;
	background-color: #5cb85c;
	border: none;
	color: white;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #4cae4c;
}

/* animation */
@
keyframes slideIn { 0% {
	transform: translateX(-100%);
}

100




%
{
transform




:




translateX


(




0




)


;
}
}
@
keyframes colorChange { 0% {
	background-color: #333;
}
50




%
{
background-color




:




#555


;
}
100




%
{
background-color




:




#333


;
}
}
</style>
</head>
<body>
	<%
	List<TourPackage> list = (List<TourPackage>) request.getAttribute("list");
	%>

	<table border="1">
		<tr>
			<th>Id</th>
			<th>Package Name</th>
			<th>Package Description</th>
			<th>Cost</th>
			<th>Picture</th>
		</tr>
		<%
		for (TourPackage insert_dto : list) {
		%>
		<tr>
			<th><%=insert_dto.getId()%></th>
			<th><%=insert_dto.getPackageName()%></th>
			<th><%=insert_dto.getDescription()%></th>
			<th><%=insert_dto.getCost()%></th>
			<th>
				<%
				String base64 = Base64.encodeBase64String(insert_dto.getImage());
				%> <img src="data:image/jpeg;base64,<%=base64%>" alt="Picture"
				style="width: 100px; height: auto;">
			</th>
		</tr>
		<%
		}
		%>

	</table>
	<a href="/jsp/Home.jsp"><button type="button">Back</button></a>
</body>
</html>
