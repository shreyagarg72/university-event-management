<!DOCTYPE html>
<html>
<head>
<link href="styleafter.css" rel="stylesheet" type="text/css">
<style>
h1{
text-align: center;
color:#fff;
}
table{
text-align: center;
color: #fff;
margin-left: auto;
margin-right: auto;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
 
<body>
<h2> UPDATE SPORTS EVENT</h2><br><br>
<form method="post" action="UpdateEvent">
  <fieldset>
    <legend>Event Details</legend><br><br>
    Event ID <input type="text" name="id" /><br /><br />
    Name: <input type="text" name="ename" /><br /><br />
    Date: <input type="date" placeholder= "Date" name = "edate" onfocus = "(this.type='date')"><br><br>
    Time:<input type="text" placeholder= "Time" name = "etime"><br><br>
    Venue:<input type="text" name = "venue"><br><br>
  </fieldset>
 
  <input type="submit" value="Submit"> <input type="hidden"
			value="Client has submitted  basic details!!" name="hiddenforms">
</form>
</body>
</html>