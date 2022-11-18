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

int height=Integer.parseInt(ht);
int weight=Integer.parseInt(wt);
int age=Integer.parseInt(ag);

double h=height*height/10000;
double w=weight;
double bmi = w/h;
double a= 0.23*age;

if(gender.equals("male")){
	double fat = 1.2*bmi+a-16.2;
	out.println("You Body Fat Percentage is: "+ fat +"%");
}
else{
	double fat = 1.2*bmi+a-5.4;
	out.println(" You Body Fat Percentage is: "+ fat +"%");
}


  %>
  <p>Check<a href="FitnessForm.jsp"> here </a>another body fat percentage</p>
  <h2>Body Fat Calculator</h2>
				<p style="font-family:serif; font-size:18px;">The scientific term for body fat is "adipose tissue." Adipose tissue 
				serves a number of important functions. Its primary purpose is to store lipids from which the body creates energy. In
				addition, it secretes a number of important hormones, and provides the body with some cushioning as well as insulation.<br>
				Body fat includes essential body fat and storage body fat. Essential body fat is a base level of fat that is found in
				most parts of the body. It is necessary fat that maintains life and reproductive functions. The amount of essential
				fat differs between men and women, and is typically around 2-5% in men, and 10-13% in women. The healthy range of body
				fat for men is typically defined as 8-19%, while the healthy range for women is 21-33%. While having excess body fat
				can have many detrimental effects on a person's health, insufficient body fat can have negative health effects of its
				own, and maintaining a body fat percentage below, or even at the essential body fat percentage range is a topic that
				should be discussed with a medical professional.<br>Storage fat is fat that accumulates in adipose tissue, be it 
				subcutaneous fat (deep under the dermis and wrapped around vital organs) or visceral fat (fat located inside the abdominal
				cavity, between organs), and references to body fat typically refer to this type of fat. While some storage fat is ideal,
				excess amounts of storage fat can have serious negative health implications.<br>Excess body fat leads to the condition
				of being overweight and eventually to obesity given that insufficient measures are taken to curb increasing body fat. 
				Note that being overweight does not necessarily indicate an excess of body fat. A person's body weight is comprised of
				multiple factors including (but not limited to) body fat, muscle, bone density, and water content. Thus, highly 
				muscular people are often classified as overweight.<br>The rate at which body fat accumulates is different from person
				to person and is dependent on many factors including genetic factors as well as behavioral factors such as lack of 
				exercise and excessive food intake. Due to varying factors, it can be more difficult for certain people to reduce 
				body fat stored in the abdominal region. However, managing diet and exercise has been shown to reduce stored fat. 
				Note that both women and men store body fat differently and that this can change over time. After the age of 40
				(or after menopause in some cases for women), reduced sexual hormones can lead to excess body fat around the stomach
				in men, or around the buttocks and thighs of women.</p>
				<h2>Potential Complications of Excess Body Fat</h2>
				<p style="font-family:serif; font-size:18px;">The World Health Organization (WHO) classifies obesity as one of the leading
				preventable causes of death worldwide that is estimated to claim 111,909 to 365,000 deaths per year in the U.S. This has 
				been a growing cause for concern because 36.5% of U.S. adults are defined as obese according to the Centers for Disease 
				Control and Prevention.<br>Obesity is associated with a reduction in quality of life, poorer mental health outcomes, 
				obstructive sleep apnea, as well as multiple leading causes of death worldwide such as cardiovascular disease, stroke, certain 
				cancers and diabetes. All of these potential complications have the ability to reduce a person's life expectancy, and as such, 
				obesity is a medical condition that is studied by many researchers.</p>
				<h2>Measuring Body Fat Percentage</h2>
				<h3>BMI Method:</h3>
				<p style="font-family:serif; font-size:18px;">Another method for calculating an estimate of body fat percentage uses BMI. Refer to the BMI Calculator to obtain an estimate of 
				BMI for use with the BMI method, as well as further detail on how BMI is calculated, its implications, and its limitations. Briefly, 
				the estimation of BMI involves the use of formulas that require the measurement of a person's height and weight. Given BMI, 
				the following formulas can be used to estimate a person's body fat percentage.</p>
				<h4>Body fat percentage (BFP) formula for adult males:</h4>
				<p>BFP = 1.20 × BMI + 0.23 × Age - 16.2</p>
				<h4>Body fat percentage (BFP) formula for adult females:</h4>
				<p>BFP = 1.20 × BMI + 0.23 × Age - 5.4</p>
				<h4>Body fat percentage (BFP) formula for boys:</h4>
				<p>BFP = 1.51 × BMI - 0.70 × Age - 2.2</p>
				<h4>Body fat percentage (BFP) formula for girls:</h4>
				<p>BFP = 1.20 × BMI + 0.23 × Age + 1.4</p>
				<h2>Related</h2>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-primary">BMI Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-success">BMR Calculator</button></a>
				<a href="FitnessForm.jsp"><button type="button" class="btn btn-danger">Calorie Calculator</button></a>
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