<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ClientLogin</title>
<%@include file="/common/commoncss.html" %>
<!-- <style>
 body{
background-image: url(/VehicleServiceStation/images/pic5.jpg);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style> -->
</head>
<body style="margin-bottom: 10%;background-color: cadetblue">
<%
String message=(String)request.getAttribute("msg");
%>
<div class="container-fluid bg-black"><!-- <h2>Vehicle Service Station</h2> --></div>
<%@include file="/common/common_header.html" %>

<section class="vh-75" style="background-color: cadetblue /* #9A616D */;">
  <div class="container py-5 h-75">
    <div class="row d-flex justify-content-center align-items-center h-75">
      <div class="col col-xl-8">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="/VehicleServiceStation/images/pic24.jpg"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form method="post" action="/VehicleServiceStation/Client_Login" novalidate="novalidate" class="needs-validation">
                

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <!-- <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i> -->
                    <span class="h3 fw-bold mb-0">Sign into your account</span>
                  </div>

                 <!--  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5> -->

                  <div class="form-outline mb-4">
                  <label class="form-label" for="form2Example17">ClientID</label>
                    <input type="text" id="form2Example17" class="form-control form-control-lg" name="username"  required/>
                    
                  </div>

                  <div class="form-outline mb-4">
                  <label class="form-label" for="form2Example27">Password</label>
                    <input type="password" id="form2Example27" class="form-control form-control-lg" name="password" required />
                    
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit" style="width: 50%;height: 50px">Login</button>
                  </div>

                  <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-3 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="/VehicleServiceStation/client/client_registration.jsp"
                      style="color: #393f81;">Register here</a></p>
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<%-- <div class="row" style="margin-top:10%;margin-left: 40%">
<div class="col-4">
<form method="post" action="/VehicleServiceStation/Client_Login" novalidate="novalidate" class="needs-validation">


<div class="input-group mb-3">
  <span class="input-group-text"><i class="fas fa-user-alt" style="color:black;"></i></span>
  <input type="text" id="username" class="form-control" placeholder="Username"  required="required" name="username">
  <div class="invalid-feedback">
        Id Required
      </div>
  
</div>
<div class="input-group mb-3">
  <span class="input-group-text" ><i class="fas fa-eye-slash"  style="color:black;"></i></span>
  <input id="password" type="password" class="form-control" placeholder="User password"  required="required" name="password">
 <div class="invalid-feedback">
        password Required
      </div> 
  
</div>
<div class="text-center">
<button class="btn btn-success"><i class="fas fa-lock"></i> Submit</button>
</div>
</form>

  <strong><%=message %></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div> --%>
<%
			if(message!=null)
			{
			
			%>
			<span style="color: red"><%=message %></span>
<%} %>
<!-- </div>
</div> -->



< <%@include file="/common/common_footer.html" %> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>