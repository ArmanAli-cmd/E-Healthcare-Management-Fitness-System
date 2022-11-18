<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>e-Healthcare Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body style="background-color: #9ceaea;">
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<div class="container">
		<div class="home">
		  <h1 style="font-family:normal; font-size:50px;">E-Health Care Management and Fitness System</h1>
		  <p>One step towards health</p>
		</div>
		<nav class="navbar navbar-inverse" style="margin-bottom:1px;">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="Home.jsp">Home</a></li>
		        <li><a href="AboutUs.html">About us</a></li>
		        <li><a href="Doctor.jsp">All Docrtors</a></li>
		        <li><a href="Blog.jsp">Blog</a></li>
		        <li><a href="#contact">Contact us</a></li>
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
		<div class="container text-center">    
  			<div class="row" style = "margin-left: -15px; margin-right: 15px;">
        		<div class="col-sm-9" style="padding-left: 0px; padding-right: 1px;">
          			<div class="panel panel-default text-left">
	            		<div class="panel-body">
	                		<img class="img-responsive" alt="Chania" width="804" src="d3.jpg">
	            		</div>
	           		 	<h2>About e-Health Care Management and Fitness System</h2>
			            <p>This E health care management system is a web-based application that assists in management of staffs, doctors and 
			  			patients in easy, comfortable and effective service. Here, the concept of data mining plays vital role to develop 
			            an effective health care management system.Physical activity is a protective factor by directly promoting health
			            and by preventing from physical inactivity as a risk factor.<br>The proposed application aims to create a friendly working environment 
			            for any health care centers and to overcome the drawbacks in existing system of health care management. This system is 
			            very reliable and flexible from all aspects, so new features and modules can be easily integrated into the system in future.<br>
			            Exercising regularly, every day if possible, is the single most important thing you can do for your health. In the short term,
			            exercise helps to control appetite, boost mood, and improve sleep. In the long term, it reduces the risk of heart disease,
			            stroke, diabetes, dementia, depression, and many cancers.</p>
          			</div>
 				</div>
				<div class="col-sm-3 well">
					<h4><small>RECENT POSTS</small></h4>
				    <hr>
				    <h3>Anxiety</h3>
				    <h5><span class="glyphicon glyphicon-time"></span>Post by Arman Ali, OCT 31, 2021.</h5>
				    <div class="card" style="width:250px">
		    				<img class="card-img-top" src="anxiety.png" alt="Card image" style="width:265px;">
						    <div class="card-body">
						      <h4 class="card-title">What is Anxiety?</h4>
						      <p class="card-text">Anxiety is your body natural response to stress. It is a feeling of fear or apprehension 
						      about what is to come. The first day of school, going to a job interview, or giving a speech may cause most people
						       to feel fearful and nervous. But if your feelings of </p>
						      <a href="Anxiety.html" class="btn btn-primary">Read More</a>
						    </div>
		  				</div>
				     <hr>
				</div>
			</div>
		</div>
		<div class="container text-center">
		<div class="row" style="background: white; margin-left:-15px; margin-right:15px;">
			<h2>Top Doctors &#38; Trainers</h2>
			<p>Here Our Some Top Doctors and Trainers</p>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="d0.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Dr. Gerty Cori</h4>
					<p class="card-text">Dentist specialist</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="t1.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">David Kirsch</h4>
					<p class="card-text">fitness trainer</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="t2.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Justin Gelband</h4>
					<p class="card-text">Full body trainer</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="d2.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Dr. Edward Jenner</h4>
					<p class="card-text">General practitioner</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
		</div>
		<div class="row" style="background:white; margin-right:15px; margin-left:-15px;">
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="y1.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Deepika Mehta</h4>
					<p class="card-text">Wisdom of Yoga</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="d1.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Dr Zabed Ahmad</h4>
					<p class="card-text">Liver Transplant &#38; Hepatic Surgery</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
					
					<div class="modal fade" id="myModal" role="dialog">
					    <div class="modal-dialog">
					      <div class="modal-content">
					        <div class="modal-body" style="text-align:center;">
					          <h3>Take Healthy Be Healthy</h3>
					          <p>To See Doctors Profile Login First...<br>
					          Click <a href="UserLogin.jsp">Here</a> for Login<br> Or <br> New User ? Just <a href="Register.html">Sign In</a></p>
					        </div>
					        <div class="modal-footer">
					          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        </div>
					      </div>
					    </div>
					  </div>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="y0.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Charles Matkin</h4>
					<p class="card-text">Hatha Yoga</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
			<div class="col-xs-3" style="width:280px">
				<img class="card-img-top" alt="Card image" src="t4.png" style="width:100%">
				<div class="card-body">
					<h4 class="card-title">Shaun Stafford</h4>
					<p class="card-text">Energetic Coach</p>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</button>
				</div>
			</div>
		</div>
		</div>

	<div class="container text-center">
			<section id="blog">
				<div class="row" style="background: white; margin-left:-15px; margin-right:15px;">
			  		<h2>Our Latest Blog</h2>
			  		<hr style="width: 20%; height:1px; text-align:center; color:gray; background-color:gray;">
			  		<p>Stay update with us</p>
			  		<div class="col-sm-4">
				  		<div class="card" style="width:310px">
		    				<img class="card-img-top" src="blog01.png" alt="Card image" style="width:100%">
						    <div class="card-body">
						      <h4 class="card-title">PHYSIOTHERAPY &#38; STRETCHING</h4>
						      <p class="card-text"> you will work your major upper-body muscles either directly or indirectly twice a week, and it is this big increase in training volume that will stimulate these muscles into growing bigger quickly.</p>
						      <a href="Physiotherapy.html" target="_blank" class="btn btn-primary">Read More</a>
						    </div>
		  				</div>
			    	</div>
			    	<div class="col-sm-4">
				  		<div class="card" style="width:370px">
						    <img class="card-img-top" src="blog2.jpg" alt="Card image" style="width:100%">
						    <div class="card-body">
						      <h4 class="card-title">Mental health </h4>
						      <p class="card-text">Aerobic exercises, including jogging, swimming, cycling, walking, gardening, and dancing, have been proved to reduce anxiety and depression. Exercise improves mental health by reducing anxiety, depression, and negative mood and by improving self-esteem and cognitive function</p>
						      <a href="MentalHealth.html" target="_blank" class="btn btn-primary">Read More</a>
						    </div>
						</div>
			    	</div>
			    	<div class="col-sm-4">
				  		<div class="card" style="width:360px">
						    <img class="card-img-top" src="blog.png" alt="Card image" style="width:100%">
						    <div class="card-body">
						      <h4 class="card-title">Full Body Exercise</h4>
						      <p class="card-text">If you are just getting started exercising, a full-body workout for beginners that keeps it simple might just be a solid way into an exercise program. a full-body workout for beginners that hits all of your major muscles, includes just six exercises, and keeps the moves straight-forward and efficient.</p>
						      <a href="FullBodyExercise.html" target="_blank" class="btn btn-primary">Read More</a>
						    </div>
						</div>
			    	</div>
		  		</div>
		  	</section> 
	</div>
		
	<section id="contact" style="background:white;">	  	
		<div class="container" >
			<h2 style="text-align:center;">Contact Us</h2>
			<p style="text-align:center; font-weight:bold;">We love questions and feedback and we are always happy to help!<br> Here are some ways to contact us.</p>
			<div class="row" style="background:#cccccc; margin-right:15px; margin-left:-15px; border: 1px solid grey; border-radius:8px;">
				
			  	<div class="col-sm-8" style="border: 1px solid grey;">
			  		<h3 style="font-weight:bold;">Send us a message</h3>
			  		<p> Send us a message and we will response within 24 hours.</p>
				  	<form method="post" action="ContactProcess.jsp">
				  		<div class="row">
				  			<div class="col-lg-6">
						  		<label for="name"><b>Full Name</b></label>
		    					<input type="text" placeholder="Type full name here" name="name" class="form-control" style="border: 1px solid grey;" required>
    						</div>
    						<div class="col-lg-6">
		    					<label for="email"><b>Email</b></label>
		    					<input type="email" placeholder="Type Email here" name="email" class="form-control" style="border: 1px solid grey;" required>
    						</div>
    					</div>
    					<div class="row">
    						<div class="col-lg-6">
		    					<label for="mobile"><b>Mobile</b></label>
		    					<input type="number" placeholder="Mobile number" name="mobile" class="form-control" style="border: 1px solid grey;" required>
    						</div>
    						<div class="col-lg-6">
		    					<label for="occupation"><b>Occupation</b></label>
		    					<input type="text" placeholder="Occupation" name="occupation" class="form-control" style="border: 1px solid grey;" required>
    						</div>
    					</div><br>
    					<textarea name="message" cols="101" rows="4" placeholder="Type your message here" required></textarea>
    					
    					<input type="submit" class="btn btn-primary" value="submit" style="background:black;">
				  	</form>
			  	</div>
			  	<div class="col-sm-4"> 			  	
			  		<h3 style="font-weight:bold;">Contact information</h3>
			  		<hr>
			  		<i class="material-icons">&#xe0c8;</i>
			  		<p>Raisen Road LNCTU Bhopal, 462023</p>
			  		<i class="material-icons">&#xe0be;</i>
			  		<P>arman1life74@gmail.com</P>
			  		<i class="material-icons">&#xe0b0;</i>
			  		<p>7494050485</p>
			  		<hr>
			  		<a href="https://www.facebook.com/profile.php?id=100025066657036" target="_blank" style="margin: 0 10px;"><img src="fb.png"  style="height:35px;"></a>
                    <a href="https://mobile.twitter.com/ArmanAl82265293" target="_blank" style="margin: 0 10px;"><img src="tw.png"  style="height:35px;"></a>
                    <a href="https://www.instagram.com/arman_ali_khan1/" target="_blank" style="margin: 0 10px;"><img src="in.png"  style="height:35px;"></a>
                    <a href="https://www.linkedin.com/in/arman-ali-64b064186" target="_blank" style="margin: 0 10px;"><img src="ln.png"  style="height:35px;"></a>
			  	</div>
			</div>
		</div>
	</section>
</div>	

<footer style="background: black; padding:40px 0; text-align: center;">

	<ul>
		<li style="display:inline-block; padding:15px;"><a href="home.html">Home</a></li>
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

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Thank You","Keep Patience Our Team will response you soon","success")
	}
</script>

</body>
</html>
