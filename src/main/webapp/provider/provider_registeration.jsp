<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProviderRegistration</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html"%>

<style>
    .background-radial-gradient {
      background-color: hsl(218, 41%, 15%);
      background-image: radial-gradient(650px circle at 0% 0%,
          hsl(218, 41%, 35%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%),
        radial-gradient(1250px circle at 100% 100%,
          hsl(218, 41%, 45%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%);
    }

    #radius-shape-1 {
      height: 220px;
      width: 420px;
      top: -60px;
      left: -130px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    #radius-shape-2 {
      border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
      bottom: -60px;
      right: -110px;
      width: 300px;
      height: 300px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    .bg-glass {
      background-color: hsla(0, 0%, 100%, 0.9) !important;
      backdrop-filter: saturate(200%) blur(25px);
    }
  </style>


</head>
<body>


	<!-- style=background-color:LightSeaGreen -->
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

<!-- Section: Design Block -->
<section class="background-radial-gradient overflow-hidden">
  <h1 style="text-align: center;color: white;margin-top: 3%"><i><u>Do Regsitration!!</u></i></h1>

  <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5" style="margin-left: 30%" >
    <div class="row gx-lg-5 align-items-center mb-5" >
      <div class="col-lg-6 mb-5 mb-lg-0" style=" z-index: 10;margin-left: 10%;margin-top: 2%;margin-right: 20%">
        <!-- <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          The best offer <br />
          <span style="color: hsl(218, 81%, 75%)">for your business</span>
        </h1> -->
        <!-- <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%);margin-top: 100%">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit.
          Temporibus, expedita iusto veniam atque, magni tempora mollitia
          dolorum consequatur nulla, neque debitis eos reprehenderit quasi
          ab ipsum nisi dolorem modi. Quos?
        </p> -->
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0 position-relative"  >
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass" >
          <div class="card-body px-4 py-5 px-md-5" >
            <form action="/VehicleServiceStation/Provider_Registration"
			method="post" novalidate="novalidate" class="needs-validation">
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example1" class="form-control" name="userid" required/>
                    <label class="form-label" for="form3Example1">ProviderID</label>
                    
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                <input type="password" id="form3Example4" class="form-control" name="password" required/>
                <label class="form-label" for="form3Example4">Password</label>
              </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" name="companyname" required/>
                    <label class="form-label" for="form3Example2">Company name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" name="ownername" required/>
                    <label class="form-label" for="form3Example2">Owner name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" name="phone" required/>
                    <label class="form-label" for="form3Example2">Contact number</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                <input type="email" id="form3Example3" class="form-control" name="email" required/>
                <label class="form-label" for="form3Example3">Email address</label>
              </div>
              </div>

              <!-- Email input -->
              
              <div class="form-outline mb-4">
              <div class="form-outline">
              <label for="city">Choose Your City</label>
						<select id="city" name="city">
						<option>select City</option>
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
							
						</select>
              </div>
              
              </div>
              

                    <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <textarea type="text" id="form3Example2" class="form-control" name="address" required /></textarea>
                    <label class="form-label" for="form3Example2">Address of the company</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <textarea type="text" id="form3Example2" class="form-control" name="description" required /></textarea>
                    <label class="form-label" for="form3Example2">Description About company</label>
                  </div>
                </div>
              <!-- Password input -->
              
              <!-- Checkbox -->
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                <label class="form-check-label" for="form2Example33">
                  Subscribe to our newsletter
                </label>
              </div>

              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">
                Sign up
              </button>

              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign up with:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
              
              </div>
            </form>
          </div>
        </div>
        
      
      </div>
      <!-- <div class="col-lg-6 mb-5 mb-lg-0" style=" z-index: 10;margin-left: 10%;margin-top: 2%;margin-right: 20%">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          The best offer <br />
          <span style="color: hsl(218, 81%, 75%)">for your business</span>
        </h1> 
        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%);margin-top: 100%">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit.
          Temporibus, expedita iusto veniam atque, magni tempora mollitia
          dolorum consequatur nulla, neque debitis eos reprehenderit quasi
          ab ipsum nisi dolorem modi. Quos?
        </p> 
      </div> -->
    </div>
  </div>
</section>
<!-- Section: Design Block -->
	<!-- <div>
		<div class="row" style="margin-left: 10%">
		<form action="/VehicleServiceStation/Provider_Registration"
			method="post" novalidate="novalidate" class="needs-validation">
			<div class="col-6" style="margin-left: 40%">
				<h2>Service Provider Registration</h2>
				<div class="content">

					<div class="input-box mt-3">
						<label for="userid">User ID</label>
						<input type="text" name="userid" id="userid"
							placeholder="Enter User ID" required>
							<div class="invalid-feedback">
        Id Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="password">User Password</label>
						<input type="password" name="password" id="password"
							placeholder="Enter User Password" required>
							<div class="invalid-feedback">
        Id Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="companyname">Company Name</label>
						<input type="text" name="companyname" id="companyname"
							placeholder="Enter Company Name" required>
							<div class="invalid-feedback">
        Company name Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="ownername">Owner Name</label>
						<input type="text" name="ownername" id="ownername"
							placeholder="Enter Owner Name" required>
							<div class="invalid-feedback">
        Owner name Required
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
						<label for="email">Email</label>
						<input type="email" name="email" id="email"
							placeholder="Enter Email ID" required>
							<div class="invalid-feedback">
        Email Id Required
      </div>
					</div>

					<div class="input-box mt-3">
						<label for="city">Choose Your City</label>
						<select id="city" name="city">
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

					<div class="input-box mt-3">
						<label for="description">Description About Company</label>
						<textarea name="description" id="description" rows="5" cols="40"
							placeholder="Write about the company" required></textarea>
							<div class="invalid-feedback">
        Description Required
      </div>
					</div>
				</div>
				<div class="button-container">
					<button type="submit" class="btn btn-primary">Reset</button>
					<button type="submit" class="btn btn-success">Submit</button>
				</div>
			</div>
		</form>
	</div> -->
	<!-- </div> -->


	<%@include file="/common/common_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>












