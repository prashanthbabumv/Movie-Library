<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/aloginstyle.css">
</head>
<body>
	<!-- <form action="adminlogin" method="post">
	
		<label for="adminemail">Admin Email</label>
		<input type="email" name="adminemail">
		<br>
		<br>
		<label for="adminpassword">Admin Password</label>
		<input type="password" name="adminpassword">
		<br>
		<br>
		<input type="submit">
	
	</form> -->
	
	
	<%-- <%String message=(String)request.getAttribute("message"); %>
	
	<%if(message!=null){ %>
	<%= message %>
	<%} %> --%>
	
	
	<div class="container align-items-center d-flex justify-content-center" id="bggg">
	
	<div class="row  p-5  shadow box-area" id="containerr">
	
	
	<div class="col-md-6 rounded-4 align-items-center d-flex justify-content-center">
	
	<div class="featured-image">
<img alt="" src="Image/adminpagephoto.jpg" class="img-fluid" style="width: 250px;height: 200px">
	</div>
	
	</div>
	
	<div class="col-md-6">
	<form action="adminlogin" method="post">
	
		<label for="adminemail" class="labell">Admin Email</label>
		<input type="email" name="adminemail">
		<br>
		<br>
		<label for="adminpassword"  class="labell">Admin Password</label>
		<input type="password" name="adminpassword">
		<%String message=(String)request.getAttribute("message"); %>
	
	<%if(message!=null){ %>
	<%= message %>
	<%} %>
		<br>
		<br>
		<input type="submit">
	
	</form>
	
	
	</div>
	</div>
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>