<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ page import="java.io.File"%>
<html lang="en">
<head>
<title>artist page</title>
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
	<div class="slideshow-container">
		<div class="slides-wrapper">
			<%
				String name= request.getParameter("name");
	          	String path ="/Users/khushinegi/javaAdvance/clone_spotify/src/main/webapp/artist/"+name+"/populars";
	          	File file=new File(path);
	          	File files[]= file.listFiles();
	          	for(File f:files){
	        %>
			<div class="slide">
				<div class="card artist-card" style="max-width: 514px; height:550px;">
					<a href="playpopular.jsp?mname=<%=name%>&sname=<%=f.getName()%>" class="artist-link">
						<img src="artist/<%=name%>/<%=name%>.jpeg" alt="no image found" class="card-img-top" max-width="514px" height="329px">						<div class="card-body">
							<h5 class="card-title"><%=f.getName()%></h5>
						</div>
					</a>
				</div>
			</div>
			<%
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
	