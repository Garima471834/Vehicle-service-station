<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Provider home</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
</head>
<body style="background-color: lightSeaGreen">
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
<div class="container-fluid">
<h1 style="text-align: center;margin-top: 15%;color: purple">Hello <%=provider_id%> You are <%=role %></h1>

</div>
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