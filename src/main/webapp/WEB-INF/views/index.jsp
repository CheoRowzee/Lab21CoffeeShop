<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="indexstyle.css" rel="stylesheet">

</head>

<body>
	<h1>Welcome to The Coffee House</h1>
	<br>
	<br>

	<div>
		<p>Coffee House Menu</p>
		<table border="1">

			<c:forEach var="item" items="${items}">
				<tr>
					<td># ${item.itemID}</td>
					<td>${item.name}</td>
					<td>${item.description}</td>
					<td>${item.quanity}</td>
					<td>$ ${item.price}</td>
				</tr>

			</c:forEach>
		</table>
	</div>	

	<p>Would you like to be a preferred customer?</p>
	<br>
	<a href="/form">Click Here</a>
	<br>
	<p>Check us out on social Media</p>



	<fieldset>
		<br> <br>
		<image
			src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/ced02417795353.562bfa42c3e61.gif";>
		<image
			src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/3d68c717795353.562bfbca33b18.gif";>
		<image
			src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/30c30817795353.562bfbca56d27.gif";>
		<image
			src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/95325b17795353.562bfbca60354.gif";>
	</fieldset>
</body>
</html>