<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
h1 {
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif;
	color: white;
	background:;
	font-size: 92px;
	padding: 80px 50px;
	text-align: center;
	text-shadow: 1px -1px 0 #767676;
	text-transform: uppercase;
	text-rendering: optimizeLegibility;
	text-shadow: text-shadow: 
		-1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

body {
	background:
		url("http://2.cdn.site.mobi/c/m.westportcoffeehouse.com/949kd60/db94257304c2494a5d9c5e0ba75aff6e/0/1920");
	;
}

p {
	font-size: 20%;
	color: white;
	background:;;
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif;
	border-text: brown;
	font-size: 50px;
	padding: 80px 50px;
	text-align: center;
	text-shadow: 1px -1px 0 #767676;
	text-transform: uppercase;
	text-rendering: optimizeLegibility;
	text-shadow: text-shadow: 
		-1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

a {
	font-size: 200%;
	color: rgb(0, 255, 0);
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif;
	border-text: brown;
	font-size: 50px;
	padding: 80px 50px;
	text-align: center;
	text-shadow: 1px -1px 0 #767676;
	text-transform: uppercase;
	text-rendering: optimizeLegibility;
	text-shadow: text-shadow: 
		-1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

legend {
	color: white;
}

div {
	size: 50%;
}

table {
	color: white;
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif;
	width: 100%;
	background:
		url("https://www.newhollandcoffee.com/wp-content/themes/new-holland-coffee-co/img/coffee-bean-piles.png");
	font-size: x-large;
	height: 100px;
}
</style>
</head>

<body>
	<h1>Welcome to The Coffee House</h1>
	<br>
	<br>

	<div>
		<p>Coffee House Menu</p>
		<table border=1px;>

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