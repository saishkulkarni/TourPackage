<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/update.css">
</head>
<body>
	<div id="main">
		<form class="form" action="/admin/delete" method="post">
			<span class="title">Delete</span> <label for="id" class="label">Package
				Id</label> <input type="number" id="id" name="id" required="required"
				class="input">
			<button type="submit" class="submit">Delete</button>
			<a href="/jsp/Admin_dashboard.jsp" id="b"><button type="button">Back</button></a>
		</form>
	</div>


</body>
</html>