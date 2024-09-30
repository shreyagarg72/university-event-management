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
String id = request.getParameter("id");
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

<table border="2" height ="40%">
<tr>
<td width=200>id</td>
<td width=200>ename</td>
<td width=200>edate</td>
<td width=200>etime</td>
<td width=200>venue</td>

</tr>

<%
try{
	String url="jdbc:mysql://localhost:3306/university";
	String user="Shreya";
	String pass="sg@07022003";
connection = DriverManager.getConnection(url,user,pass);
statement=connection.createStatement();
String sql ="select * from event";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("ename") %></td>
<td><%=resultSet.getString("edate") %></td>
<td><%=resultSet.getString("etime") %></td>
<td><%=resultSet.getString("venue") %></td>
<br><br>
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