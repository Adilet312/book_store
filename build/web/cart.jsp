<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Store</title>
    <link rel="stylesheet" href="css/cart_style.css" type="text/css"/>
</head>
<body>
    <c:import url="/includes/header.jsp" />
    <h1>Shopping Cart</h1>
    <table>
        <tr>
          <th>Quantity</th>
          <th>Name</th>
          <th>Description</th>
          <th>Price</th>
          <th>Amount</th>
          <th>&nbsp;</th>
        </tr>
        
        <c:forEach var="item" items="${cart.items}">
          <tr>
            <td>
              <form action="" method="post">
                <input type="hidden" name="productCode" value="${item.product.code}">
                <input type=text name="quantity" value="${item.quantity}" id="quantity">
                <input type="submit" value="Update">
              </form>
            </td>
            <td>${item.product.name}</td>
            <td>${item.product.description}</td>
            <td>${item.product.priceCurrencyFormat}</td>
            <td>${item.totalCurrencyFormat}</td>
            <td>
              <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="${item.product.code}">
                <input type="hidden" name="quantity" 
                       value="0">
                <input type="submit" value="Remove Item">
              </form>
            </td>
          </tr>
        </c:forEach>
    </table>
    <form action="" method="post" >
      <input type="hidden" name="action" value="checkout">
      <input type="submit" value="Checkout" class="orderPlace">
    </form>

</body>
</html>