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
<title>Welcome to Admin Dashboard</title>
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
			<h3>Welcome to E-Health Care Management and Fitness System Dashboard</h3>
			<hr>
			<a href="ADoctorRegistration.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">Add New Doctor</button></a><br>
			<a href="APatientRegistration.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">Add New Patient</button></a><br>
			<a href="ADoctors.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">All Doctors</button></a><br>
			<a href="APatient.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">All Patients</button></a><br>
			<a href=""><button type="button" class="btn btn-primary btn-lg btn-block">All Appointments</button></a><br>
			<a href=""><button type="button" class="btn btn-primary btn-lg btn-block">Change Password</button></a><br>
			<hr>
			<a href="Logout.jsp"><button type="button" class="btn btn-primary btn-lg btn-block">Logout</button></a>
		
		</div>
		<br>
	</div>
</div>
</body>
</html>