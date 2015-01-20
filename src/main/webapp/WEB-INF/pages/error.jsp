<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Plan my Trek</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" media="screen">
<link href="<c:url value="/resources/css/customized/travel.css" />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/social-buttons-3.css"/>"
	rel="stylesheet" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
</head>
<body>
	<div class="container">
		<div class="masthead">
			<div class="heading" style="height: 88px;">
				<h3 class="text-muted" id="trek">Plan my Trek</h3>
				<img src="<c:url value="/resources/images/t16.jpg" />"
					style="width: 300px; float: right;" />
			</div>
			

			<div class="login">
				<form action="login.do" class="form-inline" method="post">
					<span class="user_login">Login</span>
					<div class="form-group">
						<label for="email">Email</label> <input type="email" name="Email"
							class="form-control" id="loginEmail" placeholder="Enter email" required>

					</div>
					<div class="form-group">
						<label for="Password">Password</label> <input type="Password"
							name="Password" class="form-control" id="loginPassword"
							placeholder="Enter Password" required>
					</div>
					<input type="submit" value="Submit"> <input type="reset"
						value="Reset">
				</form>
			</div>

		</div>
		<hr class="mar1">
	</div>
	<div id="color-animate" style="overflow: hidden;">
		<h3 class="font-design">Upcoming Treks!</h3>
		<p class="position-animate"></p>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<img id="img1" style="height: 532px;"
					src="<c:url value="/resources/images/t4.jpg" />">
				<p class="text">There can be no more compelling way to connect
					with a foreign land than to walk on the foreign soil,sand and rock
					that comprises its landscape. Nor can there be any better way to
					meet the local people than to walk in their footsteps and among
					them,in their own terms,instead of being tied to roads,train-tracks
					and cityscapes.</p>
			</div>
	
			<div class="col-md-4 register">
				<h3 class="head-font">Let's trek together...get Registered!</h3>
				<br /> <br />


				<form action="register.do" id="register_form" method="post"
					id="loginform">

					<div class="form-group" " id="Name1">
						<label class="control-label" for="Name">Name</label> <input
							type="text" name="Username" id="Username" class="form-control"
							placeholder="Enter Name" required>
					</div>
					<div class="form-group">
						<label for="email">Email</label> <input type="email" name="Email"
							class="form-control" placeholder="Enter Email" required>

					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							name="Password" class="form-control" placeholder="Enter Password"
							pattern=".{5,10}" title="5 to 10 characters" required>

					</div>
					<div class="form-group ">
						<label for="mobileno">Mobile No.</label> <input type="tel"
							class="form-control" placeholder="Enter mobile number"
							 required>

					</div>
					<div class="checkbox">
						<label><input type="checkbox"> Remember me</label>
					</div>
					<div class="form-actions">
						<button type="submit" class="btn btn-success">Submit</button>
						<input type="reset" value="Reset">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="myDiv"></div>
	<div class="footer">
		<div class="container">
			<hr>
			<div class="row">
				<div class="col-md-12">
					<p class="social">Connect with us on Social Media</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<button class="btn btn-linkedin social_btn">
						<i class="fa fa-linkedin"></i> | Connect with LinkedIn
					</button>
					<br>
					<button class="btn btn-twitter social_btn">
						<i class="fa fa-twitter"></i> | Connect with Twitter
					</button>
					<button class="btn btn-youtube social_btn">
						<i class="fa fa-youtube"></i> | Connect with YouTube
					</button>
				</div>
				<div class="col-md-3">
					<button class="btn btn-facebook social_btn">
						<i class="fa fa-facebook"></i> | Connect with Facebook
					</button>
					<br>
					<button class="btn btn-google-plus social_btn">
						<i class="fa fa-google-plus"></i> | Connect with Google Plus
					</button>
					<br>
					<button class="btn btn-instagram social_btn">
						<i class="fa fa-camera-retro"></i> | Connect with Instagram
					</button>
				</div>
			</div>
			<p class="text-muted footerNote">
				Copyright <span class="glyphicon glyphicon-copyright-mark">2014
					PlanMyTrek</span>
			</p>
		</div>
	</div>
	

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- <script src="<c/resources/js/bootstrap.js"></script> -->
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


	<script type="text/javascript"
		src="<c:url value="resources/js/customized/code.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/bootstrap.js" />"></script>
		<script>
	$(document).ready(function(){
	var usertest_email = "${usertest.email}";
	var usertest_exists= "${usertest.email}";
	var usertest_pass = "${usertest.password}";
	if (usertest_email == "invalid") {
		alert("You are not a existing user.Please login first.");
	}
	else if (usertest_pass == "invalid") {
		alert("You have entered an incorrect password");
	}
	else if (usertest_exists == "already exists!"){
		alert("Your account already exists.Please Login!");
	}
	});
	</script>
</body>
</html>