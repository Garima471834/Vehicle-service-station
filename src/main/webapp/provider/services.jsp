<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Provider Services</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html"%>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic7.jpg);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style>
</head>
<body style="background-color: #CCFFCC;margin-bottom: 20%">


<%
String message=(String)request.getAttribute("msg");
%>
	<%@include file="/provider/provider_header.html"%>
	
	<h1 style="text-align: center; margin-top: 3%;color: purple"><i><u>Service Provider</u></i></h1>
	<div class="col-4" style="margin-left: 35%; margin-top: 3%">
		<form class="form-content-section needs-validation"
			action="/VehicleServiceStation/Provider_Services" method="post" novalidate="novalidate">
			<!-- <div class="form-group mt-3">
				<label for="contact">Service Name</label> <input type="text"
					name="Provider_id" class="form-control" id="providerid"
					placeholder="Enter ID">
					<div class="invalid-feedback">
        Provider ID Required
      </div>
			</div> -->
			<div class="form-group mt-3">
				<!-- <label for="contact">Service Name</label> --> <input type="text"
					name="servicename" class="form-control" id="contact"
					placeholder="Enter service Name" required>
					<div class="invalid-feedback">
        Service name Required
      </div>
			</div>

			<div class="form-group mt-3">
				<!-- <label for="contact">Service Charge</label> --> <input type="text"
					name="charge" class="form-control" id="contact"
					placeholder="Enter charge" required>
					<div class="invalid-feedback">
        Charge Required
      </div>
			</div>
			<div class="form-group mt-3">
				<!-- <label for="Comment">Description</label> -->
				<textarea class="form-control" name="description" id="comment"
					rows="3" placeholder="Description" required></textarea>
					<div class="invalid-feedback">
        Description Required
      </div>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary" style="margin-top: 5%">Submit</button>
			</div>
		</form>
</div>
<%
			if(message!=null)
			{
			
			%>
			<span style="color: red"><%=message %></span>
<%} %>
	

	<%@include file="/common/common_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>