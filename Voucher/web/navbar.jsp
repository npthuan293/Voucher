<%-- 
    Document   : navbar
    Created on : Nov 26, 2014, 10:50:01 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="navbar-wrapper">
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
                    <a class="navbar-brand" href="index.jsp">Voucher</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Trang chủ</a></li>
                        <li><a href="#about">Giới thiệu</a></li>
                        <li><a href="#contact">Liên hệ</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Voucher<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thông tin khuyến mãi<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
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
                    <ul class="nav navbar-nav navbar-right">
                        <%
                            //String name = request.getParameter("name");
                           // if (name != null) {
                            //    out.print(name);
                            //}
                            String username = (String) session.getAttribute("Username");
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
                                    out.print("<li><a href='NCC.jsp'>Quản lý nhà cung cấp</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");
                                }else if (result.equals("Nhân viên bán hàng")){
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href=''>Quản lý Voucher</a></li>");
                                    out.print("<li><a href=''>Quản lý Thông tin khuyến mãi</a></li>");
                                    out.print("<li><a href=''>Quản lý đơn hàng</a></li>");
                                    out.print("<li><a href=''>Quản lý quà tặng</a></li>");
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
