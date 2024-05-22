<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rating and reviews</title>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic31.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>
</head>
<body style="background-color: teal;margin-bottom: 40%">
<%@include file="/common/common_header.html" %>

<h1 style="color: white;text-align: center;margin-top: 1%"><b><u><i class="fas fa-star" style="color: navy"></i><i class="fas fa-star" style="color: violet"></i><i>Rating and Reviews</i><i class="fas fa-star" style="color: purple"></i><i class="fas fa-star" style="color: red"></i></u></b></h1>
<%
UserDao dao=new UserDao();
ArrayList<feedbacks>feedbackList=dao.viewfeedbacks();





%>

<div class="row">
<%
for(feedbacks f:feedbackList)
{
%>
<div class="col-5 g-info mx-4">
<div class="card" style="background-color: lightblue;margin-top: 10%;margin-left: 30%;border-radius: 5rem;text-align: center">
<div class="card-body">
<h5 class="card-title" style="color: black"><%=f.getName() %></h5>
<p class="card-text" style="color: navy"><%=f.getRemarks() %>
<h4 class="card-text" style="color: red">Ratings:<%=f.getRatings() %></h4>
</div>
</div>
</div>
<%} %>
</div>
 <%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>