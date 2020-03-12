<%-- 
    Document   : listproducts
    Created on : Mar 8, 2020, 10:40:52 PM
    Author     : amt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css" type="text/css"/>
        <title>products</title>
    </head>
    <body>
        <div class="menu-header">
           <ul>
                <li><a href="index.html">Home </a></li>
                <li><a href="products.jsp">Products </a></li>
                <li><a href="cart.jsp">Cart</a></li>
                <li><a href="#">Register </a></li>
           </ul>
       </div>
        <h1 class="productDB">Products are from Database</h1>
        <table class="productClass">
            <tr>
                <th>ProductId</th>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Product Description</th>
                <th>Product Price</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td><c:out value="${product.productId}"/></td>
                    <td><c:out value="${product.code}"/></td>
                    <td><c:out value="${product.name}"/></td>
                    <td><c:out value="${product.description}"/></td>
                    <td><c:out value="${product.price}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

