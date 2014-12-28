<%-- 
    Document   : searchStaff
    Created on : Dec 24, 2014, 1:11:18 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Staff"%>
<%@page import="voucherShop.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String input = request.getParameter("input");   
    Staff s = new Staff();
    Account a = new Account();
    Object[][] result = null;
    if (input.length() > 0){
            result = s.SearchStaff(input);   
    }else{
        result = s.LoadStaffAccount();
    }          
%>
<table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
                            <thead>
                                <tr>
                                    <td><b>Check</b><br><input type="checkbox" id="selectall" value=""/></td> 
                                    <th>Tên đăng nhập <i class="fa fa-sort"></i></th>
                                    <th>Họ tên <i class="fa fa-sort"></i></th>
                                    <th>Ngày sinh <i class="fa fa-sort"></i></th>
                                    <th>Email <i class="fa fa-sort"></i></th>
                                    <th>Số điện thoại <i class="fa fa-sort"></i></th>
                                    <th>Giới tính <i class="fa fa-sort"></i></th>
                                    <th>Địa chỉ <i class="fa fa-sort"></i></th>
                                    <th>Ngày vào làm <i class="fa fa-sort"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (int i = 0; i < result.length; i++) {
                                        //Object[][] result2 = a.LoadAccountByUsername((String)result[i][1]); 
                               %>
                                        <tr>
                                            <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value=<%=result[i][1]%></td>
                                            <td><a href='info_staff.jsp?Username=<%=result[i][1]%>' ><%=result[i][1]%></a></td>
                                            <td><%=result[i][2]%></td>
                                            <td><%=result[i][6]%></td>
                                            <td><%=result[i][5]%></td>
                                            <td><%=result[i][4]%></td>
                                            <td><%=result[i][9]%></td>
                                            <td><%=result[i][3]%></td>
                                            <td><%=result[i][8]%></td>
                                        </tr>
                                        <%
                                    }                                    
                                %>
                            </tbody>
                        </table>

