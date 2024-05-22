<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="vss.dao.*,vss.beans.*" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminProfile</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/commoncss.html" %>
 <style>
 body{
background-image: url(/VehicleServiceStation/images/pic34.avif);
background-position: center;
background-repeat: no repeat;
background-size: cover;

}

</style> 
</head>
<body>



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
<div class="container-fluid bg-info">
<%-- <h1>Hello <%=admin_id%> You are <%=role %></h1> --%>

</div>
<div class="container">
<%

AdminDao dao=new AdminDao();
Admin a=dao.viewProfile(admin_id);//passing session id value

%>
<%-- <h4>Name:<%=a.getName() %></h4> --%>
<!-- profile code here -->
<section class="vh-75"  /* #f4f5f7; */" >
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100" >
      <div class="col col-lg-6 mb-4 mb-lg-0" style="background-color: #48C9B0">
        <div class="card mb-3" style="border-radius: .5rem;background-color: #E8F8F5">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center "
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="/VehicleServiceStation/images/pic24.jpg"
                alt="Avatar" class="img-fluid my-5" style="width: 150px;height: 150px" />
              <h5><%=a.getName() %></h5>
              <p> You are <%=role %></p>
            <a href="/VehicleServiceStation/admin/admin_edit_profile.jsp"><i class="far fa-edit mb-5"></i></a>
            </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6> Your Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Email</h6>
                    <p class="text-muted"><%=a.getEmail() %></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Phone</h6>
                    <p class="text-muted"><%=a.getPhone() %></p>
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