<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home page</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
<!-- <style>
 body{
background-image: url(/VehicleServiceStation/images/pic12.jpg);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style> -->
</head>
<body style="background-color: cadetblue">



<%
String admin_id=(String)session.getAttribute("sessionKey");
String role=(String)session.getAttribute("role");
System.out.print(session.getId());
if(admin_id==null ||session.isNew())
{
	request.setAttribute("msg", "Unauthorised Access,Please do login First");
	RequestDispatcher rd=request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
}
else{
	if(role.equals("admin"))
	{
		
%> 
 <%@include file="/admin/admin_header.html" %>
<div class="container-fluid">
<h1 style="text-align: center;margin-top: 15%">Hello <%=admin_id%> You are <%=role %></h1>



</div>
<%@include file="/admin/admin_footer.html" %>
<%}
	else
	{
		request.setAttribute("msg", "Your Role is not authorised to access this page");
		RequestDispatcher rd=request.getRequestDispatcher("/admin/admin_login.jsp");
		rd.forward(request, response);
	}
}%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>