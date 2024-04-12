<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>


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
				<img src="img/Home 1.jpg" class="d-block w-100" alt="..."
					height="600px">
				<div class="carousel-caption d-none d-md-block">
					<h5>Take The Best Quality Health Treatment</h5>
					<p>Give the gift of good health to your loved ones</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/Home 2.jpg" class="d-block w-100" alt="..."
					height="600px">
				<div class="carousel-caption d-none d-md-block">
					<h5>Quality Management System</h5>
					<p>DevCare proHealth Check for a healthier tomorrow! </p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/Home 3.jpg" class="d-block w-100" alt="..."
					height="600px">
				<div class="carousel-caption d-none d-md-block">
					<h5>Occupational Health and Safety Management System</h5>
					<p>A Good Laugh and Long Sleep Are The Best Cures In Doctor's Book</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- service -->
	<div class="container p-3">
		<p class="text-center fs-2">Key Feature of Our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Homeopathy</p>
								<p>Explore alternative medicine practices like homeopathy for holistic wellness solutions.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Dentistry</p>
								<p>Discover advanced dental care for healthy smiles and oral hygiene.</p>
							</div>
						</div>
					</div>


					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medicine</p>
								<p>Explore modern medicine for comprehensive healthcare solutions and treatment options.</p>
							</div>
						</div>
					</div>


					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Blood Bank</p>
								<p>Support community health by donating blood to our local blood bank.</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/service.jpg" height="90%" width="120%">
			</div>
		</div>
	</div>

	<hr>

	<div class="cointer p-2">
		<p class="text-center fs-2">Our Team</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc5.png" width="300px" height="300px">
						<p class="fw-bold fs-5">Dr. Debarjit</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Jani</p>
						<p class="fs-7">(Dentist)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. satya</p>
						<p class="fs-7">(Orthologist)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Susri</p>
						<p class="fs-7">(Cardiologist)</p>
					</div>
				</div>
			</div>

		</div>
	</div>


<%@include file="component/footer.jsp" %>
</body>
</html>