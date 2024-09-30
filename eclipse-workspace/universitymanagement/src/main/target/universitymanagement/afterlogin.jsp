<!DOCTYPE html>
<html>
<head>
<title>WELCOME TO THE UNIVERSITY</title>
<link href="styleafter.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="boxContainer">
		<table class="elementsContainer">
			<tr>
				<div class="boxContainer">
		<table class="elementsContainer">
			<tr>
				<form id="search" action = "SearchEvent" method = "Post">
				<div class="form-group">
					<label for = "cont"> search  </label>
					<input type="tel" class="form-control" id="cont" name = "contact" required data-validation-required-message="Please enter your phone number." autocomplete="off">
					<p class="help-block text-danger"></p>
				  </div>
				  <div class="mrgn-30-top">
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
			<li><a href="eventcreate.jsp">Create</a></li>
			<li><a href="viewevent.jsp">View Event</a></li>
			<li><a href="updateevent.jsp">Update</a></li>
	</header>
	<section>
		<img src="stars.png" id="stars">
	</section>
</body>
</html>
