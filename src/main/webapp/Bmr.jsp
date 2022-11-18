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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

int height=Integer.parseInt(ht);
int weight=Integer.parseInt(wt);
int age=Integer.parseInt(ag);

double d=height*6.25;
int h=(int)d;
int w=10*weight;
int a=5*age;

if(gender.equals("male")){
	int bmr = w+h-a+5;
	out.println(" Your BMR is "+ bmr);
}
else{
	int bmr = w+h-a-161;
	out.println("Your BMR is "+ bmr);
}


  %>    
   <h2>BMR Overview</h2>
				<p style="font-family:serif; font-size:18px;">The basal metabolic rate (BMR) is the amount of energy needed while resting in a temperate environment when the digestive system is inactive. It is the equivalent of figuring out 
how much gas an idle car consumes while parked. In such a state, energy will be used only to maintain vital organs, which include the heart, lungs, kidneys, nervous system, intestines, liver, lungs, sex organs, 
muscles, and skin. For most people, upwards of ~70% of total energy (calories) burned each day is due to upkeep. Physical activity makes up ~20% of expenditure and ~10% is used for the digestion of food, also known as thermogenesis.<br>
The BMR is measured under very restrictive circumstances while awake. An accurate BMR measurement requires that a person's sympathetic nervous system is inactive, which means the person must be completely rested. 
Basal metabolism is usually the largest component of a person's total caloric needs. The daily caloric need is the BMR value multiplied by a factor with a value between 1.2 and 1.9, depending on activity level.
<br><br>The three equations used by the calculator are listed below:</p>
				<h3>Mifflin-St Jeor Equation:</h3>
				<h4>For men:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 10W + 6.25H - 5A + 5</p>
				<h4>For women:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 10W + 6.25H - 5A - 161</p>
				<h3>Revised Harris-Benedict Equation:</h3>
				<h4>For men:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 13.397W + 4.799H - 5.677A + 88.362</p>
				<h4>For women:</h4>
				<p style="font-family:serif; font-size:18px;">BMR = 9.247W + 3.098H - 4.330A + 447.593</p>
				<h3>Katch-McArdle Formula:</h3>
				<p style="font-family:serif; font-size:18px;">BMR = 370 + 21.6(1 - F)W</p>
				<br>
				<p>where: <br> W is body weight in kg <br> H is body height in cm <br>A is age <br>F is body fat in percentage</p>
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
    
