<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>booking Status</title>

<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic37.avif);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style>
</head>
<body>
<%@include file="/client/client_header.html" %>


<%
String client_ID=(String)session.getAttribute("sessionKey");
String role=(String)session.getAttribute("role");
System.out.print(session.getId());
if(client_ID==null ||session.isNew())
{
	request.setAttribute("msg", "Unauthorised Access,Please do login First");
	RequestDispatcher rd=request.getRequestDispatcher("/client/client_login.jsp");
	rd.forward(request, response);
}
else{
	if(role.equals("client"))
	{
%> 
<%
ClientDao dao=new ClientDao();
ArrayList<BookingServices>Statuslist=dao.viewBookingStatus(client_ID);


%>

<div class="row">
<%
for(BookingServices bs:Statuslist)
{
%>
<div class="col-5 g-info mx-5" style="margin-top: 10%">
<div class="card" style="background-color: #D2B4DE" >
<div class="card-body" >
<%-- <h5 class="card-title"><%=s.getProvider_id()%></h5> --%>

<h4 class="card-text">Service taken: <%=bs.getServices().getService_name() %></h4>
<h4 class="card-text">Service Charge: <%=bs.getServices().getService_charge() %></h4>
<h4 class="card-text">Employee Name : <%=bs.getEmployees().getName() %></h4>
<h4 class="card-text"> Contact Details : <%=bs.getEmployees().getPhone()%></h4>

<%-- <p class="card-text" style="color: navy"><%=s.getService_charge() %></p>
<p class="card-text" style="color: green" ><%=s.getDescription() %>
<a href="/VehicleServiceStation/commonjsp/view_discounts.jsp?sid=<%=s.getService_id()%>">view discounts</a>
</div> --%>
</div>
</div>
</div>
<%} %>
</div>








<%@include file="/common/common_footer.html" %>


<%} 
	else
	{
		request.setAttribute("msg", "Your Role is not authorised to access this page");
		RequestDispatcher rd=request.getRequestDispatcher("/client/client_login.jsp");
		rd.forward(request, response);
	}
}%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>