<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update form</title>
</head>
<body>


<h3>Update A Beer by ID</h3>

<a href= "home.do"> Nevermind, go back</a>

	<form action="updateBeer.do" method="POST">
		<label for="id">ID of beer you want to change:</label> <input
			type="text" name="id">
			 <label for="name">New name:</label> <input
			type="text" name="name"> <br> <label for="description">New Description:</label>
		<input type="text" name="description"> <br> <label
			for="abv">ABV:</label> <input type="text" name="abv"> <br>
		<label for="ibu">IBU:</label> <input type="text" name="ibu"> <br>
		<label for="type">Type:</label> <input type="text" name="type">

		<br> <input type="submit" value="Update beer">
	</form>
	
	
	<h3>Beer List</h3>

	<ol>

		<c:forEach var="b" items="${beers}">

			<ul>ID: ${b.id}. ${b.name}
			</ul>


		</c:forEach>


	</ol>
	
	
	

</body>
</html>