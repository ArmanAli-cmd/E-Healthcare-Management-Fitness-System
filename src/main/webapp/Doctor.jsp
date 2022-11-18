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
<title>Doctors Details</title>
</head>
<body style="background-color: #9ceaea;">
<div class="container" style=" margin-left:90px;">
		<div class="home">
		  <h1 style="font-family:normal; font-size:50px;">E-Health Care Management and Fitness System</h1>
		  <p>One step towards health</p>
		</div>
		<nav class="navbar navbar-inverse" style="margin-bottom:1px;">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav">
		        <li><a href="Home.jsp">Home</a></li>
		        <li><a href="AboutUs.html">About us</a></li>
		        <li class="active"><a href="Doctor.jsp">All Docrtors</a></li>
		        <li><a href="Blog.jsp">Blog</a></li>
		        <li><a href="home.html#contact">Contact us</a></li>
		        <li><a href="FitnessForm.jsp">Fitness Calculator</a></li>
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
		      <li><div class="dropdown">
			    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">LogIn
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">
			      <li><a href="AdminLogin.html">Admin login</a></li>
			      <li><a href="UserLogin.jsp">User login</a></li>
			      <li class="divider"></li>
			      <li><a href="Register.html">Register</a></li>
			    </ul>
			  </div></li>  
		      </ul>
		    </div>
		  </div>
		</nav>
	<div class="container" style="background-color:white;">
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
<footer style="background: black; padding:40px 0; text-align: center;">

	<ul>
		<li style="display:inline-block; padding:15px;"><a href="Home.jsp">Home</a></li>
		<li style="display:inline-block; padding:15px;"><a href="AboutUs.html">About us</a></li>
		<li style="display:inline-block; padding:15px;"><a href="blog.jsp">Blog</a></li>
		<li style="display:inline-block; padding:15px;"><a href="#contact">Contact us</a></li>
	</ul>
	<div class="spcial">
		<a href="https://www.linkedin.com/in/arman-ali-64b064186" target="_blank" style="margin: 0 10px;"><img src="lnf.png"></a>    
        <a href="https://www.instagram.com/arman_ali_khan1/" target="_blank" style="margin: 0 10px;"><img src="inf.png"></a>    
        <a href="https://mobile.twitter.com/ArmanAl82265293" target="_blank" style="margin: 0 10px;"><img src="twf.png"></a>    
        <a href="https://www.facebook.com/profile.php?id=100025066657036" target="_blank" style="margin: 0 10px;"><img src="fbf.png"></a>
    </div>
  	<p style="color: darkgrey;">&copy; 2021 e-Health Care Management and Fitness System, All rights reserved.</p>
  
</footer>
		
</body>
</html>