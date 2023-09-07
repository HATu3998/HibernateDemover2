<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hibernate.entity.Product" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>${pro.productName}</p>
	<p>${pro.category.categoryName}</p>
	<p>${pro.price}</p>
	<p>${pro.discountPercentage}</p>
	<p>${pro.quantityInStock}</p>
</body>
</html>