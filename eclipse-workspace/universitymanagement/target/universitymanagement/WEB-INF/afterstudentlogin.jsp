<!DOCTYPE html>
<html>
<head>
<title>WELCOME TO THE UNIVERSITY</title>
<link href="styleafter.css" rel="stylesheet" type="text/css">
<style>
.boxContainer{
	margin: auto;
	margin-top:20%;
	position: relative;
	width:300px;
	height: 42px;
	padding: 0px 10px;
}
</style>
</head>
<body>
	<div class="boxContainer">
		<table class="elementsContainer">
			<tr>
				<div class="boxContainer">
		<table class="elementsContainer">
			<tr>
				<form id="search" action = "searchedevent.jsp" method = "Post">
				<div class="form-group">
					<label for = "cont">search </label>
					<input type="text" class="form-control" id="cont" name = "contact" required data-validation-required-message="Please enter your name" autocomplete="off">
					
				  </div>
				  <div>
					<button type="submit" class="btn btn-larger btn-block"/>
					search
					</button>
				  </div>
				  </form>
			</tr>
		</table>

	</div>
	<header>
		<a href="#" class="ncu">NCU</a>
		<ul>
			<li><a href="organizer.jsp" class="active">View Organizers</a></li>
			<li><a href="viewevent.jsp">View Event</a></li>
	</header>
	<section>
	</section>
</body>
</html>
