<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Registration</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html"%>
<link rel="stylesheet"
	href="/VehicleServiceStation/src/main/webapp/stylecss/client_registration.css"> 
<!-- <style>
body {
	background-image: url(/VehicleServiceStation/images/pic4.jpg);
	background-position: center;
	background-repeat: no repeat;
	background-size: cover;
}
</style> -->

</head>
<body>
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


<section class="vh-75 bg-image"
  style="background-image: url('/VehicleServiceStation/images/pic29.jpg');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 5rem;margin-top: 10%;margin-bottom: 30%">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-4"><i>Create an account !!</i></h2>

              <form action="/VehicleServiceStation/Client_Registration"
			method="post" novalidate="novalidate" class="needs-validation">

                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example1cg">ClientID</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="clientid" required/>
                  
                </div>

                

                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example4cg">Password</label>
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" name="password"  required/>
                  
                </div>
                
                
                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example4cdg">Owner name</label>
                  <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="name" required/>
                  
                </div>
                <div class="form-outline mb-2">
                 <label class="form-label" for="form3Example3cg">Your Email</label>
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" name="email"  required/>
                 
                </div>
                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example4cdg">Contact number</label>
                  <input type="text" id="form3Example4cdg" class="form-control form-control-lg" name="phone" required/>
                  
                </div>
                
                 <div class="form-outline mb-2">
                <label for="city">Choose Your City</label>
						<select id="city" name="city">
						<option>select city</option>
							<option value="Chandigarh">Chandigarh</option>
							<option value="Bangaluru">Bangaluru</option>
							<option value="Lucknow">Lucknow</option>
							<option value="Noida">Noida</option>
							<option value="Dehradun">Dehradun</option>
							<option value="Prayagraj">Prayagraj</option>
							<option value="Raipur">Raipur</option>
							<option value="Haryana">Haryana</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Kolkata">Kolkata</option>
							<option value="Chennai">Chennai</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Pune">Pune</option>
							<option value="Kanpur">Kanpur</option>
							<option value="Nagpur">Nagpur</option>
							<option value="Agra">Agra</option>
							<option value="Indore">Indore</option>
							<option value="Kochi">Kochi</option>
							<option value="Patna">Patna</option>
						</select>
                </div>
                
                
                
                
                
                
                
                
                
                
                
                <div class="form-outline mb-2">
                <label class="form-label" for="form3Example4cdg">Address</label>
                  <textarea type="text" id="form3Example4cdg" class="form-control form-control-lg" name="address" required/></textarea>
                  
                </div>
                

                <div class="form-check d-flex justify-content-center mb-3">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" style="width: 90%;height: 40px">Register</button>
                </div>

                <p class="text-center text-muted mt-2 mb-0">Have already an account? <a href="/VehicleServiceStation/client/client_login.jsp"
                    class="fw-bold text-body"><u>Login here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- <div class="row" style="margin-left: 10%">
<div class="col-4">
			
			<img alt="" src="/VehicleServiceStation/images/pic21.jpg"
				style="width: 100%; height: 200px;margin-top: 10%;float: left">
		</div>
		<form action="/VehicleServiceStation/Client_Registration"
			method="post" novalidate="novalidate" class="needs-validation">
			<div class="col-6 bg-primary" style="margin-right: 30%;float: left"> style="margin-left: 40%;margin-top: 10%"
				<h2>Service Provider Registration</h2>
				<div class="content">

					<div class="input-box mt-3">
						<label for="userid">User ID</label>
						<input type="text" name="clientid" id="userid"
							placeholder="Enter Client ID" required>
							<div class="invalid-feedback">
        Id Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="password">User Password</label>
						<input type="password" name="password" id="password"
							placeholder="Enter Client Password" required>
							<div class="invalid-feedback">
        password Required
      </div>
					</div>

					

					<div class="input-box mt-3">
						<label for="ownername">Owner Name</label>
						<input type="text" name="name" id="name"
							placeholder="Enter Name" required>
							<div class="invalid-feedback">
        Name Required
      </div>
					</div>

					

					<div class="input-box mt-3">
						<label for="email">Email</label>
						<input type="email" name="email" id="email"
							placeholder="Enter Email ID" required>
							<div class="invalid-feedback">
        Email Required
      </div>
					</div>
					<div class="input-box mt-3">
						<label for="phone">Contact Number</label>
						<input type="text" name="phone" id="phone"
							placeholder="Enter Contact Number" required>
							<div class="invalid-feedback">
        Contact number Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="city">Choose Your City</label>
						<select id="city" name="city">
							<option value="city">Chandigarh</option>
							<option value="city">Bangaluru</option>
							<option value="city">Lucknow</option>
							<option value="city">Noida</option>
							<option value="city">Dehradun</option>
							<option value="city">Prayagraj</option>
							<option value="city">Raipur</option>
							<option value="city">Haryana</option>
							<option value="city">Mumbai</option>
							<option value="city">Kolkata</option>
							<option value="city">Chennai</option>
							<option value="city">Hyderabad</option>
							<option value="city">Pune</option>
							<option value="city">Kanpur</option>
							<option value="city">Nagpur</option>
							<option value="city">Agra</option>
							<option value="city">Indore</option>
							<option value="city">Kochi</option>
							<option value="city">Patna</option>
						</select>
					</div>

					<div class="input-box mt-3">
						<label for="address">Address of The Company</label>
						<textarea name="address" id="address" rows="4" cols="40"
							placeholder="Enter Address" required></textarea>
							<div class="invalid-feedback">
        Address Required
      </div>
					</div>

					
				</div>
				<div class="button-container">
					
					<button type="submit" class="btn btn-success">Submit</button>
				</div>
			</div>
		</form>
	</div>  -->
	<!-- </div> -->


	 <%@include file="/common/common_footer.html"%> 
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>