<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beers!</title>
</head>
<body>

	<h1>Welcome to Java Brewing</h1>

	<form action="getBeer.do" method="GET">
		Find Beer by it's ID: <input type="text" name="id" /> <input
			type="submit" value="Find Beer" />
	</form>

	<form action="getBeerByName.do" method="GET">
		Find Beer by Name: <input type="text" name="name" /> <input
			type="submit" value="Find Beer" />
	</form>
	<form action="getBeerByType.do" method="GET">
		Find Beer by Type: <input type="text" name="type" /> <input
			type="submit" value="Find Beer" />
	</form>
	
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




</body>
</html>