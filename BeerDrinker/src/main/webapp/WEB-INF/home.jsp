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
<%@ include file="NewBootStrap.jsp"%>

	
	
	
<h3>Our Current Beer List</h3>

	

			<ul>
		<c:forEach var="b" items="${beers}">

		<li>ID: ${b.id}. ${b.name}  <a href="updatebeercontroller.do?id=${b.id }"> Update Beer</a>  <a href="deleteBeerController.do?id=${b.id }"> Delete Beer</a>          </li>


		</c:forEach>
			</ul>


	



</body>
</html>