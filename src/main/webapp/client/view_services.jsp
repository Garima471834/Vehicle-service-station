<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Services</title>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic9.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>
</head>
<body style="background-color: teal;margin-bottom: 40%">
<%@include file="/client/client_header.html" %>
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
<h1 style="color: white;text-align: center;margin-top: 1%"><b><i><u><i class="fas fa-car-side" style="color: navy"></i>View All Services<i class="fas fa-car-side" style="color: red"></i></u> </i></b></h1> 
<% 
String provider_id=request.getParameter("pid");
		System.out.println(provider_id);
UserDao dao=new UserDao();
ArrayList<Services>ServiceList=dao.viewServices(provider_id);
%>



<form method="post" action="/VehicleServiceStation/BookServices">
<input type="text" name="pid" value="<%=provider_id %>">

<div class="row">
<%
for(Services s:ServiceList)
{
%>
<div class="col-5 g-info mx-5" style="margin-top: 10%">
<div class="card" style="background-color: skyblue" >
<div class="card-body" >
<%-- <h5 class="card-title"><%=s.getProvider_id()%></h5> --%>
<h4 class="card-text"><%=s.getService_name() %></h4>
<p class="card-text" style="color: navy"><%=s.getService_charge() %></p>
<p class="card-text" style="color: green" ><%=s.getDescription() %></p>
 <p class="card-text"><a href="/VehicleServiceStation/client/view_discounts.jsp?sid=<%=s.getService_id()%>">view discounts</a></p>

<p class="card-text"><input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="<%=s.getService_id() %>" name="service" /></p>

</div>

</div>
</div>
<%} %>

<button type="submit" class="btn btn-success" style="margin-top: 5%; margin-bottom: 5px;width: 40%;height: 40px">Submit</button>
</div>
</form>
<%-- <%@include file="/provider/provider_footer.html" %> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>