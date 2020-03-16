<%-- 
    Document   : products
    Created on : Mar 9, 2020, 6:32:35 PM
    Author     : amt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Products</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/product_style.css">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>

        <c:import url="/includes/header.jsp" />
        <div class="container">
            <ul>
                <li><img src="image/product1.jpg" class = "imgClass"><div class="title">Sumsung $200.00 
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="111">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product2.jpg" class = "imgClass"><div class="title">Nokia $150.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="222">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product3.jpg" class = "imgClass"><div class="title">Panasonic $50.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="333">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product1.jpg" class = "imgClass"><div class="title">Sony $400.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="444">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product4.jpg" class = "imgClass"><div class="title">Boost $200.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="555">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product1.jpg" class = "imgClass"><div class="title">LG $160.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="666">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product5.jpg" class = "imgClass"><div class="title">Asus $240.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="777">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
                <li><img src="image/product2.jpg" class = "imgClass"><div class="title">Phi $650.00
                    <form action="cart" method="post"> 
                        <input type="hidden" name="productCode" value="888">
                        <input type="submit" value="Add to Cart">
                    </form></div>
                </li>
            </ul>
            
        </div>
    </body>
</html>
