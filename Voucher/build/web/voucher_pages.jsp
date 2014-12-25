<%-- 
    Document   : voucherpages
    Created on : Nov 30, 2014, 2:58:02 PM
    Author     : Huy
--%>

<%@page import="voucherShop.Voucher"%>
<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Thông Tin Voucher</title>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="Styles/voucher_pages.css">
    <!-- Custom CSS -->
    <link href="Styles/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Styles/styles.css">
    <style> 
            body{
                padding:80px;

            }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    <div class="container">

        <div class="row">
           <div class="col-md-9" style="height: 500px;">

                <div class="row carousel-holder">

                    <div class="col-md-12" style="margin-bottom: -60px;">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel1">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/demo/c9cap1.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/demo/teammate3.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/demo/teammate2.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="row" style="width: 800px;float: right;">
                    <%
                                    Voucher m = new Voucher();
                                    Object[][] result = m.LoadDetailVoucher();                         
                                    for (int i = 0; i < result.length; i++) {
                                %>
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4><p><%=result[i][2]%></p></h4><br>
                                <h4 class="pull-right" style="margin-top: -20px;">Giá bán: <%=result[i][5]%></h4><br>
                                <p>Thông Tin: <%=result[i][3]%></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                     <% 
                                    }
                                    %>
                </div>
                 <div class="container" style="margin-top: 600px; margin-bottom: -700px;">
                <footer>
                    <div class="row">
                        <div class="col-lg-12"><hr>
                            <p>Copyright &copy; Your Website 2014</p>
                        </div>
                    </div>
                </footer>
    </div>
    <!-- /.container -->
                    </div>

                </div>

            </div>
            
            <div class="col-md-3" style="padding-top: 30px;margin-left: 90px;">
                <p class="lead">Shop Name</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                </div>
            </div> 

        </div>

    </div>
  

    <!-- jQuery -->
    <script src="Scripts/jquery_voucherpages.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/voucher_pages.js"></script>

</body>

</html>

