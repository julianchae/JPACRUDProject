<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deletebeerform</title>
</head>
<body>





<h3>Delete A Beer by ID</h3>

<a href= "home.do"> Nevermind, go back</a>

	<form action="deleteBeer.do" method="POST">
		<label for="id">Beer ID:</label> <input type="text" name="id">
		<br> <input type="submit" value="Delete beer">
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