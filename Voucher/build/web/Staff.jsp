<%-- 
    Document   : Staff
    Created on : Nov 29, 2014, 10:51:42 PM
    Author     : PhuThuan
--%>

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
        <title>Quản lý nhân viên</title>
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
                <form action="Controller">
                    <div class="row">
                        <div class="col-md-12 ">	
                            <h3>Danh sách nhân viên</h3>
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
                                    <th>Ngày vào làm <i class="fa fa-sort"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Account a = new Account();
                                    Object[][] result = a.LoadStaffAccount();

                                    for (int i = 0; i < result.length; i++) {
                                        Object[][] result2 = a.LoadAccountByUsername((String)result[i][1]);
                                        out.print("<tr>");
                                        out.print("<td><input type='checkbox' name='Select' id='Select' value='" + result[i][1] + "'></td>");
                                        out.print("<td><a href='Edituser.jsp?Username=" + result[i][1] + "'>" + result[i][1] + "</a></td>");
                                        if (result[i][2] == null) {
                                            out.print("<td></td>");
                                        } else {
                                            out.print("<td>" + result[i][2] + "</td>");
                                        }
                                        out.print("<td>" + result[i][6] + "</td>");
                                        out.print("<td>" + result[i][5] + "</td>");
                                        out.print("<td>" + result[i][4] + "</td>");
                                        out.print("<td>" + result[i][9] + "</td>");
                                        out.print("<td>" + result[i][3] + "</td>");
                                        out.print("<td>" + result2[0][1] + "</td>");
                                        out.print("<td>" + result[i][8] + "</td>");
                                        out.print("</tr>");
                                    }                                    
                                %>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 ">	
                            <button type="submit" class="btn btn-primary" name="btnAction" value="EditStaff" data-toggle="modal" data-target="#AddUserModal" id="AddUser">Add</button>
                            <button type="submit" class="btn btn-primary" name="btnAction" value="DeleteStaff" >Delete</button>
                        </div>
                    </div>
                </form>
            </div>        

    </body>
</html>
