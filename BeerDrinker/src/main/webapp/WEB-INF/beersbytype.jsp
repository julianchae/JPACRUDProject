<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Many beers</title>

</head>
<body>
<%@ include file="NewBootStrap.jsp"%>
<c:choose>
<c:when test="${! not empty beers }">


No beers with that type.



</c:when>



<c:otherwise>
	<h1>Beers</h1>
	<c:forEach items="${beers}" var="beer">
		<tr>
			<ul>


			<li><td>	<form action="getBeerByName.do" method="GET">
				${beer.name}: <input type="hidden" name="name" value = ${beer.name}/> 
					
					<input type="submit" value="Get beer info" />
				</form>
			</ul>


		</tr>
	</c:forEach>


</c:otherwise>

</c:choose>

</body>
</html>