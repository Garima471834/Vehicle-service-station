<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Providers</title>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic6.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>

</head>
<body style="background-color: teal;margin-bottom: 20%">


<%@include file="/common/common_header.html" %>
<h2 style="text-align: center;color: red"><u><b><i><i class="fas fa-user-friends" style="color: navy"></i><i class="fas fa-user-friends" style="color: navy"></i>Details of all Providers<i class="fas fa-user-friends" style="color: teal"></i><i class="fas fa-user-friends" style="color: teal"></i></i></b></u></h2>
<% 
UserDao dao=new UserDao();
ArrayList<Provider>ProviderList=dao.viewProviders();
		%>
<div class="row">
<%
for(Provider p:ProviderList)
{
%>
<div class="col-5 g-info mx-5" style="margin-top: 2%;margin-bottom: 3%">
<div class="card" style="background-color: silver">
<div class="card-body">
<h5 class="card-title"><%=p.getProvider_id() %></h5>
<p class="card-text" ><h4 style="color: black;font-size: 15px">Company Name:</h4><p style="color: navy"><%=p.getCompany_name() %></p>
<p class="card-text" style="color: navy"><h4 style="color: black;font-size: 15px">Contact Number:</h4><p style="color: navy"><%=p.getContact_number() %></p>
<p class="card-text" style="color: navy"><h4 style="color: black;font-size: 15px">Owner Name:</h4><p style="color: navy"> <%=p.getOwner_name() %></p>
<p class="card-text" style="color: navy"><h4 style="color: black;font-size: 15px">City:</h4><p style="color: navy"> <%=p.getCity() %></p>
<p class="card-text" style="color: navy"><h4 style="color: black;font-size: 15px">Address:</h4> <p style="color: navy"><%=p.getAddress() %></p>
<p class="card-text" style="color: navy"><h4 style="color: black;font-size: 15px">About Company:</h4><p style="color: navy"> <%=p.getAbout_company() %></p>
<a href="/VehicleServiceStation/commonjsp/view_services.jsp?pid=<%=p.getProvider_id() %>">view services</a>
</div>
</div>
</div>
<%} %>
</div>
<%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>