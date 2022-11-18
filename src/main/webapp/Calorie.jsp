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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Body Fat Result</title>
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
			<h2>Result =</h2>
			<%
			String gender=request.getParameter("sex");
			
			String ht=request.getParameter("height");
			String wt=request.getParameter("weight");
			String ag=request.getParameter("age");
			String ac=request.getParameter("activity");
			
			int height=Integer.parseInt(ht);
			int weight=Integer.parseInt(wt);
			int age=Integer.parseInt(ag);
			double activity=Double.parseDouble(ac);
			
			double d=height*6.25;
			int h=(int)d;
			int w=10*weight;
			int a=5*age;
			
			if(gender.equals("male")){
				int bmr = w+h-a+5;
				double calorie = bmr*activity;
				out.println(" You need "+ calorie +"Calories");
			}
			else{
				int bmr = w+h-a-161;
				double calorie = bmr*activity;
				out.println(" You need "+ calorie +"Calories");
			}
			
			
			  %> 
<p>Calculate<a href="FitnessForm.jsp"> here </a>another Calorie</p>
  <h2>Calorie Calculator</h2>
				<p style="font-family:serif; font-size:18px;">This Calorie Calculator is based on several equations, and the results of the calculator are based on an estimated average. The Harris-Benedict
Equation was one of the earliest equations used to calculate basal metabolic rate (BMR), which is the amount of energy expended per day at rest. It was revised in 1984 to be more accurate and was used up 
until 1990, when the Mifflin-St Jeor Equation was introduced. The Mifflin-St Jeor Equation also calculates BMR, and has been shown to be more accurate than the revised Harris-Benedict Equation. 
The Katch-McArdle Formula is slightly different in that it calculates resting daily energy expenditure (RDEE), which takes lean body mass into account, something that neither the Mifflin-St Jeor nor the Harris-Benedict 
Equation do. Of these equations, the Mifflin-St Jeor Equation is considered the most accurate equation for calculating BMR with the exception that the Katch-McArdle Formula can be more accurate for people who are leaner 
and know their body fat percentage.<br><br> The three equations used by the calculator are listed below:</p>
				<h3>Mifflin-St Jeor Equation:</h3>
				<h4>For Men:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 10W + 6.25H - 5A + 5</p>
				<h4>For Women:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 10W + 6.25H - 5A - 161</p>
				<h3>Revised Harris-Benedict Equation:</h3>
				<h4>For Men:</h4>
				<p>BMR = 13.397W + 4.799H - 5.677A + 88.362</p>
				<h4>For Women:</h4>
				<p>BMR = 9.247W + 3.098H - 4.330A + 447.593</p>
				<h3>Katch-McArdle Formula:</h3>
				<p>BMR = 370 + 21.6(1 - F)W</p>
				<p>where:<br>W is body weight in kg<br>H is body height in cm<br>A is age<br>F is body fat in percentage</p>
				<h2>Related</h2>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-success">BMI Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-primary">BMR Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-danger">Body Fat Percentage Calculator</button></a>
  			</div>
  		</div>
  	</div>
  <footer style="background: black; padding:40px 0; text-align: center;">

	<ul>
		<li style="display:inline-block; padding:15px;"><a href="Home.jsp">Home</a></li>
		<li style="display:inline-block; padding:15px;"><a href="AboutUs.html">About us</a></li>
		<li style="display:inline-block; padding:15px;"><a href="Blog.jsp">Blog</a></li>
		<li style="display:inline-block; padding:15px;"><a href="home.html#contact">Contact us</a></li>
	</ul>
  	<p style="color: darkgrey;">&copy; 2021 e-Health Care Management and Fitness System, All rights reserved.</p>
  
</footer>
  
</body>
</html>