<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #9ceaea;">
<div class="container" style="padding-right: 23px; padding-left: 7px;">
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
		        <li><a href="Doctors.jsp">All Docrtors</a></li>
		        <li><a href="Blog.jsp">Blog</a></li>
		        <li><a href="home.jsp#contact">Contact us</a></li>
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
		      <li>
		      <div class="dropdown">
			    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">LogIn
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">
			      <li><a href="AdminLogin.html">Admin login</a></li>
			      <li class="active"><a href="UserLogin.jsp">User login</a></li>
			      <li class="divider"></li>
			      <li><a href="Register.html">Register</a></li>
			    </ul>
			  </div>
			  </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<div class="container">
			<div class="row" style="margin-left:-15px; margin-right:15px; background: white; height:250px;">
				<div class="col-m-6" style="border:1px solid gray; margin:15px 315px; height:200px;" >
					<h4 style="font-family:bold; text-align:center;">Login to your account</h4>
					<hr style="width:80%; color:gray; height:1px; background-color:gray;">
					<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#doctorLogin" style="margin-bottom:10px;">Doctor Login</button>
					<div class="modal fade" id="doctorLogin" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
					        	<div class="modal-header">
						        	<button type="button" class="close" data-dismiss="modal">&times;</button>
						        	<p style="text-align:center; color:red;">Login to see your appointment !!!</p>
						          	<h4 class="modal-title">Doctor Login Form</h4>
						        </div>
						        <div class="modal-body">
						        	<form action="DoctorLogin.jsp" method="post">
						   				<div class="form-group">
						    				<label for="email">Email:</label>
						      				<input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
						    			</div>
						    			<div class="form-group">
									    	<label for="password">Password:</label>
									      	<input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
						    			</div>
						    			<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
									</form>
        						</div>
      						</div>
      					</div>
      				</div>		
					<h4 style="text-align:center;">OR</h4>
					<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#patientLogin" style="margin-top:5px;">Patient Login</button>
					<div class="modal fade" id="patientLogin" role="dialog">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      <div class="modal-content">
					        <div class="modal-header">
					          <button type="button" class="close" data-dismiss="modal">&times;</button>
					          <p style="text-align:center; color:red;">Login to book your appointment !!!</p>
					          <h4 class="modal-title">Patient Login Form</h4>
					        </div>
					        <div class="modal-body">
					        	<form action="PatientLogin.jsp" method="post">
					   				<div class="form-group">
					    				<label for="email">Email:</label>
					      				<input type="email" class="form-control" placeholder="Enter email" name="email" required>
					    			</div>
					    			<div class="form-group">
								    	<label for="password">Password:</label>
								      	<input type="password" class="form-control" placeholder="Enter password" name="password" required>
					    			</div>
					    			<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
								</form>
        					</div>
      					</div>
    					</div>
  					</div>
				</div>
			</div>
		</div>
		
</div>
</body>
</html>