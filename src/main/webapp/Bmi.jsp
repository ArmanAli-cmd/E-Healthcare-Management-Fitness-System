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
				String ht=request.getParameter("height");
				String wt=request.getParameter("weight");
				
				double height=Double.parseDouble(ht);
				int weight=Integer.parseInt(wt);
				
				double h=height*height/10000;
				int w=weight;
				double bmi = (int)w/h;
				out.println("BMI of height "+height+"cm and weight "+weight+"kg is: "+bmi +" kg/m^2");
				%>
				<h3>BMI Introduction</h3>
				<p style="font-family:serif; font-size:18px;">BMI is a measurement of a person's leanness or corpulence based on their height and weight, and is intended to 
				quantify tissue mass. It is widely used as a general indicator of whether a person has a healthy body weight for 
				their height. Specifically, the value obtained from the calculation of BMI is used to categorize whether a person 
				is underweight, normal weight, overweight, or obese depending on what range the value falls between. These ranges 
				of BMI vary based on factors such as region and age, and are sometimes further divided into subcategories such as 
				severely underweight or very severely obese. Being overweight or underweight can have significant health effects, 
				so while BMI is an imperfect measure of healthy body weight, it is a useful indicator of whether any additional 
				testing or action is required. Refer to the table below to see the different categories based on BMI that are used 
				by the calculator.</p>
				<h2>Risks associated with being overweight</h2>
				<p style="font-family:serif; font-size:18px;">Being overweight increases the risk of a number of serious diseases and health conditions. Below is a list of said
				risks, according to the Centers for Disease Control and Prevention (CDC):<br>
				<i class="fa">&#xf111;</i>High blood pressure<br>
				<i class="fa">&#xf111;</i>Higher levels of LDL cholesterol, which is widely considered "bad cholesterol," lower levels 
				of HDL cholesterol, considered to be good cholesterol in moderation, and high levels of triglycerides<br>
				<i class="fa">&#xf111;</i>Type II diabetes<br>
				<i class="fa">&#xf111;</i>Coronary heart disease<br>
				<i class="fa">&#xf111;</i>Stroke<br>
				<i class="fa">&#xf111;</i>Gallbladder disease<br>
				<i class="fa">&#xf111;</i>Osteoarthritis, a type of joint disease caused by breakdown of joint cartilage<br>
				<i class="fa">&#xf111;</i>Sleep apnea and breathing problems<br>
				<i class="fa">&#xf111;</i>Certain cancers (endometrial, breast, colon, kidney, gallbladder, liver)<br>
				<i class="fa">&#xf111;</i>Low quality of life<br>
				<i class="fa">&#xf111;</i>Mental illnesses such as clinical depression, anxiety, and others<br>
				<i class="fa">&#xf111;</i>Body pains and difficulty with certain physical functions<br>
				<i class="fa">&#xf111;</i>Generally, an increased risk of mortality compared to those with a healthy BMI<br>As can be seen 
				from the list above, there are numerous negative, in some cases fatal, outcomes that may result from being overweight. 
				Generally, a person should try to maintain a BMI below 25 kg/m2, but ideally should consult their doctor to determine 
				whether or not they need to make any changes to their lifestyle in order to be healthier.</p>
				
				<h2>BMI Formula</h2>
				<br>
				
				<p>BMI = WEIGHT/HEIGHT^2</p>
				
				<h2>Related</h2>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-primary">Body Fat Percentage Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-danger">BMR Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-sucess">Calorie Calculator</button></a>
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
  