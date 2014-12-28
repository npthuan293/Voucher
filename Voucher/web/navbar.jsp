<%-- 
    Document   : navbar
    Created on : Nov 26, 2014, 10:50:01 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="navbar-wrapper" style="margin-top: 0px;">
    <div>
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
                        <li><a href="index.jsp">Trang chủ</a></li>
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
                            <a href="Promotions.jsp">Thông Tin Khuyến Mãi</a>
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
                            String username = (String) session.getAttribute("Username");
                            if (username != null) {
                        %>
                            <li class='dropdown'>
                                <a data-toggle='dropdown' class='dropdown-toggle' href=''>Xin chào, <%=username%><b class='caret'></b></a>
                                <ul role='menu' class='dropdown-menu'>
                            <%        
                                    Event e = new Event();
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")) {
                             %>
                                    <li><a href='info_staff.jsp?Username=<%=username%>'>Thông tin cá nhân</a></li>
                                    <li><a href='Member.jsp'>Quản lý thành viên</a></li>
                                    <li><a href='Staff.jsp'>Quản lý nhân viên</a></li>
                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>
                            <%
                                    }else if (result.equals("Nhân viên bán hàng")){
                            %>
                                    <li><a href='info_staff.jsp?Username=<%=username%>'>Thông tin cá nhân</a></li>
                                    <li><a href='voucher_Manag.jsp'>Quản lý Voucher</a></li>
                                    <li><a href=''>Quản lý Thông tin khuyến mãi</a></li>
                                    <li><a href='Order.jsp'>Quản lý đơn hàng</a></li>
                                    <li><a href=''>Quản lý quà tặng</a></li>
                                    <li><a href=''>Thống kê</a></li>
                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>                                   
                            <%        
                                 }
                                    else{
                            %>
                                    <li><a href='info_user.jsp'>Thông tin cá nhân</a></li>
                                    <li><a href='ListOrder.jsp'>Đơn hàng</a></li>
                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>
                                </ul>
                            </li>
                        <%
                                }
                            }else {
                        %>
                            <li>
                                <a href='login.jsp'>Đăng nhập</a>
                            </li>
                        <%
                            }
                        %>
                    </ul>
           </div>
            </div>
        </div>
    </div>
</div>
