<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>employee</title>
<%@include file="/common/commoncss.html" %>
</head>
<body>
<div class="container-fluid bg-info"><h2>Vehicle service station</h2></div>

<%@include file="/common/common_header.html" %>

<form method="post" action="/VehicleServiceStation/Employee">

<input type= "text" class="form-control" name="providerid" placeholder="providerid">
<input type= "text" class="form-control" name="name" placeholder="name">

<input type= "text" class="form-control" name="email" placeholder="email">

<input type= "text" class="form-control" name="phone" placeholder="phone">
<input type= "text" class="form-control" name="empid" placeholder="employeeid">

<button>Submit</button>










</form>








<%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>