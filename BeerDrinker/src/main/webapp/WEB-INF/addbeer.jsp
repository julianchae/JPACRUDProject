<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="NewBootStrap.jsp"%>

<h3>Add a Beer</h3>

	<form action="addBeer.do" method="POST">
		<label for="name">Name:</label> <input type="text" name="name">
		<br> <label for="description">Description:</label> <input
			type="text" name="description"> <br> <label for="abv">ABV:</label>
		<input type="text" name="abv"> <br> <label for="ibu">IBU:</label>
		<input type="text" name="ibu"> <br> <label for="type">Type:</label>
		<input type="text" name="type"> <input type="submit"
			value="Add Beer">
	</form>
	
	<a href= "home.do"> Nevermind, go back</a>




</body>
</html>