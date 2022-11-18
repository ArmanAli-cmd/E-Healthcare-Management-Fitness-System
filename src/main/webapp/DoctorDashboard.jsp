<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Doctor Dashboard</title>
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
		        <li class="active"><a href="DoctorDashboard.jsp">DASHBOARD</a></li>
		        <li><a href="#">Doctors</a></li>
			    <li><a href="#">MY APPOINTMENTS</a></li>
			    
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
			<h3>Welcome to E-Health Care Management and Fitness System Dashboard</h3>
			<hr>
			<button type="button" class="btn btn-primary btn-lg btn-block">All Doctors</button>
			<button type="button" class="btn btn-primary btn-lg btn-block">My Appointments</button>
			<button type="button" class="btn btn-primary btn-lg btn-block">View Patients Health Record</button>
			<button type="button" class="btn btn-primary btn-lg btn-block">My Account</button>
			<button type="button" class="btn btn-primary btn-lg btn-block">Change Password</button><hr>
			<a href="Logout.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">Logout</button></a>
		<hr>
		</div>
	</div>
</div>
</body>
</html>