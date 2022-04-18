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

	<h1>Welcome to SkillBrewery!</h1>

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

	
	<a href= "addbeer.do"> Add a Beer!</a>


<h3>Our Current Beer List</h3>

	

			<ul>
		<c:forEach var="b" items="${beers}">

		<li>ID: ${b.id}. ${b.name}  <a href="updatebeercontroller.do?id=${b.id }"> Update Beer</a>  <a href="deleteBeerController.do?id=${b.id }"> Delete Beer</a>          </li>


		</c:forEach>
			</ul>


	



</body>
</html>