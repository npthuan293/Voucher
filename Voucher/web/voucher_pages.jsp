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
   <jsp:include page="head.jsp" />
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" type="text/css" href="Styles/voucher_pages.css">
    <!-- Custom CSS -->
    <link href="Styles/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Styles/styles.css">
    <style> 
            body{
                padding:60px;

            }
    </style>
</head>
<body style=";background-color: rgb(236, 232, 225);">
    
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
                                    <img class="slide-image" src="images/voucher/dulich.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/voucher/amthuc.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/voucher/giaitri.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/voucher/spa.jpg" alt="">
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
                        <a href="DetailVoucher.jsp?id=<%=result[i][0]%>" style="width: 320px;height: 150px;">
                        <div class="thumbnail" >
                                <img  src="images/<%=result[i][0]%>.jpg" alt="" style="width: 320px;height: 150px;">
                            <div class="caption" style="height: 80px;">
                                <b><%=result[i][2]%></b><br><br>
                                <h4 class="pull-left" style="color: red; margin-top: -10px;">Giá bán: <%=result[i][5]%> VNĐ</h4><br>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">Chi tiết</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div></a>
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

