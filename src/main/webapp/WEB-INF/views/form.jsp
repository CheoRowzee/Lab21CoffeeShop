<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee House</title>
<link href="style.css" rel="stylesheet">


<style type="text/css">
h1 {
	font-size: 200%;
	color: Black;
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

form {
	color: rgb(204, 153, 102);
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif; border-text black;
	font-size: 50px;
	padding: 200px 120px;
	text-align: center;
	text-shadow: 1px -1px 0 #767676;
	text-transform: uppercase;
	text-rendering: optimizeLegibility;
	text-shadow: text-shadow: 
		-1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

}
fieldset {
	color: dark grey;
	font-family: Comic sans, Comic Sans MS, cursive;
	background:
		url("https://55mm.co/wp-content/uploads/Spilled-Coffee-Beans-Main.jpg");
}

legend {
	color: rgb(204, 153, 102);
	font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic,
		"AppleGothic", sans-serif;
	border-text: brown;
	font-size: 150px;
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
		url(https://55mm.co/wp-content/uploads/Spilled-Coffee-Beans-Main.jpg);
}

input[type=submit] {
	background-color: rgb(51, 17, 0);
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</head>
<body>


	<h1>Complete this form to become a Coffee House preferred member!</h1>


	<form action="username" onsubmit="return validate();">
		<fieldset>
			<legend>Member Information: </legend>

			First Name: <br> <input id="firstname" type="text"
				name="firstName" placeholder="first name" /><br> Last Name:<br>
			<input id="lastname" type="text" name="lastName"
				placeholder="last name" /><br> Email: <br> <input
				id="email" type="text" placeholder="e-mail address" /><br>
			Phone Number: <br> <input type="tel" placeholder="123-456-7890"
				pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required /><br> password:
			<br> <input id="pass1" type="password" placeholder="password" /><br>
			confirm password: <br> <input id="pass2" type="password"
				placeholder="confirm password" required /><br> Are you 18 years
			or older <br> <input type="radio" name="answer" value="Age">Yes<br>
			<input type="radio" name="answer2" value="underAge">No<br>
		</fieldset>
		<br>

		<legend>Coffee House Promotions </legend>
		Would you like to recieve text messages with promotional offers?<br>
		<input type="checkbox" name="yes" value="messages">Yes<br>
		<input type="checkbox" name="no" value="noMessages">No<br>
		Select your favorite Coffee House drink:<br> <select>
			<option value="Coffee">Coffee</option>
			<option value="Espresso">Expresso</option>
			<option value="Latte">Latte</option>
			<option value="Mocha">Mocha</option>
		</select> <br> <input type="submit" value="submit">
	</form>
	${users}




	<script src="script.js"></script>
</body>
</html>