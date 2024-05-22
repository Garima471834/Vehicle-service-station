<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProviderLogin</title>
<%@include file="/common/commoncss.html" %>
 <style>
 body{
background-image: url(/VehicleServiceStation/images/pic27.jpg);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style> 
</head>
<body style="background-color: silver">
<%
String message=(String)request.getAttribute("msg");
%>
<div class="container-fluid bg-primary"><!-- <h2>Vehicle Service Station</h2> --></div>
<%@include file="/common/common_header.html" %>




<section class="vh-50 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5" style="margin-bottom: 25%">
        <div class="card bg-secondary text-white" style="border-radius: 8rem;">
          <div class="card-body p-5 text-center" >

            <div class="mb-md-5 mt-md-4 pb-5" >
<form method="post" action="/VehicleServiceStation/Provider_Login" novalidate="novalidate" class="needs-validation">

              <h2 class="fw-bold mb-2 text-uppercase" style="color: navy"><b><u><i>Login</i></u></b></h2>
              <p class="text-dark-50 mb-4">Please enter your ID and password!</p>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typeEmailX">ProviderID</label>
                <input type="text" id="typeEmailX" class="form-control form-control-lg" name="username" required/>
                
              </div>

              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX">Password</label>
                <input type="password" id="typePasswordX" class="form-control form-control-lg" name="password" required/>
                
              </div>

              <p class="small mb-3 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

              <button class="btn btn-outline-light btn-lg px-5" type="submit" style="color: navy" >Login</button>

              <div class="d-flex justify-content-center text-center mt-2 pt-1">
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-1"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>

            <div>
              <p class="mb-2">Don't have an account? <a href="/VehicleServiceStation/provider/provider_registeration.jsp" class="text-white-50 fw-bold">Sign Up</a>
              </p>
              
            </div>
            

</form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<%-- <div class="row" style="margin-top:10%;margin-left: 40%">
<div class="col-4">
<form method="post" action="/VehicleServiceStation/Provider_Login" novalidate="novalidate" class="needs-validation">


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
<!-- </div> -->




 <%@include file="/common/common_footer.html" %> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>