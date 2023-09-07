<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hibernate.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Listing</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }
    .product-listing {
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        padding: 20px;
        margin-bottom: 20px;
    }
    .product {
        border-bottom: 1px solid #ccc;
        padding-bottom: 20px;
        margin-bottom: 20px;
    }
    .product-name {
        font-size: 24px;
        margin-bottom: 10px;
    }
    .category {
        color: #777;
    }
    .price {
        color: #337ab7;
    }
    .quantity {
        color: #333;
    }
    .order-link {
        display: inline-block;
        background-color: #337ab7;
        color: #ffffff;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
    }
    .order-link:hover {
        background-color: #286090;
    }
    .product img {
        max-width: 100px;
        max-height: 100px;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="product-listing">
            <% for (Product tu : (List<Product>) request.getAttribute("proList")) { %>
            <div class="product">
                <div class="product-name">
                    <a href="./IdProduct?id=<%= tu.getId() %>"><%=tu.getProductName() %></a>
                </div>
                <div ><c:if test="<%=tu.getId() ==2%>">
                <img src="https://i.imgur.com/KcYHduj.jpg">
                </c:if>
                <c:if test="<%=tu.getId() ==1%>">
                <img src="https://i.imgur.com/KcYHduj.jpg">
                </c:if>
                <c:if test="<%=tu.getId() ==3%>">
                <img src="https://i.imgur.com/l86FCr3.jpg">
                </c:if>
                <c:if test="<%=tu.getId() ==4%>">
                <img src="https://i.imgur.com/l86FCr3.jpg">
                </c:if>
                
                
                </div>
                <div class="category">
                    <strong><%=tu.getCategory().getCategoryName() %></strong>
                </div>
                <div class="price">
                    Giá: <strong><%=tu.getPrice()%></strong>
                </div>
                <div class="quantity">
                    Số lượng: <strong><%=tu.getQuantityInStock() %></strong>
                </div>
                <div class="order-link">
                    <a href="BuyProduct?id=<%= tu.getId() %>">Đặt hàng</a>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
