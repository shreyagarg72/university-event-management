<html>
<body>
	<h2>LOGIN</h2>
	<form method="post" action="outloginpass">
		<label for="fname">User name:</label><br> <input type="text"
			id="fname" name="username"><br> <label for="lname">Password:</label><br>
		<input type="password" id="lname" name="password"><br> <br>
		<input type="submit" value="Submit"> <input type="hidden"
			value="Client has submitted  basic details!!" name="hiddenforms">
	</form>
	<a href= "outregister.jsp">New user!! Click Here to register</a>
	<br>
	<a href ="changepass.jsp">Click here to update password</a>
</body>
</html>