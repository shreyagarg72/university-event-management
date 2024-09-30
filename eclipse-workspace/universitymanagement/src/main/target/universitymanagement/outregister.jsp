<html>
<body>
<head>
<meta charset="UTF-8">
<title>UNIVERSITY EVENT MANAGEMENT</title>
<link href = "style.css" rel = "stylesheet" type = "text/css">
</head>
<body>
<div class = "main">
<div class = "register">
<h2>Register Here</h2>
<form id = "register" method = "post" action = "outsiderdetails">
<label for="fn"> First Name:</label>
<br> 
<input type = "text"  name ="fname"
id = "fn" placeholder = "Enter your First Name">
<br> <br>
<label for="ln"> Last Name: </label>
<br>
<input type = "text"  name ="lname"
id = "ln" placeholder = "Enter your Last Name">
<br><br>
<label>Age:</label>
<br>
<input type = "text"  name ="age"
id = "age" placeholder = "How old are you">
<br><br>
<label> Email: </label>
<br>
<input type = "email"  name ="email"
id = "email" placeholder = "Enter your valid email">
<br> <br>
<label> Password: </label>
<br>
<input type = "text"  name ="password"
id = "password" placeholder = "Enter your password">
<br><br>
<label>Gender:</label>> 
<input type="radio" name="gender" value="m" checked />Male
    <input type="radio" name="gender" value="f" />Female<br /><br />
<input type="submit" value="Submit"> <input type="hidden"
			value="Client has submitted  basic details!!" name="hiddenforms">
</form>
</div>
</div>


</body>

</body>
</html>
