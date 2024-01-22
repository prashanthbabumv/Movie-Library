<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

table ,th,td,tr{
	border: 1px solid black;
	border-collapse: collapse;
}


</style>


</head>
<body>
<h1>welcome</h1>

<%List<Movie> movies=(List)request.getAttribute("movie");%>
<table>
<tr>
<th>id</th>
<th>Name</th>
<th>Price</th>
<th>Rating</th>
<th>Genre</th>
<th>Language</th>
<th>Image</th>
<th>Delete</th>
<th>Edit</th>
</tr>

<%for(Movie m:movies){ %>

<tr>

<td><%=m.getMovieid() %></td>
<td><%=m.getMoviename() %></td>
<td><%=m.getMovieprice() %></td>
<td><%=m.getMovierating() %></td>
<td><%=m.getMoviegenre() %></td>
<td><%=m.getMovielanguage() %></td>



<%String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64,<%=base64image%>"height="100px" width="150px"></td>

<td><a href="deletemovie?id=<%= m.getMovieid() %>">Delete</a></td>
<td><a href="editmovie?id=<%= m.getMovieid() %>">Edit</a></td>

</tr>
<%} %>

</table>
	
	
	
	
	
	
	<a href="addmovie.jsp">Add_Movies</a>
	
	<a href="logout">LogOut</a>
	
	
	
	
	
</body>
</html>