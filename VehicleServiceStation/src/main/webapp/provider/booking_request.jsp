<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Request</title>
<%@include file="/common/commoncss.html"%>
</head>
<body style="margin-bottom: 40%">
<!-- <div class="container-fluid bg-info"><h2>Vehicle service station</h2></div>
 -->
<%@include file="/provider/provider_header.html" %>

<%
String provider_id=(String)session.getAttribute("sessionKey");
String role=(String)session.getAttribute("role");
System.out.print(session.getId());
if(provider_id==null ||session.isNew())
{
	request.setAttribute("msg", "Unauthorised Access,Please do login First");
	RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_login.jsp");
	rd.forward(request, response);
}
else{
	if(role.equals("provider"))
	{
%> 
<% 

ProviderDao dao=new ProviderDao();
ArrayList<BookingServices>bookinglist=dao.viewBooking(provider_id);
ArrayList<Employees>emplist=dao.viewEmployee(provider_id);
if(bookinglist.size()>0)
{



%>

<form method="post" action="/VehicleServiceStation/ConfirmBooking">
<table class="table" style="margin-top: 2%;margin-left: 20%;width: 60%;height: 400px;text-indent: center" >
		<thead >
			<tr>
			<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">Status</th>
			<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">ClientName</th>
				
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">Email_ID</th>
				<th scope="col"style="background-color: Lightblue;font-size: 20px;font-family: cooper">Contact_number</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">Service name</th>
				<th scope="col" style="background-color: Lightblue;font-size: 20px;font-family: cooper">service charge</th>	
				
				
			</tr>
		</thead>
		<tbody >
			<%
    for(BookingServices bs:bookinglist)
    {
    	
   
    	
    
    
    %>
			<tr>
			<th scope="row" style="background-color: silver;font-size: 15px"><input type="checkbox" name="chkbkid" value="<%=bs.getBooking_id()%>">
				<th scope="row" style="background-color: silver;font-size: 15px"><%=bs.getClient().getClient_name() %></th>

				<th style="background-color: silver;font-size: 15px"><%=bs.getClient().getEmail_ID() %></th>
				<th style="background-color: silver;font-size: 15px"><%=bs.getClient().getContact_number() %></th>
				<th style="background-color: silver;font-size: 15px"><%=bs.getServices().getService_name() %></th>
				<th style="background-color: silver;font-size: 15px"><%=bs.getServices().getService_charge() %></th>
				
			</tr>
			<%}%>

		</tbody>
	</table>
	
<div class="form-group mt-3">
    
    <select class="form-select" aria-label="Default select example" name="employees" required>
    <% 
for(Employees e:emplist)
{
	%>
	<option value="">Select Employee</option>
  <option value="<%=e.getEmp_id() %>"><%=e.getName() %>
  <%} %>
</select>

  </div>
  <div class="form-group mt-3">
				<!-- <label for="Comment">Description</label> -->
				<textarea class="form-control" name="details" id="comment"
					rows="3" placeholder="Response" required></textarea>
					
			</div>
  <div class="text-center">
				<button type="submit" class="btn btn-primary" style="margin-top: 5%">Submit</button>
			</div>
  </form>


<%@include file="/common/common_footer.html" %>
.




<% }
else{%>
<h2>NO  New Booking Request </h2>

<% }
	}
	else
	{
		request.setAttribute("msg", "Your Role is not authorised to access this page");
		RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_login.jsp");
		rd.forward(request, response);
	}
	}%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>