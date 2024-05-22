<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,java.util.*,vss.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View_feedback</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
</head>
<body style="background-color: silver;margin-bottom: 20%">

<%@include file="/admin/admin_header.html" %>
<h1 style="text-align: center;color: purple"><i><u><b>View All Feedback</b></u></i></h1>
<%
AdminDao dao=new AdminDao();//dao class object
ArrayList<feedbacks>feedbackList=dao.viewfeedbacks();
%>
<table class="table" style="margin-top: 2%;margin-left: 20%;width: 60%;height: 400px;text-indent: center">
		<thead>
			<tr>
				<th scope="col" style="background-color: teal;font-family: cooper;font-size: 20px">UserName</th>
				<th scope="col" style="background-color: teal;font-family: cooper;font-size: 20px">EmailId</th>
				<th scope="col" style="background-color: teal;font-family: cooper;font-size: 20px">Remarks</th>
				<th scope="col" style="background-color: teal;font-family: cooper;font-size: 20px">Ratings</th>
			</tr>
		</thead>
		<tbody>
			<%
    for(feedbacks f:feedbackList){
    	
    
    
    %>
			<tr>
				<th scope="row" style="background-color: lightblue"><%=f.getName() %></th>

				<th style="background-color: lightblue"><%=f.getEmail() %></th>
				<th style="background-color: lightblue"><%=f.getRemarks()%></th>
				<th style="background-color: lightblue"><%=f.getRatings() %></th>
			</tr>
			<%}
     %>

		</tbody>
	</table>

<%@include file="/admin/admin_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>