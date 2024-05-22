<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
<%@include file="/common/commoncss.html"%>
 <!-- <style>
body {
	background-image: url(/VehicleServiceStation/images/pic23.jpg);
	background-position: center;
	background-repeat: no repeat;
	background-size: cover;
}
</style> -->
</head>
<body style="background-color: skyblue;margin-bottom: 40%">
	<%
	String message = (String) request.getAttribute("msg");
	%>
	<div class="container-fluid bg-black">
		<!-- <h2>Vehicle Service Station</h2> -->
	</div>
	<%@include file="/common/common_header.html"%>
	
	
	<section class="h-100 gradient-form" >
  <div class="container py-5 h-100" >
    <div class="row d-flex justify-content-center align-items-center h-100" style="margin-top: 1%">
      <div class="col-xl-9" >
        <div class="card rounded-3 text-black" style="background-color: silver">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="/VehicleServiceStation/images/pic30.jpg"
                    style="width: 100%;height: 200px;" alt="logo">
                 <!--  <h4 >Vehicle Service Station</h4> -->
                </div>

                <form method="post" action="/VehicleServiceStation/Admin_Login" novalidate="novalidate" class="needs-validation">
                  <h4 class="mt-1 mb-5 pb-1" style="color: navy">Please login to your account</h4>

                  <div class="form-outline mb-4">
                    <input type="text" id="form2Example11" class="form-control"
                       name="username" required />
                    <label class="form-label" for="form2Example11">AdminID</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="form2Example22" class="form-control" name="password" required/>
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" style="float: left;width: 50%;height: 40px">Login Here</button>
                    <a class="text-muted" href="#!">Forgot password?</a>
                  </div>

                  <!-- <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an account?</p>
                    <button type="submit" class="btn btn-outline-danger">Create new</button>
                  </div> -->

                </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-navy px-3 py-4 p-md-5 mx-md-4">
                <h2 class="mb-4" style="color: navy"><b><u><i>Vehicle Service Station:-</i></u></b></h2>
                <p class="small mb-0" style="font-size: 20px">
With our automobile repair software manage all your business tasks swiftly. Get access to advanced tools integral such as custom inventory, customer information and service history, car repair pricing, and other essential information at one place.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

	<!-- <div class="row" style="margin-top: 10%; margin-left: 40%">
		<div class="col-4">
			<form method="post" action="/VehicleServiceStation/Admin_Login" novalidate="novalidate" class="needs-validation">
				<div class="input-group mb-3">
					<span class="input-group-text"><i class="fas fa-user-alt"
						style="color: black;"></i></span> <input type="text" id="username"
						class="form-control" placeholder="Username" required="required"
						name="username">
						
						<div class="invalid-feedback">
        Id Required
      </div>
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text"><i class="fas fa-eye-slash"
						style="color: black;"></i></span> <input id="password" type="password"
						class="form-control" placeholder="User password"
						required="required" name="password">
						<div class="invalid-feedback">
        password Required
      </div>
				</div>
				<div class="text-center">
					<button class="btn btn-success">
						<i class="fas fa-lock"></i> Submit
					</button>
				</div>
			</form> -->
			<%
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
		<!-- </div>
	</div>
 -->


	 <%@include file="/common/common_footer.html"%> 
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>