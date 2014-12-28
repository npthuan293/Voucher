<%-- 
    Document   : searchDH
    Created on : Dec 25, 2014, 9:32:58 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Voucher"%>
<%@page import="voucherShop.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String input = request.getParameter("input");
    String username = (String) session.getAttribute("Username");
    Orders o = new Orders();
    Object[][] result = null;
    if (input.length() > 0){
        result = o.SearchOrderByUsername(username,input);
    }else{
        result = o.LoadOrderByUsername(username);
        out.println(username);
    }
%>
<table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
                        <thead>
                            <tr>
                                <th>Mã hóa đơn<i class="fa fa-sort"></i></th>                                   
                                <th>Họ tên người đặt hàng<i class="fa fa-sort"></i></th>
                                <th>Ngày đặt hàng<i class="fa fa-sort"></i></th>
                                <th>Voucher<i class="fa fa-sort"></i></th>
                                <th>Tình trạng thanh toán <i class="fa fa-sort"></i></th>
                                <th>Trạng thái đơn hàng <i class="fa fa-sort"></i></th>
                                <th>Số điện thoại <i class="fa fa-sort"></i></th>
                                <th>Tổng cộng<i class="fa fa-sort"></i></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Voucher v = new Voucher();
                                for (int i = 0; i < result.length; i++) {
                                    Object[][] voucher = v.LoadVOUCHERFromCTHD((String)result[i][0]);
                                    Object[][] ctdh = o.LoadCTDHByMaDH((String)result[i][0]);
                            %>
                            <tr>
                                <td><a style="text-decoration: initial;" href='Payment.jsp?id=<%=result[i][0]%>'><%=result[i][0]%></td>
                                <td><%=result[i][6]%></td>
                                <td><%=result[i][2]%></td>
                                <td><%=voucher[0][2]%></td>
                                <td><%=result[i][4]%></td>
                                <td><%=result[i][5]%></td>
                                <td><%=result[i][7]%></td>
                                <td>
                                    <%
                                        int soluong = Integer.parseInt((String)ctdh[0][2]);
                                        float dongia = Float.parseFloat((String)voucher[0][5]);
                                        out.print(soluong*dongia+ " VNĐ");                              
                                    %>
                                </td>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
