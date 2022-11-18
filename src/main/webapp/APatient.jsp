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
<title>All Patient Records</title>
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
		        <li class="active"><a href="AdminDashboard.jsp">DASHBOARD</a></li>
		        <li><div class="dropdown">
		        <button type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">
		        <span class="caret"></span>ADD NEW</button>
		         <ul class="dropdown-menu">
			      <li><a href="ADoctorRegistration.jsp">ADD DOCTOR</a></li>
			      <li class="divider"></li>
			      <li><a href="APatientRegistration.jsp">ADD PATIENT</a></li>
			    </ul>
		        </div></li>
		        <li><div class="dropdown">
		        <button type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">
		        <span class="caret"></span>REPORTS</button>
		         <ul class="dropdown-menu">
			      <li><a href="ADoctorReports.jsp">Doctor Reports</a></li>
			      <li class="divider"></li>
			      <li><a href="APatientReport.jsp">Patient Reports</a></li>
			    </ul>
		        </div></li>
		      </ul>
		      <form class="navbar-form navbar-right" role="search">
		        <div class="form-group input-group">
		          <input type="text" class="form-control" placeholder="Search..">
		          <span class="input-group-btn">
		            <button class="btn btn-default" type="button">
		              <span class="glyphicon glyphicon-search"></span>
		            </button>
		          </span>        
		        </div>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		      <li><a href="Logout.jsp"><%= session.getAttribute("username") %></a></li>
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
<h1>All Patients Details are here</h1>

<table class="table table-hover">
<thead>
<tr>
<th>Patients name</th>
<th>Age</th>
<th>Blood Group</th>
<th>Martial Status</th>
<th>Mobile</th>
<th>Email</th>
<th>City</th>
<th>Guardian</th>
<th>Relation</th>

</tr>
</thead>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select name, age, blood_group, martial, mobile, email, city, p_name, relation from patient";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tbody>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("blood_group") %></td>
<td><%=resultSet.getString("martial") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("p_name") %></td>
<td><%=resultSet.getString("relation") %></td>

</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>
</table>
			
		</div>
	</div>
</div>

</body>
</html>