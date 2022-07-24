<%-- 
    Document   : Menu.jsp
    Created on : Mar 3, 2022, 8:36:25 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <div class="container" >


        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="background-color: #0099ff"  >
            <ul class="navbar-nav mr-auto">
                <a class="btn btn-secondary" href="home"> Home </a>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category
                    </a>
                    <div class="dropdown-menu dropdown-primary " aria-labelledby="navbarDropdownMenuLink">
                        <c:forEach items="${sessionScope.listCate}" var="c">
                            <a class="dropdown-item" href="category?categoryId=${c.id}">${c.name}</a>
                        </c:forEach> 

                    </div>
                </li>

                <c:if test="${sessionScope.account.isAdmin==1}">
                    <li class="nav-item">
                        <a class="nav-link " href="manager"> List Product </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="history-sale">  Sale </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.account!=null}">
                    <li class="nav-item">
                        <a class="nav-link btn btn-secondary " href="logout"> Logout </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.account==null}">
                    <li class="nav-item">
                        <a class="nav-link btn btn-secondary" href="Login.jsp"> Login </a>
                    </li> 
                </c:if>


            </ul>

            <form action="search" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="word">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            <div class="d-flex my-2">
                <a class="" href="carts">
                    <!--                    <i class="icon-shopping-cart-2"></i>-->

                    <button class="btn btn-dark">Cart ${sessionScope.carts.size()}</button>
                </a>
            </div>

        </div>
    </div>
</nav>



</div>
