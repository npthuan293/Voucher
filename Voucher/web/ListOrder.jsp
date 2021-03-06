<%-- 
    Document   : ListOrder
    Created on : Dec 21, 2014, 5:54:12 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Voucher"%>
<%@page import="voucherShop.Orders"%>
<%@page import="voucherShop.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp" />    
        <script src="Scripts/jquery.tablesorter.js"></script>
        <script src="Scripts/tables.js"></script>   
        <style> 
            body{
                padding:80px;

            }
            .table>thead>tr>th{
             vertical-align: top;   
            }
        </style>
        <title>Danh sách đơn hàng</title>
    </head>
    <body>
        <jsp:include page='navbar.jsp' />
        <div class="container">
            <form action="Controller">
                <div class="row">
                    <div class="col-md-12 ">	
                        <h3>Danh sách đơn hàng đã đặt</h3>
                    </div>
                </div>                     
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
                        <thead>
                            <tr>
                                <th>Mã hóa đơn<i class="fa fa-sort"></i></th>                                   
                                <th>Họ tên<i class="fa fa-sort"></i></th>
                                <th>Ngày mua<i class="fa fa-sort"></i></th>
                                <th>Tình trạng thanh toán <i class="fa fa-sort"></i></th>
                                <th>Trạng thái đơn hàng <i class="fa fa-sort"></i></th>
                                <th>Số điện thoại <i class="fa fa-sort"></i></th>
                                <th>Tổng hóa đơn <i class="fa fa-sort"></i></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String username = (String) session.getAttribute("Username");
                                Orders o = new Orders();
                                Voucher v = new Voucher();
                                Object[][] result = o.LoadOrderByUsername(username);
                                for (int i = 0; i < result.length; i++) {
                                    Object[][] cthd = o.LoadCTDHByMaDH((String)result[i][0]);
                                    Object[][] voucher = v.LoadVOUCHERFromCTHD((String)cthd[i][1]);
                                    int soluong = Integer.parseInt((String)cthd[i][2]);
                                    double dongia = Double.parseDouble((String)voucher[0][5]);
                                    double total = soluong * dongia;
                            %>
                            <tr>
                                <td><a style="text-decoration: initial;" href='Payment.jsp?id=<%=result[i][0]%>'><%=result[i][0]%></a></td>
                                <td><%=result[i][6]%></td>
                                <td><%=result[i][2]%></td>
                                <td><%=result[i][4]%></td>
                                <td><%=result[i][5]%></td>
                                <td><%=result[i][7]%></td>
                                <td><%=total%></td>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div><br>
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
