<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeedBack</title>
<%@include file="/common/commoncss.html" %>
<link rel="stylesheet" href="/VehicleServiceStation/stylecss/feedback_css.css">
</head>
<body>
<%@include file="/common/common_header.html" %>

<%
String message=(String)request.getAttribute("msg");
if(message!=null)
{
%>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong><%=message %></strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

<section>
<h1 id="heading"><i class="fas fa-star-half-alt" style="color: red"></i><i class="fas fa-star-half-alt" style="color: blue"></i><i class="fas fa-star-half-alt" style="color: navy"></i>Your FeedBack Is Important For Us<i class="fas fa-star-half-alt" style="color: purple"></i><i class="fas fa-star-half-alt" style="color: green"></i><i class="fas fa-star-half-alt" style="color: orange"></i></h1>
<form class="form-content-section needs-validation" id="main-content" action="/VehicleServiceStation/UserFeedBack" method="post" novalidate="novalidate">
<div class="form-group mt-3">
  <!--   <label for="contact">Name</label> -->
    <input type="text" name="username" class="form-control" id="contact" placeholder="Enter Name" required>
    <div class="invalid-feedback">
        Name Required
      </div>
  </div>
  <div class="form-group mt-3">
    <!-- <label for="emailid">Email address</label> -->
    <input type="email" name="email" class="form-control" id="emailid" aria-describedby="emailHelp" placeholder="Enter email" required>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    <div class="invalid-feedback">
       Email Id Required
      </div>
  </div>
  <div class="form-group mt-3">
    <!-- <label for="contact">Remarks</label> -->
    <input type="text" name="remarks" class="form-control" id="contact" placeholder="Enter text" required>
    <div class="invalid-feedback">
        Remarks Required
      </div>
  </div>
  
  <div class="form-group mt-3">
    
    <select class="form-select" aria-label="Default select example" name="rating" required>
  <option selected disabled value=""  class="form-select" id="validationServer04">Rating</option>
  <option value="1">*</option>
  <option value="2">**</option>
  <option value="3">***</option>
  <option value="4">****</option>
  <option value="5">*****</option>
</select>
<!-- </label> -->
    <!-- <textarea class="form-control" name="rating" id="comment" rows="3"></textarea> -->
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Post Comment</button>
  </div>
</form>

<%-- <h1><%=message %></h1> --%>
</section>



<%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="/VehicleServiceStation/common/validation.js"></script>
</body>
</html>