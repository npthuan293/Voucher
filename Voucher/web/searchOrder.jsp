<%-- 
    Document   : searchOrder
    Created on : Dec 24, 2014, 10:20:20 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String input = request.getParameter("input");
    Orders o = new Orders();
    Object[][] result = o.LoadOrder();
    if (input.length() > 0){
        result = o.SearchOrder(input);
    }else{
        result = o.LoadOrder();
    }
%>
<table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
                            <thead>
                                <tr>
                                    <td><b>Check</b><br><input type="checkbox" id="selectall" value=""/></td>                                   
                                    <th>Mã đơn hàng <i class="fa fa-sort"></i></th>
                                    <th>Tên đăng nhập <i class="fa fa-sort"></i></th>
                                    <th>Họ tên người mua<i class="fa fa-sort"></i></th>
                                    <th>Ngày tạo đơn hàng <i class="fa fa-sort"></i></th>
                                    <th>Hình thức TT<i class="fa fa-sort"></i></th>
                                    <th>Tình Trạng TT <i class="fa fa-sort"></i></th>
                                    <th>Trạng thái đơn hàng <i class="fa fa-sort"></i></th>
                                    <th>Địa chỉ giao hàng <i class="fa fa-sort"></i></th>
                                    <th>Số điện thoại <i class="fa fa-sort"></i></th>
                                    <th>Ghi chú <i class="fa fa-sort"></i></th>
                                    <th>Ngày thanh toán <i class="fa fa-sort"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                   
                                    for (int i = 0; i < result.length; i++) {                                       
                                %>
                                <tr>
                                    <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value=<%=result[i][0]%></td>
                                    <td><a href='info_staff.jsp?Username=<%=result[i][0]%>'><%=result[i][0]%></a></td>
                                    <td><%=result[i][1]%></td>
                                    <td><%=result[i][6]%></td>
                                    <td><%=result[i][2]%></td>
                                    <td><%=result[i][3]%></td>
                                    <td>
                                        
                                        <%                                            
                                            String tinhtrang = (String)result[i][4];
                                            if (tinhtrang.equals("Chưa thanh toán")){
                                        %>  <select>  
                                                <option selected='selected'><%=tinhtrang%></option>
                                                <option>Đã thanh toán</option>
                                            </select>
                                        <%
                                            }else{%>
                                            <select disabled>
                                                <option>Chưa thanh toán</option>
                                                <option selected='selected'><%=tinhtrang%></option>   
                                            </select>
                                        <%
                                            }
                                        %>
                                    </td>
                                    <td>
                                        <%                                            
                                            String trangthai = (String)result[i][5];
                                            if (trangthai.equals("Chưa duyệt")){
                                        %>
                                            <select>
                                                <option selected='selected'><%=trangthai%></option>
                                                <option>Đã duyệt</option>
                                            </select>    
                                        <%
                                            }else{%>
                                            <select disabled>
                                                <option>Chưa duyệt</option>
                                                <option selected='selected' ><%=trangthai%></option>  
                                            </select>
                                        <%
                                            }
                                        %>
                                    </td>
                                    <td><%=result[i][8]%></td>
                                    <td><%=result[i][7]%></td>
                                    <td><%if (result[i][11] == null ){
                                             out.println("");
                                        }else{
                                            out.println(result[i][11]);
                                        }
                                    %></td>
                                    <td><%if (result[i][12] == null ){
                                             out.println("");
                                        }else{
                                            out.println(result[i][12]);
                                        }
                                    %></td>    
                                    </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
