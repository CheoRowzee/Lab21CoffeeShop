/**
 * 
 */

 function validate()  {
	 var firstName = document.getElementById("firstname").value;
	 var lastName = document.getElementById("lastname").value;
	 var pass1 = document.getElementById("pass1").value;
	 var pass2 = document.getElementById("pass2").value;
	 var answerAge = document.getElemetById("yes").value;
	 
	 if(firstName.length <= 2)  {
		 alert("Please enter longer name! ");
		 document.getElementById("firstname").focus();
		 return false;
	 }else if (lastName.length <= 2)  {
		 alert("Please enter a longer name! ");  
		 document.getElementById("lastname").focus();
		 return false; }
//	 }else if(pass1 != pass2)  {
//		 alert("Passwords don't match!")
//		 pass1 = document.getElementById("pass1").focus();
//		 pass1 = document.getElementById("pass2").focus();
//		 return false;	 	 
//	 }else if(!answerPromo === "yes") {
//		 alert("You must be 18 or older to continue...")
//		 
//	 }
	 
//	 else   {
//		 return true;
//	 }
	 
	
	 
	 function validatePass()  {
		 var pass1 = document.getElementById("pass1").value;
		 var pass2 = document.getElementtById("pass2").value;
		 
		 if(pass1 != pass2)  {
			 alert("Passwords don't match!")
			 pass1 = document.getElementById("pass1").focus();
			 pass1 = document.getElementById("pass2").focus();
			 }
		 
		 return false;
		 
		 
	 }
 }