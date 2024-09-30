<!DOCTYPE html>
<html>
<head>
<title>WELCOME TO THE SPORTS EVENT OF 2023</title>
<link href="styleafter.css" rel="stylesheet" type="text/css">
<style>
body {
	background: linear-gradient(#2b1055, #7397de);
	/* Change the background to a gradient */
	margin: 0;
	font-family: 'Arial', sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.boxContainer {
	margin-top: 2%;
	width: 300px;
	padding: 0px 10px;
}

.slogan {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

input {
	width: 100%;
	padding: 15px;
	border: none;
	border-radius: 5px;
	outline: none;
	background-color: rgba(255, 255, 255, 0.8);
	/* Semi-transparent white background */
	color: #333;
}

button {
	width: 100%;
	padding: 15px;
	background-color: #e44d26;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #c4311a;
}
</style>
</head>
<body>
	<div class="boxContainer">
		<p class="slogan">Experience the thrill of sports!</p>
		<form id="search" action="searchedevent.jsp" method="Post">
			<div class="form-group">
				<input type="text" class="form-control" id="cont" name="contact"
					required data-validation-required-message="Please enter your name"
					placeholder="Search" autocomplete="off">
			</div>
			<div>
				<button type="submit" class="btn btn-larger btn-block">Search</button>
			</div>
		</form>
	</div>
	<header>
		<a href="#" class="ncu">NCU</a>
		<ul>
			<li><a href="organizer.jsp" class="active">View Organizers</a></li>
			<li><a href="viewevent.jsp">View Event</a></li>
	</header>
	<section></section>
</body>
</html>
