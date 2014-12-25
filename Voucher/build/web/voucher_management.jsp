<%-- 
    Document   : voucher_management
    Created on : Dec 2, 2014, 11:03:36 PM
    Author     : Huy
--%>

<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Voucher Management</title>
    <!-- Bootstrap Core CSS -->
    <link href="Styles/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="Styles/voucher_management.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="Styles/styles.css">
</head>
<body>
      <% //checkAdmin
            String username = (String) session.getAttribute("Username");
            if (username != null) {
                Event e = new Event();
                String result = e.CheckAdmin(username);
                if (!result.equals("Nhân viên bán hàng")) {
                    response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }           
        %> 
 <!-- navbar -->
    <div class="navbar-wrapper-vouchermanagerment">
    <div class="container">
        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
              <a class="navbar-brand" href="#">SkyLand</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Trang chủ</a></li>
                        <li><a target="_bank" href="info.jsp">Giới thiệu</a></li>
                        <li><a href="#contact">Liên hệ</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Voucher<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="voucher_pages.jsp">Du Lịch</a></li>
                                <li><a href="#">Thời Trang</a></li>
                                <li><a href="#">Ẩm Thực</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Promotions.jsp">Thông tin khuyến mãi</a>
                        </li>                       
                    </ul>
                        <div class="col-sm-3 col-md-3">
                            <form class="navbar-form" role="search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="q">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    <ul class="nav navbar-nav navbar-right" id="navright-prompage" style="margin-right: 10px;">
                        <%
                            //String name = request.getParameter("name");
                           // if (name != null) {
                            //    out.print(name);
                            //}
                           // String username = (String) session.getAttribute("Username");
                            if (username != null) {
                                out.print("<li class='dropdown' >");
                                out.print("<a data-toggle='dropdown' class='dropdown-toggle' href=''>Xin chào, " + username + "<b class='caret'></b></a>");
                                out.print("<ul role='menu' class='dropdown-menu'>");
                                Event e = new Event();
                                String result = e.CheckAdmin(username);
                                if (result.equals("Admin")) {
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href='Member.jsp'>Quản lý thành viên</a></li>");
                                    out.print("<li><a href='Staff.jsp'>Quản lý nhân viên</a></li>");
                                    out.print("<li><a href=''>Quản lý nhà cung cấp</a></li>");
                                    out.print("<li><a href='voucher_management.jsp'>Quản lý Voucher</a></li>");
                                    out.print("<li><a href=''>Quản lý Thông Tin Khuyến Mãi</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");
                                }else if (result.equals("Nhân viên bán hàng")){
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href=''>Quản lý Voucher</a></li>");
                                    out.print("<li><a href=''>Quản lý Thông tin khuyến mãi</a></li>");
                                    out.print("<li><a href=''>Quản lý đơn hàng</a></li>");
                                    out.print("<li><a href=''>Quản lý quà tặng</a></li>");
                                    out.print("<li><a href=''>Thống kê</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");                                   
                                }else if (result.equals("Nhân viên kho hàng")){
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href=''>Thống kê</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");                                                                   
                                }
                                else{
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href='Payment.jsp'>Đơn hàng</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");
                                    out.print("</ul>");
                                    out.print("</li>");
                                }
                            }else {
                                out.print("<li>");
                                out.print("<a href='login.jsp'>Đăng nhập</a>");
                                out.print("</li>");
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- navbar -->
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Page Heading
                    <small>Secondary Text</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
            <div class="col-md-3 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="Scripts/jquery_VM.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/voucher_management.js"></script>

</body>
</html>

