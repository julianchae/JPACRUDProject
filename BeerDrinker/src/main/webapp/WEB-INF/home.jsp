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


	<a href="addbeer.do"> Add A Beer</a>

	 <a href ="deletebeer.do"> Delete A Beer</a> 
	
	<a href ="updatebeer.do"> Update A Beer</a> 
	
	

	


<h3>Beer List</h3>

	<ol>

		<c:forEach var="b" items="${beers}">

			<ul>ID: ${b.id}. ${b.name}
			</ul>


		</c:forEach>


	</ol>



</body>
</html>