<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Service Station</title>
<%@include file="/common/commoncss.html" %>
<script>
let imageArr=["pic10.jpg","pic12.jpg","pic17.jpg"]

let index=0
let url="/VehicleServiceStation/images/"
function animation()
{
let im=document.getElementById("img1")
im.src=url+imageArr[index]
	index++
	if(index>2)
		index=0

}
setInterval(animation,1000)
</script>

</head>
<body>

<div class="container-fluid bg-info"><h2>Vehicle service station</h2></div>

<%@include file="/common/common_header.html" %>

<img id="img1" alt="" src="/VehicleServiceStation/images/pic15.jpg" style="width: 600px;height: 400px;margin-left: 20%">
<h2>this is for layout</h2>
<!-- <div style="width:40%;height:300px;background-color: orange;margin-left: 70px;margin-top: 50px;float: Left">
<video  src="/VehicleServiceStation/video/vid1.mp4" style="width: 100%;height: 300px" controls autoplay muted="muted">
</video>
</div> -->

<%@include file="/common/common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>