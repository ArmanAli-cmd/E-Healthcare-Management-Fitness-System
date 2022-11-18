<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Patient Dashboard</title>
</head>
<body style="background-color: #9ceaea;">
<div class="container">
		<div class="home">
		  <h1 style="font-family:normal; font-size:50px;">E-Health Care Management and Fitness System</h1>
		  <p>One step towards health</p>
		</div>
		<nav class="navbar navbar-inverse" style="margin-bottom:1px;">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav">
		        <li><a href="PatientDashboard.jsp">DASHBOARD</a></li>
		        <li class="active"><a href="PDoctors.jsp">DOCTORS</a></li>
			   	<li><a href="#">FITNESS</a></li>
			    <li><a href="#">APPOINTMENT</a></li>
			    
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		      <li><a href="#">MY ACCOUNT</a></li>
		      <li><a href="#">CHANGE PASSWORD</a></li>
		      <li>
			   <a href="Logout.jsp"> <button type="button" class="btn btn-default">LOGOUT</button></a>
			  </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		<div class="container">
			<div class="row" style="background-color:white; margin-left:-15px; margin-right:15px;">
<%
String id = request.getParameter("d_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "healthcare";
String userid = "root";
String password = "Arman@786";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1>All Doctors</h1>
<table class="table table-bordered">
<tr>
<th>Doctors name</th>
<th>Specialization</th>
<th>Fees</th>
<th>View Details</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select name, specialist, fees, email from doctor";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("specialist") %></td>
<td><%=resultSet.getString("fees") %></td>
<td><a href="DoctorDetails.jsp">show</a></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>   
		</div>	
	</div>
	
</div>

</body>
</html>