<html>
<head>
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
body{
     color:#fff;
     text-align:center;
}

a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>
</head>
<body style="background-color:#2b1055;">
	<h2 style="text-align:center;">LOGIN</h2>
	<form method="post" action="faclogin">
		<label for="fname">User name:</label><br> <input type="text"
			id="fname" name="username"><br> <label for="lname">Password:</label><br>
		<input type="password" id="lname" name="password"><br> <br>
		<input type="submit" value="Submit"> <input type="hidden"
			value="Client has submitted  basic details!!" name="hiddenforms">
	</form>
	<a href= "facregister.jsp">New user!! Click Here to register</a>
</body>
</html>