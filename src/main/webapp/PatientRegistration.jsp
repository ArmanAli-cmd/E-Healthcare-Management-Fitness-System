<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
		        <li><a href="Home.jsp">Home</a></li>
		        <li><a href="AboutUs.html">About us</a></li>
		        <li><a href="Doctor.jsp">All Docrtors</a></li>
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
		      <li><div class="dropdown">
			    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">LogIn
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">
			      <li><a href="AdminLogin.html">Admin login</a></li>
			      <li><a href="UserLogin.html">User login</a></li>
			      <li class="divider"></li>
			      <li class="active"><a href="Register.html">Register</a></li>
			    </ul>
			  </div></li>
		      </ul>
		    </div>
		  </div>
		</nav>

	<div class="container">
			<div class="row" style="height:1100px;  margin-right:15px; margin-left:-15px;">
				<div class="jumbotron" style="height:1100px;">
					<div class="col-lg-12">
						<h3 style="text-align:center;">Patient Registration Form</h3>
						<hr style="height:1px; width:100%; color:gray; background-color:darkgray;">
						<form  method="post" action="PatientProcess.jsp">
							<h4 style="color:blue;">PATIENT INFORMATION</h4>
							<hr style="height:1px; width:100%; color:gray; background-color:darkgray;">
						   	<div class="row">
					  			<div class="col-lg-6">
							  		<label for="name"><b>Full Name</b></label>
			    					<input type="text" placeholder="Enter your full name" name="name" class="form-control" required>
	    						</div>
	    						<div class="col-lg-6">
			    					<label for="age"><b>Age</b></label>
			    					<input type="text" name="age" placeholder="Enter your age" class="form-control" required>
	    						</div>
    						</div>
    						<div class="row">
    							<div class="col-lg-6">
    								<label for="image">Upload Your Photo </label>
    								<input type="file" id="myFile" name="image" class="form-control">
    							</div>
	    						<div class="col-lg-6">
		    						<label for="sex">Sex</label>
		    						<div class="form-control">
									    <input type="radio" name="sex" value="Male" style="margin-left:10px;">
								        <label for="sex" style="margin-right:10px;">Male</label> 
								        <input type="radio" name="sex" value="Female" style="margin-left:10px;">
								        <label for="sex">Female</label>
							        </div>
						        </div>
					        </div>
					        <div class="row">
					        	<div class="col-lg-6">
						        	<label for="blood_group">Blood Group: </label>
						            <select name="blood_group" class="form-control">
						                <option disabled selected>Select Blood Group</option>
						                <option value="A+">A+</option>
						                <option value="A-">A-</option>
						                <option value="B+">B+</option>
						                <option value="B-">B-</option>
						                <option value="O+">O+</option>
						                <option value="O-">O-</option>
						                <option value="AB+">AB+</option>
						                <option value="AB-">AB-</option>
						            </select>
				            	</div>
				            	<div class="col-lg-6">
		    						<label for="martial">Martial status </label>
		    						<div class="form-control">
									    <input type="radio" name="martial" value="married" style="margin-left:10px;">
								        <label for="martial" style="margin-right:10px;">Married</label> 
								        <input type="radio" name="martial" value="unmarried" style="margin-left:10px;">
								        <label for="gender">Unmarried</label>
							        </div>
						        </div>
				            </div>
    						<div class="row">
					  			<div class="col-lg-6">
							  		<label for="mobile"><b>Mobile No.</b></label>
			    					<input type="number" placeholder="Enter your mobile no" name="mobile" class="form-control" required>
	    						</div>
	    						<div class="col-lg-6">
			    					<label for="email"><b>Email</b></label>
			    					<input type="email" placeholder="Enter your email" name="email" class="form-control" required>
	    						</div>
	    					</div>
    						
						    <div class="row">
						    	<div class="col-lg-6">
							    	<label for="password">Password:</label>
							      	<input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
						    	</div>
						    	<div class="col-lg-6">
							    	<label for="password">Confirm Password:</label>
							      	<input type="password" class="form-control" id="password" placeholder="Re-Enter password" name="password" required>
						    	</div>
						    </div>
						    
						  	<h4 style="color:blue;">PATIENT ADDRESS INFORMATION</h4>
							<hr style="height:1px; width:100%; color:gray; background-color:darkgray;"> 
						    <div class="row">
					  			<div class="col-lg-12">
							  		<label for="address">Address</label>
			    					<input type="text" placeholder="Enter your street" name="address" class="form-control" required>
	    						</div>
    						</div>
						    <div class="row">
						    	<div class="col-lg-6">
			    					<label for="city">City</label>
			    					<input type="text" name="city" placeholder="Enter your city name" class="form-control" required>
	    						</div>
	    						<div class="col-lg-6">
			    					<label for="pincode">Pincode</label>
			    					<input type="number" name="pincode" placeholder="Enter your pincode" class="form-control" required>
	    						</div>
    						</div>
    						<div class="row">
    							<div class="col-lg-6">
							  		<label for="state">State</label>
			    					<input type="text" placeholder="Enter your state name" name="state" class="form-control" required>
	    						</div>
    							<div class="col-lg-6">
			    					<label for="country">Country</label>
			    					<input type="text" name="country" placeholder="Enter your country name" class="form-control" required>
	    						</div>
    						</div>
    						
    						<h4 style="color:blue;">Parent/Guardian Details</h4>
							<hr style="height:1px; width:100%; color:gray; background-color:darkgray;">
							<div class="row">
    							<div class="col-lg-6">
							  		<label for="p_name">Parent/Guardian name</label>
			    					<input type="text" placeholder="Enter your guardian name" name="p_name" class="form-control" required>
	    						</div>
    							<div class="col-lg-6">
			    					<label for="Relation">Relation</label>
			    					<select name="relation" class="form-control">
						                <option disabled selected>Select relation with patient</option>
						                <option value="father">Father</option>
						                <option value="brother">Brother</option>
						                <option value="sister">Sister</option>
						                <option value="friend">friend</option>
						                <option value="uncle">Other</option>
						            </select>
	    						</div>
    						</div>
    						<div class="row">
					  			<div class="col-lg-12">
							  		<label for="p_address">Address</label>
			    					<input type="text" placeholder="Enter guardian address" name="p_address" class="form-control" required>
	    						</div>
    						</div>
						    <div class="row">
						    	<div class="col-lg-6">
			    					<label for="p_pincode">Pincode</label>
			    					<input type="number" name="p_pincode" placeholder="Enter your pincode" class="form-control" required>
	    						</div>
						    	<div class="col-lg-6">
			    					<label for="p_city">City</label>
			    					<input type="text" name="p_city" placeholder="Enter your city name" class="form-control" required>
	    						</div>
    						</div>
    						<div class="row">
    							<div class="col-lg-6">
							  		<label for="p_state">State</label>
			    					<input type="text" placeholder="Enter your state name" name="p_state" class="form-control" required>
	    						</div>
    							
    						</div>
    						
						    <button type="submit" value="submit" class="btn btn-primary">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Thank You","Our team will give response very soon","success")
	}
</script>

</body>
</html>