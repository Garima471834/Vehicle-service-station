<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Service Station/contact</title>
<%@include file="/common/commoncss.html"%>
 <style>
body {
	background-image: url(/VehicleServiceStation/images/pic32.jpg);
	background-position: center;
	background-repeat: no repeat;
	background-size: cover;
}
</style> 
 
</head>
<body style="background-color: #ADD8E6">
	<!-- style=background-color:LightSeaGreen; -->
	<div class="container-fluid bg-info">
		<!-- <h2>Vehicle service station</h2> -->
	</div>

	<%@include file="/common/common_header.html"%>

	<%
	String message = (String) request.getAttribute("msg");
	if (message != null) {
	%>
	<div class="alert alert-danger alert-dismissible fade show"
		role="alert">
		<strong><%=message%></strong>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<%
	}
	%>
	<section>
		<!-- <h2>this is contact us page</h2> -->
		<div class="col-4" style="margin-left: 30%; margin-top: 3%">
			<h1 style="text-align: center; color: white;border;text-shadow: 2px 2px 5px red;">
				<i><u><b>ContactUs</b></u></i>
			</h1>
			
			<div style="margin-top: 10%">
			<form class="form-content-section needs-validation" action="/VehicleServiceStation/ContactUs" method="post"	novalidate="novalidate">
				<div class="form-group mt-3">
					<!-- <label for="contact">Name</label> -->
					<input type="text" name="username" class="form-control"
						id="contact" placeholder="Enter Name" required>
					<div class="invalid-feedback">Name Required</div>
				</div>
				<div class="form-group mt-3">
					<!-- <label for="emailid">Email address</label> -->
					<input type="email" name="useremail" class="form-control"
						id="emailid" aria-describedby="emailHelp"
						placeholder="Enter email" required> <small id="emailHelp"
						class="form-text text-muted"><p style="color: white"><i>We'll never share your email
						with anyone else.</i></p></small>
					<div class="invalid-feedback">Email Id Required</div>
				</div>
				<div class="form-group mt-3">
					<!-- <label for="contact">Contact Number</label> -->
					<input type="text" name="userphone" class="form-control"
						id="contact" placeholder="Enter Number" required>
					<div class="invalid-feedback">Contact number Required</div>
				</div>
				<div class="form-group mt-3">
					<!-- <label for="Comment">Your Question</label> -->
					<textarea class="form-control" name="userquery" id="comment" rows="3" placeholder="Write Query" required></textarea>
					<div class="invalid-feedback">Question Required</div>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-success"
						style="margin-top: 5%; margin-bottom: 5px;width: 40%;height: 40px">Submit</button>
				</div>
			</form>
			</div>
			</div>
		
		<%-- <h1><%=message %></h1> --%>
	</section>


	<%@include file="/common/common_footer.html"%>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>