<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coffee House</title>


<link href="style.css" rel="stylesheet">
</head>
<body>


	<h1>Complete this form to become a Coffee House preferred member!</h1>


	<form action="userIn" onsubmit="return aValidate();">
		<fieldset>
			<legend>Member Information: </legend>

			First Name: <br> 
			
			<input id="firstname" type="text"
				name="firstName" placeholder="first name" /><br>  Last Name:<br>
			<input id="lastname" type="text" name="lastName"
				placeholder="last name" /><br> Email: <br> <input
				id="email" type="text" name = "email" placeholder="e-mail address" /><br>
			Phone Number: <br> <input type="tel" name= "phone" placeholder="123-456-7890"
				pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required /><br> password:
			<br> <input id="pass1" type="password" name= "password" placeholder="password" /><br>
			confirm password: <br> <input id="pass2" type="password"
				placeholder="confirm password" required /><br> 
				<input type="submit" value="Submit Form">
				
				<form= action="delete" ><br>
				<input type= "hidden" name = "firstname" value="${user}">
				<input type="submit" value= "Delete Information">
				</form> 
		
		</form>
		<form action="username">
		<legend>Coffee House Promotions </legend>
		Would you like to recieve text messages with promotional offers?<br>
		<input type="checkbox" name="yes" value="messages">Yes<br>
		<input type="checkbox" name="no" value="noMessages">No<br>
		Select your favorite Coffee House drink:<br> <select>
			<option value="Coffee">Coffee</option>
			<option value="Espresso">Expresso</option>
			<option value="Latte">Latte</option>
			<option value="Mocha">Mocha</option> 
		</select> <br> What's Your birthday?<br>
	<input type="text" name="birthdate" pattern= "[0-9]2-[0-9]2-[0-9]4" place holder="01-01-2018"/><br>
	<input type="submit" value="Done"/>
	
	</form>
</fieldset>
${users}

	<script src="script.js"></script>
</body>
</html>