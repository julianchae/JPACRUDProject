<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h3>Delete A Beer by ID</h3>

	<form action="deleteBeer.do" method="POST">
		<label for="id">Beer ID:</label> <input type="text" name="id">
		<br> <input type="submit" value="Delete beer">
	</form>



</body>
</html>