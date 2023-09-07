<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hibernate.entity.Product" %>

<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        padding: 20px;
        color: #333;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    input[type="hidden"], p {
        margin-bottom: 10px;
    }

    p {
        font-size: 18px;
    }

    .checkout-btn {
        display: block;
        width: 100%;
        background-color: #4CAF50;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        text-align: center;
    }

    .checkout-btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <h2>Giỏ hàng</h2>
    <form action="./PayProduct" method="get">
        <!-- Your form fields -->
        <input type="hidden" name="id" value="${pro.id}">
        <input type="hidden" name="name" value="${pro.productName}">
        <input type="hidden" name="giam" value="${discountAmount}">
        <input type="hidden" name="gia" value="${discountedPrice}">
        <input type="hidden" name="giagoc" value="${pro.price}">
        <p>${pro.productName}</p>
        <p>Original Price: ${discountAmount}</p>
        <p>${discountedPrice}/${pro.price}</p>
        <button type="submit" class="checkout-btn">Xác nhận</button>
    </form>
</body>
</html>
