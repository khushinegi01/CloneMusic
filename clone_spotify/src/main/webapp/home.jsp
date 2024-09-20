<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ page import="java.io.File"%>
<html lang="en">
<head>
<title>home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="styles.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="container-fluid p-5 bg-danger text-white text-center">
		<h1>Clone Music</h1>
		<p>Discover a world of music at your finger-tips with
			OnlineMusicPortal, the ultimate destination for music lovers. Whether
			you are into pop, rock, classical, OnlineMusicPortal has something
			for everyone. Our extensive library features millions of tracks from
			artists around the globe, ensuring you will always find the perfect
			sound-track for any moment.</p>
	</div>
	<!-- for recent adds -->
	<div class="container mt-5">
		<div class="row">
			<h2>Recent Adds</h2>
			<div class="col-sm-4">
				<div class="card" style="width: 428px">
					<img class="card-img-top img-fluid" 
					src="recent/Animal/poster.jpeg" alt="Card image" style="height: 542px;" />
					<div class="card-body">
						<h4 class="card-title"><a href="songs.jsp?mname=Animal">Animal</a></h4>
						<p class="card-text">Animal is the soundtrack to the 2023
							Hindi-language action drama film of the same name directed by
							Sandeep Reddy Vanga and starring Ranbir Kapoor, Anil Kapoor,
							Bobby Deol, Rashmika Mandanna and Tripti Dimri.</p>

					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card" style="width: 428px">
					<img class="card-img-top img-fluid"
						src="recent/Ms Dhoni The Untold Story/poster.jpeg"
						alt="Card image" style="height: 542px;" />
					<div class="card-body">
						<h4 class="card-title"><a href="songs.jsp?mname=Ms Dhoni The Untold Story">MS Dhoni</a></h4>
						<p class="card-text">M.S. Dhoni The Untold Story is the
							soundtrack album to the 2016 Hindi-language film of the same name
							directed by Neeraj Pandey.</p>

					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card" style="width: 400px">
					<img class="card-img-top img-fluid"
						src="recent/Yeh jawani hai deewani/poster.jpeg" alt="Card image"
						style="height: 542px;" />
					<div class="card-body">
						<h4 class="card-title"><a href="songs.jsp?mname=Yeh jawani hai deewani">Yeh jawani hai deewani</a></h4>
						<p class="card-text">Yeh Jawaani Hai Deewani is the soundtrack
							to the 2013 Hindi film of the same name directed by Ayan Mukerji.</p>

					</div>
				</div>
			</div>
		</div>


		<!-- links for songs -->
		<h2>Pick your initial</h2>
		<%
						   for (int i = 65; i <= 90; i++) {
						%>
		<a href="movies.jsp?mname=<%=(char)i%>"> <%=(char)i%>
		</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<%
							}
						%>

	</div>
	<div class="container mt-5">
	<div class="slideshow-container">
		<div class="slides-wrapper">
			<%
	          	String path ="/Users/khushinegi/javaAdvance/clone_spotify/src/main/webapp/artist";
	          	File file=new File(path);
	          	File files[]= file.listFiles();
	          	for(File f:files){
	          		if (!f.getName().equals(".DS_Store")) {
	        %>
			<div class="slide">
				<div class="card artist-card" style="max-width: 514px; height:550px;">
					<a href="artist.jsp?name=<%=f.getName()%>" class="artist-link">
						<img src="artist/<%=f.getName()%>/<%=f.getName()%>.jpeg" alt="no image found" class="card-img-top" max-width="514px" height="329px">	
						 <div class="card-body">
							<h5 class="card-title"><%=f.getName()%></h5>
						</div>
					</a>
				</div>
			</div>
			<%
				}
	          	}
			%>
		</div>
		<!-- Controls -->
		<a class="prev" onclick="moveSlides(-1)">&#10094;</a>
		<a class="next" onclick="moveSlides(1)">&#10095;</a>
	</div>
</div>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="script.js"></script>
</body>
</html>
