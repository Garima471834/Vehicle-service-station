<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client profile</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
<style>
 body{
background-image: url(/VehicleServiceStation/images/car.jpg);
background-position: center;
background-repeat: no repeat;
background-size:cover;


}

</style>
</head>
<body>
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
<%@include file="/client/client_header.html" %>
<!-- <h1>this is a client home page</h1>
 -->
<div class="container-fluid bg-info">
<%-- <h1>Hello <%=client_ID%> You are <%=role %></h1> --%>

</div>
<div class="container">
<%
ClientDao dao=new ClientDao();
Client c=dao.viewProfile(client_ID);//passing session id value
%>

<!-- profile code here -->
<section class="vh-75" /* #f4f5f7; */">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;background-color:#D6EAF8">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center "
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="/VehicleServiceStation/images/pic17.jpg"
                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
              <h5><%=c.getClient_name() %></h5>
              <p> You are <%=role %></p>
            <a href="/VehicleServiceStation/client/client_edit_profile.jsp"><i class="far fa-edit mb-5"></i></a>
            </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6> Your Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Email</h6>
                    <p class="text-muted"><%=c.getEmail_ID() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Phone</h6>
                    <p class="text-muted"><%=c.getContact_number() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>City</h6>
                    <p class="text-muted"><%=c.getCity() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Address</h6>
                    <p class="text-muted"><%=c.getAddress() %></p>
                  </div>
                </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</div>
<%@include file="/client/client_footer.html" %>

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