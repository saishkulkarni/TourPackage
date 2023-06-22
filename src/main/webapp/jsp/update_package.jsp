<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/	css/update.css">
</head>
<body>
	<div id="main">
		<form class="form" action="/admin/update" method="post">
			<span class="title">Update</span> <label for="id" class="label">Package
				Id</label> <input type="number" id="id" name="id" required="required"
				class="input"> <label for="package" class="label">Package
				Name</label> <input type="text" id="package" name="packageName"
				required="required" class="input"> <label for="number"
				class="label">Package Cost</label> <input type="number"
				id="password" name="cost" required="required" class="input">
			<label for="number" class="label">Package Description</label> <input
				type="text" id="password" name="description" required="required"
				class="input">
			<button type="submit" class="submit">Submit</button>
			<a href="/jsp/Admin_dashboard.jsp" id="b"><button type="button">Back</button></a>
		</form>
	</div>


</body>
</html>