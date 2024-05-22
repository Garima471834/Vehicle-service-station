<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view discounts</title>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic28.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>
</head>
<body style="background-color: Lightpurple">
<%@include file="/common/common_header.html" %>
 <h1 style="text-align: center;margin-top: 1%"><u><i><b><i class="far fa-smile" style="color: blue;font-size: 50px;margin: 10px"></i><i class="far fa-smile" style="color: red;font-size: 50px;margin: 10px"></i><i class="far fa-smile" style="color: green;font-size: 50px;margin: 10px"></i><i class="far fa-smile" style="color: red;font-size: 50px;margin: 10px"></i><i class="far fa-smile" style="color: yellow;font-size: 50px;margin: 10px"></i><i class="far fa-smile"style="color: red;font-size: 50px;margin: 10px" ></i></b></i></u></h1> 
<% 
String service_id=request.getParameter("sid");
		System.out.println(service_id);
UserDao dao=new UserDao();
ArrayList<Offers_Scheme>SchemeList=dao.viewScheme(service_id);
%>
<div class="row">
<%
for(Offers_Scheme os:SchemeList)
{
%>

<div class="col-4 g-info mx-5" style="margin-top: 10%">
<div class="card" style="background-color: skyblue;border-radius: 4rem;text-align: center">
<div class="card-body">
<%-- <h5 class="card-title"><%=s.getProvider_id()%></h5> --%>
<h3 class="card-text"><%=os.getProvider_id()%></h3>

<h5 class="card-text" style="color: blue"><%=os.getSr().getService_name() %></h5>
<marquee style="direction: left-right" behavior="alternate"><h5 class="card-text" style="color: red"><%=os.getDiscount_offers()%></h5></marquee>

<p class="card-text"><%=os.getDate() %>


</div>
</div>
</div>
<%} %>
</div>




 <%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>