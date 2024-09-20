<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ page import="java.io.File"%>
<html lang="en">
<head>
<title>play page</title>
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
	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage text_align_center">
						<h2>Your song</h2>
						<%
						String mname = request.getParameter("mname");
						String sname = request.getParameter("sname");
						%>
						<audio controls="controls">
							<source src="songs/<%=mname%>/<%=sname%>" type="audio/mp3">

						</audio>
					</div>
				</div>
			</div>
			</div>
			</div>
			</body>
			</html>