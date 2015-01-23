<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html ng-app="trekmanage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Your Mate Account</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" media="screen">
<link
	href="<c:url value="/resources/css/customized/accountformat.css" />"
	rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/social-buttons-3.css" />"
	rel="stylesheet" type="text/css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="<c:url value="/resources/js/angular.min.js" />"></script>
<script src="<c:url value="/resources/js/customized/trekangular.js" />"></script>

</head>

<body class="sections" ng-controller="trekcontroller">

	<div class="masthead">
		<div class="heading" style="height: 88px;">
			<h3 class="text-muted">Plan my Trek</h3>
			<img src="<c:url value="/resources/images/t16.jpg" />"
				style="width: 300px; float: right;" />
			<hr>
		</div>
	</div>

	<div class="container">
		<div style="margin-top: 50px;">
			<nav id="navbar">
				<ul class="nav nav-justified nav-tabs" id="myTab" role="tablist">
					<li class="active"><a href="#home" role="tab"
						data-toggle="tab">Home</a></li>
					<li><a href="#create_trek" role="tab" data-toggle="tab"
						class="options">Create/Join a Trek</a></li>
					<li><a href="#blog" role="tab" data-toggle="tab"
						class="options">Album</a></li>
					<li><a href="#Contact" role="tab" data-toggle="tab"
						class="options">Contact Us</a></li>
				</ul>
			</nav>
		</div>
		<form action="logout.do" method="get">
			<button type="submit" class="btn btn-default"
				style="background-color: rgb(227, 244, 11); margin-left: 77%;">Log
				Out</button>
		</form>
	</div>
	<div class="tab-content">
		<div id="home" class="tab-pane fade in active">
			<div class="container">
				<div class="image">
					<img src="<c:url value="/resources/images/t23.jpg"/>" class="sky" />
					<h2>
						<span>Welcome,${user.username}</span>
						<div>
							<span id="dtText"></span>
						</div>
					</h2>
					<div id="accordion" class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4>
									<a href="#collapseOne" data-toggle="collapse"
										data-parent="#accordion">Your upcoming Treks.</a>
								</h4>
								<form action="usertreks.do" method="get">

									<button type="submit" class="btn btn-xs">
										<span href="#collapseOne" class="glyphicon glyphicon-refresh"
											style="padding-left: 10px;"></span>
									</button>
								</form>
							</div>
							<div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body">
									<table>
										<c:forEach items="${userTreks}" var="usertrek">
											<tr>
												<td><c:out value="${usertrek}" /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"><p class="option">Treks you have
											attended in the past.</p></a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Twitter Bootstrap is a powerful front-end framework for
										faster and easier web development. It is a collection of CSS
										and HTML conventions.</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"><p class="option">What's New!</p></a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<p>CSS stands for Cascading Style Sheet. CSS allows you to
										specify various style properties for a given HTML element such
										as colors, backgrounds, fonts etc.</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseFour"><p class="option">Trek Rules.</p></a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									<p>CSS stands for Cascading Style Sheet. CSS allows you to
										specify various style properties for a given HTML element such
										as colors, backgrounds, fonts etc.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="create_trek" class="tab-pane fade">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<h3 class="upTrek">Upcoming Treks..</h3>
					</div>
				</div>
				Search:<input ng-model="query"> Sort By:<select
					ng-model="orderProp">
					<option value="name">Alphabetical</option>
					<option value="age">Newest</option>
				</select>
				<button class="btn btn-primary btn-lg positionLogin"
					data-toggle="modal" data-target="#myModal" class="newtrek"
					style="margin-left: 67%;">Create New Trek</button>
				<div class="row"
					ng-repeat="treks in currenttreks|filter:query|orderBy:orderProp">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<img class="trkpic"
									src="<c:url value="/resources/images/{{treks.img}}"/>"
									alt="image is not available">
							</div>
							<div class="col-md-8">
								<h3 class="wide">{{treks.heading}}</h3>
								<span class="glyphicon glyphicon-user"></span> <span
									class="glyphicon glyphicon-comment" style="padding-left: 10px;">Comments</span>
								<form action="join.do" method="post">

									<input type="hidden" name="trekname" value="{{treks.name}}" />

									<button type="submit" class="btn btn-xs"
										aria-label="Left Align">
										<span class="glyphicon glyphicon-plus"
											style="padding-left: 10px;">Join</span>
									</button>
								</form>


								<hr class="wide">
								<p class="descp">{{treks.descp}}</p>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="text-center">
				<div class="pagination-centered" style="align: centre;">
					<ul class="pagination">
						<li class="active"><a href="#">&laquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="blog">
			<p>nishi</p>
		</div>
		<div class="tab-pane fade" id="Contact">
			<div class="container">
				<div class="contact">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3>Contact Us..</h3>
							<img src="<c:url value="/resources/images/t21.jpg" />"
								style="align: middle;" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3>Plan My Tek Private Limited</h3>
							<p>106, First Floor, A-Wing, Rajdarshan Building, Above ICICI
								Bank ATM, Dada Patil Marg, Near Thane Station, Thane (W) 400602.</p>
							<p>Office Numbers: +91 8422 999 006 / 003 / 008</p>
							<p>Email id - planmytrek@gmail.com</p>
							<p>Contact Person: Amit Patil : +91 8655 588 508, Vikrant
								Singh: +91 9987 761 562</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Create New Trek</h4>
					</div>
					<div class="modal-body">

						<form:form method="post" action="createtrek.do"
							modelAttribute="trekModel">

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="trekname">Trek Name</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="trekname" class="form-control" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="treksummary">Trek Summary</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="treksummary" class="form-control" />
								</div>
							</div>
							</br>
							</br>
							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="description">Trek Description</form:label>
								</div>
								<div class="col-sm-9">
									<form:textarea path="description" rows="3" cols="20" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="startdate">Start Date</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="startdate" class="form-control"
										placeholder="yyyy-mm-dd" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="enddate">End Date</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="enddate" class="form-control"
										placeholder="yyyy-mm-dd" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="meetuppoint">Meetup Point</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="meetuppoint" class="form-control" />

								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="category">Category</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="category" class="form-control" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-3">
									<form:label path="imgurl">Upload File</form:label>
								</div>
								<div class="col-sm-9">
									<form:input path="imgurl" type="file" class="form-control" />
								</div>
							</div>
							</br>
							</br>

							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="submit" name="SUBMIT">
								</div>
							</div>
							</br>
							</br>
						</form:form>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-primary">Reset</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="footer">

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

	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-2.11.1.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/bootstrap.js" />"></script>
	<script type="text/javascript">
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});
		$('#myModal').appendTo("body");

		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1; //January is 0!

		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
		var today = dd + '/' + mm + '/' + yyyy;
		document.getElementById('dtText').innerHTML = today;
	</script>


</body>
</html>