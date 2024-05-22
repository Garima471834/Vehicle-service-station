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
ArrayList<Services>ServiceList=dao.viewServices(provider_id);

%>
<div style="background-color: silver;float: left;margin-left: 20%;width: 50%;height: 400px;margin-top: 5%;border-radius: 5rem">
<form method="Post" action="/VehicleServiceStation/Provider_Offers" novalidate="novalidate" class="needs-validation">


<div class="col-md-6 mb-4" style="margin-top: 10%;margin-left: 10%;font-size: 20px">
                  <div class="form-outline" >
                  
                  <label class="form-label" for="form3Example2">Choose offers:</label>
<select name="servicelist" id="servicelist" required>
 <option selected disabled value="">select services</option> 
<%
for(Services s:ServiceList)
{
	%>
	<option value="<%=s.getService_id() %>"><%=s.getService_name() %></option>
	<%} %>
</select>
		

</div>
</div>

<div class="col-md-6 mb-4" style="margin-top: 5%;margin-left: 10%;font-size: 20px">
                  <div class="form-outline">
                  <label class="form-label" for="form3Example2">Offers/Scheme:</label>
                    <textarea   id="form3Example2" class="form-control" name="offers"  required ></textarea>
                    
                  </div>
                </div>

<div class="text-center">
<button class="btn btn-primary"><i class="fas fa-lock"></i> Submit</button>
</div>





</form>

</div>





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