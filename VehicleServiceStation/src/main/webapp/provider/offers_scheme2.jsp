<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Offer and scheme</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/pic23.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>
</head>
<body style="margin-bottom: 40%">
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
<%@include file="/provider/provider_header.html" %>
<!-- <h1>this is a provider home page</h1>
 -->
<%-- <div class="container-fluid bg-info">
<h1>Hello <%=provider_id%> You are <%=role %></h1> --%>
<%

ProviderDao dao=new ProviderDao();
ArrayList<Offers_Scheme>offerlist=dao.viewoffer(provider_id);

%>
<form method="post" action="/VehicleServiceStation/Delete_Scheme">
<table class="table">
  <thead>
    <tr>
    <th scope="col">Status</th>
    
 <th scope="col">ServiceID</th>
 
      <th scope="col">Discount Offer</th>
     
      
      
    </tr>
  </thead>
  <tbody>


	
  <% 	
for(Offers_Scheme os : offerlist)
{
%>

<tr>
<th scope="row" style="font-size: 15px"><input type="checkbox" name="chkid" value="<%=os.getScheme_id()%>">
<%-- <th scope="row" style="color:#FF7F50"><%=os.getScheme_id()%></th> --%>
   <th style="color:#FF7F50"><%=os.getService_id()%></th>
    <th style="color:#FF7F50"><%=os.getDiscount_offers()%></th>
    
    
    </tr>
    <%} %>
    
  </tbody>
</table>
<div class="text-center">
				<button type="submit" class="btn btn-primary" style="margin-top: 5%">Delete</button>
			</div>
</form>


<%@include file="/provider/provider_footer.html" %>
<%}
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