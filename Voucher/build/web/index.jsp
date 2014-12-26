<%-- 
    Document   : index
    Created on : Nov 26, 2014, 10:41:33 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Account"%>
<%@page import="voucherShop.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />    
        <title>SkyLand Shop</title>
    </head>
    <body style="background: url(images/index/index.jpg)no-repeat;">
        <!--Navbar-->
        <div class="top">
        <jsp:include page="navbar.jsp" />
        </div>

        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/index/cover1.jpg" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/index/cover2.jpg" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                           
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/index/cover3.jpg" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                     
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div><!-- /.carousel -->
        <p style="margin: 10px 0px 60px 169px;font-size: -webkit-xxx-large;font-family: monospace;color: #7a7c80;">CHÀO MỪNG ĐẾN VỚI THẾ GIỚI VOUCHER - SKYLAND.VN</p>
        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->
        
        <div class="container marketing" style="padding-bottom: 40px;">
            
        <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="images/index/tienloi.png" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                    <h2 style="color: #7b7676;font-family: monospace;">Tiện Lợi</h2>
                     <p style="padding: 5px 70px 0px 70px;font-size: initial;color: #848282;">Dễ dàng tìm kiếm, lựa chọn và đặt mua những sản phẩm vừa ý.</p>
                
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="images/index/nhanhchong.png" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                    <h2 style="color: #7b7676;font-family: monospace;">Nhanh Chóng</h2>
                    <p style="padding: 5px 65px 0px 65px;font-size: initial;color: #848282;">Tiếm kiệm thời gian, giao hàng nhanh chóng đúng giờ, đúng địa chỉ.</p>
                
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="images/index/uytin.png" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                    <h2 style="color: #7b7676;font-family: monospace;">Uy Tín</h2>
                    <p style="padding: 5px 65px 0px 70px;font-size: initial;color: #848282;">Luôn đặt chất lượng sản phẩm và yêu cầu dịch vụ lên hàng đầu.</p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div><!-- /.container -->        
            <!--JavaScript-->
    </body>
</html>
