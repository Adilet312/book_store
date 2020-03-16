<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer form</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" href="css/register.css" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <c:import url="/includes/header.jsp" />
        <div class="loginbox">
            <h1>Sign up</h1>
            <form action="registration" method="post">
                <input type="hidden" name="action" value="add">
                <p>First name</p>
                <input type="text" placeholder="Enter first name" name="firstName" value="${customer.firstName}" required >
                <p>Last name</p>
                <input type="text" placeholder="Enter last name" name="lastName" value="${customer.lastName}"  required >
                <p> Email</p>
                 <input type="email" placeholder="Enter email" name="email" value="${customer.email}" required >
                <p>Address</p>
                <input type="text"  placeholder="Enter address" name="address" value="${customer.address}" required  >
                <p>City</p>
                <input type="text" placeholder="Enter city"  name="city" value="${customer.city}"  required >
                <p>State</p>
                <input type="text" placeholder="Enter state" name="state" value="${customer.state}"required  >
                <p>Zip</p>
                 <input type="text" placeholder="Enter zip" name="zip" value="${customer.zip}" required >
                <p>Country</p>
                 <input type="text" placeholder="Enter country" name="country" value="${customer.country}" required >
                  <input type="submit" value="Join Now" class="btn btn-success" >
            </form>
        </div>

     </body>
    </html>
