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
<%@include file="/common/common_header.html" %>
<h1 style="color: white;text-align: center;margin-top: 1%"><b><i><u><i class="fas fa-car-side" style="color: navy"></i>View All Services<i class="fas fa-car-side" style="color: red"></i></u> </i></b></h1> 
<% 
String provider_id=request.getParameter("pid");
		System.out.println(provider_id);
UserDao dao=new UserDao();
ArrayList<Services>ServiceList=dao.viewServices(provider_id);
%>






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
<p class="card-text" style="color: green" ><%=s.getDescription() %>
<a href="/VehicleServiceStation/commonjsp/view_discounts.jsp?sid=<%=s.getService_id()%>">view discounts</a>
</div>
</div>
</div>
<%} %>
</div>
<%-- <%@include file="/provider/provider_footer.html" %> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>