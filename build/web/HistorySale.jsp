<%-- 
    Document   : HistorySale
    Created on : Mar 7, 2022, 4:06:52 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link  href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="container" style="margin-top: 20px ;min-height: 1000px">
            <h3>History Sale</h3>

            <table class="table table-dark" style="margin-top: 30px">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Order_ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                         <th scope="col">Quantity</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${listO}" var="o"> 
                      
                    <form>
                        <tr>
                            <th>${o.id}</th>
                            <th>${o.order_id}</th>
                            <td>${o.productName}</td>
                            <td><img src="${o.productImage}" width="150px"> </td>
                            <td>${o.productPrice} </td>
                            <td>${o.quantity} </td>
                            
                        </tr>
                    </form>
                </c:forEach>
                </tbody>

            </table>


        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
