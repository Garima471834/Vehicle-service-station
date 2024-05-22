a<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Provider</title>
<%@include file="/common/commoncss.html" %>
</head>
<body>
<%@include file="/common/common_header.html" %>

<h1 style="text-align: center">Our provider</h1>
<%
String cityname=request.getParameter("city");
UserDao dao=new UserDao();
ArrayList<Provider>Plist=dao.searchProvider(cityname.toLowerCase());
if(Plist.size()>0)
{



%>

<table class="table" style="margin-top: 2%;margin-left: 20%;width: 60%;height: 400px;text-indent: center" >
		<thead >
			<tr>
			<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">CompanyName</th>
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">OwnerName</th>
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">Email_ID</th>
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">Contact_number</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">About company</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">Address</th>	
				
				
			</tr>
		</thead>
		<tbody >
			<%
    for(Provider p:Plist){
    	
    
    
    %>
			<tr>
				<th scope="row" style="background-color: silver;font-size: 15px"><%=p.getCompany_name() %></th>

				<th style="background-color: silver;font-size: 15px"><%=p.getOwner_name() %></th>
				<th style="background-color: silver;font-size: 15px"><%=p.getEmail_ID() %></th>
				<th style="background-color: silver;font-size: 15px"><%=p.getContact_number() %></th>
				<th style="background-color: silver;font-size: 15px"><%=p.getAbout_company() %></th>
				<th style="background-color: silver;font-size: 15px"><%=p.getAddress() %></th>
			</tr>
			<%}
     %>

		</tbody>
	</table>


<%} 

else
{
	%>
	<div>No Provider Found</div>
	

<%} %>

<%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>