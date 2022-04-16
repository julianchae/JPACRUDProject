<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beer Info</title>
</head>
<body>

<h1>Beer Details </h1>

<h5>Name: ${beer.name }</h5>
<h5>Description: ${beer.description }</h5>
<h5>Type: ${beer.type}</h5>
<h5>ABV: ${beer.abv }%</h5>
<h5>IBU: ${beer.ibu }</h5>

<a href= "home.do"> Go Home</a>

</body>
</html>