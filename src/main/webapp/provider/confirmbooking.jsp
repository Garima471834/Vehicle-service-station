<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm booking</title>
<%@include file="/common/commoncss.html" %>
</head>
<body>
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
ProviderDao dao=new ProviderDao();//dao class object
ArrayList<BookingServices>ConfirmBookingList=dao.viewConfirmBooking(provider_id);
%>

<table class="table">
  <thead>
    <tr>
 <th scope="col">Booking Status</th>
      <th scope="col">Client Name</th>
      <th scope="col">Service Name</th>
      <th scope="col">Provider Response</th>
      <th scope="col">Employee Name</th>
      
    </tr>
  </thead>
  <tbody>
    <%
    
    for(BookingServices bs:ConfirmBookingList)
    {
    
    %>
    <tr><th scope="row" style="color:#FF7F50"><%=bs.getBooking_status() %></th>
    <th style="color:#FF7F50"><%=bs.getClient().getClient_name()%></th>
    <th style="color:#FF7F50"><%=bs.getServices().getService_name() %></th>
    <th style="color:#FF7F50"><%=bs.getProvider_response() %></th>
     <th style="color:#FF7F50"><%=bs.getEmployees().getName() %></th>
    </tr>
    <%} %>
    
  </tbody>
</table>
<%@include file="/provider/provider_footer.html" %>
<%
} 
	else{
		request.setAttribute("msg", "You Role is not authorized to access this page.");
		RequestDispatcher rd=request.getRequestDispatcher("/provider/provider_login.jsp");
		rd.forward(request, response);
	
	}
}

%>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>