<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/dashboard.css">
</head>
<h1 style="color: green">${pass}</h1>
<h1 style="color: red">${fail}</h1>
<body>
	<nav id="rr" class="h-14 bg-gradient-to-r from-purple-500 to-pink-500">

		<div id="aa">
	

			<div class="ma">
				<a href="/jsp/Admin_dashboard.jsp" id="ca">Admin Dashboard</a>
			</div>
			<div class="ma">
				<a href="/logout" id="ca">Logout</a>
			</div>

		</div>
	</nav>
	<div class="button">

		<a href="/jsp/Admin_Insert.jsp"> <input type="submit" value="Add Tour Package"
			class="Insert"></a>
	</div>
	<div class="button1">
		<a href="/admin/fetchall"> <input type="button" value="View Existing Packages"
			class="Update"></a>


	</div>
	<div class="button1">
		<a href="/jsp/update_package.jsp"> <input type="button" value="Update Package"
			class="Update"></a>


	</div>
	<div class="button2">
		<a href="/jsp/delete_package.jsp"> <input type="submit" value="Delete Package"
			class="Delete">
		</a>
	</div>

</body>
</html>