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
<%@ include file="NewBootStrap.jsp"%>


<h3>Update A Beer by ID</h3>

<a href= "home.do"> Nevermind, go back</a>

	<form action="updateBeer.do" method="POST">
		<input type="hidden" name = "id" value = "${beer.id }">
			 <label for="name">New name:</label> <input
			type="text" name="name" value = "${beer.name }"> <br> <label for="description">New Description:</label>
		<input type="text" name="description"> <br> <label
			for="abv">ABV:</label> <input type="text" name="abv"> <br>
		<label for="ibu">IBU:</label> <input type="text" name="ibu"> <br>
		<label for="type">Type:</label> <input type="text" name="type">

		<br> <input type="submit" value="Update beer">
	</form>
	
	
	

</body>
</html>