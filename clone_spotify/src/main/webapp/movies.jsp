<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ page import="java.io.File"%>
<html lang="en">
<head>
<title>movies page</title>
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
	<h2>Pick your movie</h2>
						<%
											String mname= request.getParameter("mname");
											String path ="/Users/khushinegi/javaAdvance/clone_spotify/src/main/webapp/songs";
											File file= new File(path);
											File files[]= file.listFiles();
											for(File f:files) 
											{
												if(f.getName().startsWith(mname))
												{
											       %>
											   <a href="songs.jsp?mname=<%=f.getName()%>">
											   <%=f.getName()%>
											   </a><br>
										        	<%
											    }
										    }
											%>					</body>
											</html>