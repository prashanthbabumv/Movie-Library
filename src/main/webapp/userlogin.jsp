<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




</head>


<body>

 <%-- <form action="userlogin" method="post">
	
		<label for="usermail">User Email</label>
		<input type="email" name="useremail">
		<br>
		<br>
		<label for="userpassword">User Password</label>
		<input type="password" name="userpassword">
		<br>
		<br>
		<input type="submit">
	
	</form> 

	 <%String message=(String)request.getAttribute("message"); %>
	
	<%if(message!=null){ %>
	<%= message %>
	<%} %> --%>
<div class="container d-flex justify-content-center align-items-center min-vh-100" >

<div class="row">
<div class="col">
 <form action="userlogin" method="post" >
  <div class="form-group" >
    <label for="exampleInputEmail1">User Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="useremail" style="width: 350px">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">User Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  name="userpassword" style="width: 350px">
    <%String message=(String)request.getAttribute("message"); %>
	
	<%if(message!=null){ %>
	<%= message %>
	<%} %> 
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>




</div>


</div>

































<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>