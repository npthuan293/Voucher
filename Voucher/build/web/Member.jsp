<%-- 
    Document   : Member
    Created on : Nov 29, 2014, 10:51:17 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Member"%>
<%@page import="voucherShop.Account"%>
<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />    
        <script src="Scripts/jquery.tablesorter.js"></script>
        <script src="Scripts/tables.js"></script>   
        <style> 
            body{
                padding:80px;

            }
        </style>        
        <title>Quản lý thành viên</title>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("Username");
            if (username != null) {
                Event e = new Event();
                String result = e.CheckAdmin(username);
                if (!result.equals("Admin")) {
                    response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }           
        %>        
        <jsp:include page='navbar.jsp' />
            <div class="container">
                <form action="Controller" method="post">
                    <div class="row">
                        <div class="col-md-12 ">	
                            <h3>Danh sách thành viên</h3>
                       </div>
                    </div>                     
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
                            <thead>
                                <tr>
                                    <th>Check <i class="fa fa-sort"></i></th>
                                    <th>Tên đăng nhập <i class="fa fa-sort"></i></th>
                                    <th>Họ tên <i class="fa fa-sort"></i></th>
                                    <th>Ngày sinh <i class="fa fa-sort"></i></th>
                                    <th>Email <i class="fa fa-sort"></i></th>
                                    <th>Số điện thoại <i class="fa fa-sort"></i></th>
                                    <th>Giới tính <i class="fa fa-sort"></i></th>
                                    <th>Địa chỉ <i class="fa fa-sort"></i></th>
                                    <th>Mật khẩu <i class="fa fa-sort"></i></th>
                                    <th>Ngày đăng ký <i class="fa fa-sort"></i></th>
                                    <th>Thời gian đăng nhập lần cuối <i class="fa fa-sort"></i></th>
                                    <th>Tình trạng <i class="fa fa-sort"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Member m = new Member();
                                    Account a = new Account();
                                    Object[][] result = m.LoadMemberAccount();                         
                                    for (int i = 0; i < result.length; i++) {
                                        Object[][] result2 = a.LoadAccountByUsername((String)result[i][1]);
                                        out.print("<tr>");
                                        out.print("<td><input type='checkbox' name='Select' id='Select' value='" + result[i][1] + "'></td>");
                                        out.print("<td><a href='Edituser.jsp?username=" + result[i][1] + "'>" + result[i][1] + "</a></td>");

                                        if (result[i][2] == null) {
                                            out.print("<td></td>");
                                        } else {
                                            out.print("<td>" + result[i][2] + "</td>");
                                        }
                                        out.print("<td>" + result[i][6] + "</td>");
                                        out.print("<td>" + result[i][5] + "</td>");
                                        out.print("<td>" + result[i][4] + "</td>");
                                        out.print("<td>" + result[i][10] + "</td>");
                                        out.print("<td>" + result[i][3] + "</td>");
                                        out.print("<td>" + result2[0][1] + "</td>");
                                        out.print("<td>" + result[i][8] + "</td>");
                                        out.print("<td>" + result[i][9] + "</td>");
                                        if (result2[0][2].equals("On")){
                                            out.print("<td>Còn hoạt động</td>");
                                        }else{
                                            out.print("<td>Đã khóa</td>");
                                        }
                                        out.print("</tr>");
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 ">	
                            <button type="submit" class="btn btn-primary" name="btnAction" value="Lock" >Khóa người dùng</button>
                            <button type="submit" class="btn btn-primary" name="btnAction" value="Unlock" >Mở khóa</button>                            
                        </div>
                    </div>                            
                </form>
            </div>        
    </body>
</html>
