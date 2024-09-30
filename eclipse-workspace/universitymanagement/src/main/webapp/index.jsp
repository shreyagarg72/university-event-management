<!DOCTYPE html>
<html>
<!-- <head>
<link rel="stylesheet" type="text/css" href="styleindex.css">
</head>
<body> 
	<div class = "container">
	<a href="login.jsp" target="_blank" class="btn">
	<span>Student</span>
</a>
	<br>
	<br>
	<a href="facultylogin.jsp" target="_blank" class="btn">
	<span>Faculty Member</span></a>
	<br>
	<br>
	<a href="outlogin.jsp" target="_blank" class="btn"><span>Other</span></a>
	<br>
	<br>
	</div>
</body> -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="styleindex.css">
<title>button</title>
</head>

<body>
	<button onclick="window.location.href = 'login.jsp';">Student</button>
	<button onclick="window.location.href = 'facultylogin.jsp';" style="-color: #f3738a; - -border: 2px; - -slant: .5em">Faculty</button>
	<button onclick="window.location.href = 'outlogin.jsp';" style="-color: #69db3a; - -slant: 40px; - -border: 8px">Others</button>
</body>

</html>