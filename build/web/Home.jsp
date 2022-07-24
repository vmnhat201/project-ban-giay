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
    <style>
        html,
        body,
        header,
        .carousel {
            height: 60vh;
        }

        @media (max-width: 740px) {
            html,
            body,
            header,
            .carousel {
                height: 100vh;
            }
        }

        @media (min-width: 800px) and (max-width: 850px) {
            html,
            body,
            header,
            .carousel {
                height: 100vh;
            }
        }
        .view,body,html{height:100%}.carousel{height:50%}.carousel .carousel-inner,.carousel .carousel-inner .active,.carousel .carousel-inner .carousel-item{height:100%}@media (max-width:776px){.carousel{height:100%}}.page-footer{background-color:#929FBA}
        .row{
            text-align: center; 
            margin: 10px 10px;

        }
    </style>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="container" style="min-height: 1000px">


            <!--        <section class="text-center mb-4">-->
            <section class="text-center mb-4">

                <!--Grid row-->
                <div class="row">


                    <div class="row wow fadeIn">
                        <c:forEach items="${listP}" var="o">
                            <!--Grid column-->
                            <div class="col-lg-3 col-md-6 mb-4">

                                <!--Card-->
                                <div class="card">

                                    <!--Card image-->
                                    <div class="view overlay">
                                        <a href="detail?productId=${o.id}">
                                            <img src="${o.image}" class="card-img-top" alt="" ">

                                            <div class="mask rgba-white-slight"></div>
                                        </a>
                                    </div>
                                    <!--Card image-->

                                    <!--Card content-->
                                    <div class="card-body text-center">

                                        <a href="" class="grey-text">
                                            <h5>Shirt</h5>
                                        </a>
                                        <h5>
                                            <strong>
                                                <a href="detail?productId=${o.id}" class="  ">${o.name}

                                                </a>
                                            </strong>
                                        </h5>

                                        <h4 class="text-light bg-dark">
                                            <strong>${o.price} $</strong>
                                        </h4>
                                        <h3 class="font-weight-bold black-text">
                                            <button type="button" class="btn btn-outline-danger"><a href="add-to-cart?productId=${o.id}">BUY</a></button>
                                        </h3>

                                    </div>
                                    <!--Card content-->

                                </div>
                                <!--Card-->

                            </div>
                            <!--Grid column-->


                        </c:forEach>
                    </div>


            </section>



            <nav class="d-flex justify-content-center wow fadeIn">
                <ul class="pagination pg-blue">

                    <!--Arrow left-->
                    <li class="page-item ">
                        <a class="page-link" href="home?page=${page-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <c:forEach begin="1" end="${totalPage}" var="i">


                        <li class="page-item ${i==page?"active":""}">
                            <a class="page-link " href="home?page=${i}">${i}</a> 


                        </li>
                    </c:forEach>

                    <li class="page-item">
                        <a class="page-link" href="home?page=${page+1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>


        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
