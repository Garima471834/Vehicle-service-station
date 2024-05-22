<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="vss.dao.*,java.util.*,vss.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View contact</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html"%>
</head>
<body style="background-color: cadetblue;margin-bottom: 20%">

	<%@include file="/admin/admin_header.html"%>
	<h1 style="text-align: center;color: purple;margin-top: 1%"><i><u><b> View all Contacts</b></u></i></h1>
	<%
AdminDao dao=new AdminDao();//dao class object
ArrayList<Contacts>contactList=dao.viewContacts();
%>
	<table class="table" style="margin-top: 2%;margin-left: 20%;width: 60%;height: 400px;text-indent: center" >
		<thead >
			<tr>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">ContactPersonName</th>
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">EmailId</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">PhoneNumber</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">UserQuestion</th>
			</tr>
		</thead>
		<tbody >
			<%
    for(Contacts c:contactList){
    	
    
    
    %>
			<tr>
				<th scope="row" style="background-color: silver;font-size: 15px"><%=c.getUser_name() %></th>

				<th style="background-color: silver;font-size: 15px"><%=c.getUser_email() %></th>
				<th style="background-color: silver;font-size: 15px"><%=c.getUser_phone() %></th>
				<th style="background-color: silver;font-size: 15px"><%=c.getUser_question() %></th>
			</tr>
			<%}
     %>

		</tbody>
	</table>
	<%@include file="/admin/admin_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>