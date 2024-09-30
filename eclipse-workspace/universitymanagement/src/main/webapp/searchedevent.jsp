<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
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
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("contact");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/university";
String database = "university";
String userid = "Shreya";
String password = "sg@07022003";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>

<h1>Retriving Data</h1>
<br><br>
<table border="1" height ="40%">
<tr>
<td>id</td>
<td>ename</td>
<td>edate</td>
<td>etime</td>
<td>venue</td>

</tr>

<%
try{
	String url="jdbc:mysql://localhost:3306/university";
	String user="Shreya";
	String pass="sg@07022003";
connection = DriverManager.getConnection(url,user,pass);
statement=connection.createStatement();
String sql ="select * from event where id ="+id+"";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td width = 200><%=resultSet.getString("id") %></td>
<td width = 200><%=resultSet.getString("ename") %></td>
<td width = 200><%=resultSet.getString("edate") %></td>
<td width = 200><%=resultSet.getString("etime") %></td>
<td width = 200><%=resultSet.getString("venue") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>