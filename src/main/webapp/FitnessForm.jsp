<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health and Fitness Calculator</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #9ceaea;">
<div class="container" style="margin-left:90px;">
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
		        <li><a href="Doctor.jsp">All Docrtors</a></li>
		        <li><a href="Blog.jsp">Blog</a></li>
		        <li><a href="home.html#contact">Contact us</a></li>
		        <li class="active"><a href="FitnessForm.jsp">Fitness Calculator</a></li>
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
		<div class="container">
		<div class="row" style="margin-left:-15px; margin-right:15px; background-color:#FFFFFF;">
			<div class="col-sm-6">
				<h2>BMI Calculator</h2>
				<form method="post" action="Bmi.jsp">
				<pre>
<label for="age">Age:</label> 	  <input type="text" name="age" placeholder="Enter age">  (Ages: 2 - 120)

<label for="sex">Gender:</label>   <input type="radio" name="sex" value="Male"> <label for="sex">Male</label>    <input type="radio" name="sex" value="Female"> <label for="sex">Female</label>

<label for="height">Height:</label>   <input type="text" name="height" placeholder="Enter height in cm" required>    <label for="weight">Weight:</label> <input type="text" name="weight" placeholder="Enter weight in kg" required>

	              <input type="submit" value="Calculate BMI">
				</pre>
				</form>
			</div>
			<div class="col-sm-6">
				<h2>BMR Calculator</h2>
				<form method="post" action="Bmr.jsp">
					<pre>
<label for="age">Age:</label> 	  <input type="text" name="age" placeholder="Enter age" required>  (Ages: 2 - 120)

<label for="sex">Gender:</label>   <input type="radio" name="sex" value="male"> <label for="sex">Male</label>    <input type="radio" name="sex" value="female"> <label for="sex">Female</label>

<label for="height">Height:</label>   <input type="text" name="height" placeholder="Enter height in cm" required>    <label for="weight">Weight:</label> <input type="text" name="weight" placeholder="Enter weight in kg" required>

	              <input type="submit" value="Calculate BMR">
				</pre>
				</form>
			</div>
		</div>
		<div class="row" style="margin-left:-15px; margin-right:15px; background-color:#FFFFFF;">
			<div class="col-sm-6">
				<h2>Calorie Calculator</h2>
				<form method="post" action="Calorie.jsp">
					<pre>
<label for="age">Age:</label> 	  <input type="text" name="age" placeholder="Enter age">  (Ages: 2 - 120)

<label for="sex">Gender:</label>   <input type="radio" name="sex" value="male"> <label for="sex">Male</label>    <input type="radio" name="sex" value="female"> <label for="sex">Female</label>

<label for="height">Height:</label>   <input type="text" name="height" placeholder="Enter height in cm" required>    <label for="weight">Weight:</label> <input type="text" name="weight" placeholder="Enter weight in kg" required>

<label for="activity">Activity:</label>  <select name="activity" >
						                <option value="1">Basal Metabolic Rate (BMR)</option>
						                <option value="1.2">Sedntary: little or no exercise</option>
						                <option value="1.375">Light: exercise 1-3 times/week</option>
						                <option value="1.55" selected>Moderate: exercise 4-5 times/week</option>
						                <option value="1.725">Very Active: intense exercise 6-7 times/week</option>
						                <option value="1.9">Extra Active: very intense exercise daily, or physical job</option>
						            </select>

	              <input type="submit" value="Calculate Calorie">
				</pre>
				</form>
			</div>
			<div class="col-sm-6">
				<h2>Body Fat Calculator</h2>
				<form method="post" action="BodyFat.jsp">
					<pre>
<label for="age">Age:</label> 	  <input type="text" name="age" placeholder="Enter age">  (Ages: 2 - 120)

<label for="sex">Gender:</label>   <input type="radio" name="sex" value="male"> <label for="sex">Male</label>    <input type="radio" name="sex" value="female"> <label for="sex">Female</label>

<label for="height">Height:</label>   <input type="text" name="height" placeholder="Enter height in cm" required>    <label for="weight">Weight:</label> <input type="text" name="weight" placeholder="Enter weight in kg" required>

<label for="neck">Neck:</label>     <input type="text" name="neck" placeholder="Enter Neck in cm" required>    <label for="waist">Waist:</label>  <input type="text" name="waist" placeholder="Enter waist in cm" required>

	              <input type="submit" value="Calculate Body Fat">
				</pre>
				</form>
			</div>
		</div>
		</div>

</div>
<footer style="background: black; padding:40px 0; text-align: center;">

	<ul>
		<li style="display:inline-block; padding:15px;"><a href="Home.jsp">Home</a></li>
		<li style="display:inline-block; padding:15px;"><a href="AboutUs.html">About us</a></li>
		<li style="display:inline-block; padding:15px;"><a href="blog.jsp">Blog</a></li>
		<li style="display:inline-block; padding:15px;"><a href="#contact">Contact us</a></li>
	</ul>
  	<p style="color: darkgrey;">&copy; 2021 e-Health Care Management and Fitness System, All rights reserved.</p>
  
</footer>

</body>
</html>