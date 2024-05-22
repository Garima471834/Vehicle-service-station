<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Service Station</title>
<%@include file="/common/commoncss.html"%>
<script>
	let imageArr = [ "pic10.jpg", "pic12.jpg", "pic17.jpg", "pic19.jpg",
			"pic8.jpg" ]

	let index = 0
	let url = "/VehicleServiceStation/images/"
	function animation() {
		let im = document.getElementById("img1")
		im.src = url + imageArr[index]
		index++
		if (index > 4)
			index = 0

	}
	setInterval(animation, 2000)
	
</script>

 <style>
body {
	background-image: url(/VehicleServiceStation/images/pic26.jpg);
	background-position: center;
	background-repeat: no repeat;
	background-size: cover;
}
</style>
 
 
  

</head>
<body style="background-color: teal">


	<%@include file="/common/common_header.html"%>
<div class="col-6">
	<h1
		style="margin-top: 2%; margin-left: 5%; text-align: center; text-shadow: 2px 2px 5px purple;">
		<u><i>Vehicle Service Station</i></u>
	</h1>
	</div>
	<div class="col-6">
	<p
		style="text-align: justify; color: black; margin-top: 2%;float: left;margin-left: 3%;font-size: 20px">Vehicle
		Service Station portal is a platform that provides information and
		booking services for vehicle maintenance, repair, and related
		services. The goal of these portals is to make it easier for vehicle
		owners to find and book the services they need, as well as to provide
		a convenient and efficient experience for both customers and service
		providers. This portal will enable any bike or car user to search and
		communicate with any service center in vicinity. The end user can find
		a service center and book the services online provided by that
		particular service center. The end user can also place a request for
		pick and drop of bike/car if needed. The service centers will be
		viewed on the basis of the city selected. The location can also be
		detected automatically.The burgeoning complexity of modern vehicles, coupled with the hectic pace of contemporary life, has underscored the need for streamlined and user-centric approaches to vehicle maintenance. Against this backdrop, the Vehicle Service Station portal emerges as a beacon of innovation and efficiency, offering a seamless platform for vehicle owners to access a myriad of maintenance and repair services with unparalleled convenience!
Central to the ethos of the Vehicle Service Station portal is the cultivation of transparency and trust within the automotive servicing ecosystem. In an industry often characterized by opacity and uncertainty, the portal stands as a bastion of openness, providing users with detailed insights into the profile of service centres, including service specialties, pricing structures, and authentic user reviews. By fostering a culture of transparency and accountability, the portal not only empowers users to make informed decisions but also incentivizes service providers to uphold high standards of quality and reliability!
		</p></div>
		<div class="col-6" style="margin-left: 50%">
		<div style="width: 100%; height: 700px; margin-top: 2%">
			<img id="img1" alt="" src="/VehicleServiceStation/images/pic15.jpg"
				style="width: 90%; height: 700px; margin-left: 8%;margin-right: 2%">
		</div>
		</div>
 <!-- <div class="col-6" style="margin-left: 50%">
	<div style="margin-top: 5%; margin-bottom: 70%">
		<div id="carouselExampleCaptions" class="carousel slide">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/VehicleServiceStation/images/pic16.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Service Station</i>
						</h1>
						<p>This service station provide many types services related to
							vehicle.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/VehicleServiceStation/images/pic9.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Washing</i>
						</h1>
						<p>Change the engine oil. And replace the air filter.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/VehicleServiceStation/images/pic15.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Repairing</i>
						</h1>
						<p>Replace the oil filter and the fuel filter</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
</div> -->
 
		<!-- <div class="card" style="width: 18rem;">
  <img src="/VehicleServiceStation/images/pic5.jpg" class="card-img-top" alt="..." style="float: left">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div> -->

		<h1 style="margin-top: 10%; margin-left: 5%;text-shadow: 2px 2px 5px violet;">
			<u><i>Objective:-</i></u>
		</h1>
		<ul
			style="font-size: 20px; color: black; margin-top: 2%; margin-left: 10%">
			<li>To provide a convenient and efficient way for vehicle owners
				to find and book the services they need.</li>
			<li>To make it more better for service providers to reach
				customers and manage their businesses more effectively.</li>
			<li>To provide a centralized platform for customers to compare
				services and prices and make informed decisions about which services
				to book.</li>
			<li>To streamline the payment process and reduce the risk of
				errors and discrepancies.</li>


		</ul>
		<!-- <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic16.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic17.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic18.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic19.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic15.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic14.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic13.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
      <div class="swiper-slide"><img src="/VehicleServiceStation/images/pic12.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%"></div>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </div>

  Swiper JS
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
 -->
  <!-- Initialize Swiper -->
 <!--  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
		
    </script>	
		 -->
		
		
	 <div style="margin-top: 5%; margin-bottom: 70%">
		<div id="carouselExampleCaptions" class="carousel slide">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/VehicleServiceStation/images/pic16.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Service Station</i>
						</h1>
						<p>This service station provide many types services related to
							vehicle.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/VehicleServiceStation/images/pic9.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Washing</i>
						</h1>
						<p>Change the engine oil. And replace the air filter.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/VehicleServiceStation/images/pic15.jpg"
						class="d-block w-75" alt="..."
						style="width: 50%; height: 500px; margin-left: 15%">
					<div class="carousel-caption d-none d-md-block">
						<h1>
							<i>Vehicle Repairing</i>
						</h1>
						<p>Replace the oil filter and the fuel filter</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div> -->
		<div class="card"
			style="width: 20rem; color: black; margin-top: 5%; margin-left: 10%; border-radius: 5rem; background-color: silver">

			<div class="card-body">
				<p class="card-text">
				<ul style="margin-top: 5%; font-size: 20px">
					<li><a href="/VehicleServiceStation/admin/view_contacts.jsp">All
							Contact's Available here.</a></li>
					<li><a href="/VehicleServiceStation/admin/view_feedbacks.jsp">View
							Feedback Details</a></li>
				</ul>
				</p>
			</div>
		</div>
		<div class="row row-cols-1 row-cols-md-2 g-4" style="margin-left: 3%;margin-right: 3%">
  <div class="col">
    <div class="card" style="margin-top: 5%">
      <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/041.webp" class="card-img-top" alt="Hollywood Sign on The Hill"/>
      <!-- <div class="card-body">
        <h5 class="card-title">Card title</h5> -->
        <!-- <p class="card-text">
          This is a longer card with supporting text below as a natural lead-in to
          additional content. This content is a little bit longer.
        </p> -->
      </div>
    </div>
  
  <div class="col">
    <div class="card" style="margin-top: 5%">
      <img src="/VehicleServiceStation/images/pic8.jpg" alt="Palm Springs Road"/>
      <!-- <div class="card-body"> -->
        <!-- <h5 class="card-title">Card title</h5>
        <p class="card-text">
          This is a longer card with supporting text below as a natural lead-in to
          additional content. This content is a little bit longer.
        </p> -->
      </div>
    </div>
  
  <div class="col">
    <div class="card">
      <img src="/VehicleServiceStation/images/pic4.jpg" class="card-img-top" alt="Los Angeles Skyscrapers"/>
     <!--  <div class="card-body"> -->
        <!-- <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.
        This is a longer card with supporting text below as a natural lead-in to
          additional content.</p> -->
      </div>
    </div>
  
  <div class="col">
    <div class="card">
      <img src="/VehicleServiceStation/images/pic17.jpg" class="card-img-top" alt="Skyscrapers"/>
     <!--  <div class="card-body"> -->
        <!-- <h5 class="card-title">Card title</h5>
        <p class="card-text">
          This is a longer card with supporting text below as a natural lead-in to
          additional content. This content is a little bit longer.
        </p> -->
      </div>
    </div>
  </div>
</div>

		
		

		<!-- carousel end -->

		<%@include file="/common/common_footer.html"%>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>