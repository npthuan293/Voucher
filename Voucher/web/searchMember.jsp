<%-- 
    Document   : searchMember
    Created on : Dec 24, 2014, 12:35:43 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Member"%>
<%@page import="voucherShop.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String input = request.getParameter("input");
    Account a = new Account();
    Member m = new Member();
    Object[][] result = null;
    if (input.length()>0){
        if (input != null){
            result = m.SearchMember(input);
            //out.println(input);
        }else{
            result = m.LoadMemberAccount();
        }       
    }else{
        result = m.LoadMemberAccount();
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
                                    <th>Ngày đăng ký <i class="fa fa-sort"></i></th>
                                    <th>Thời gian đăng nhập lần cuối <i class="fa fa-sort"></i></th>
                                    <th>Tình trạng <i class="fa fa-sort"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                      
                                    for (int i = 0; i < result.length; i++) {
                                        Object[][] result2 = a.LoadAccountByUsername((String)result[i][1]);
                                %>
                                <tr>
                                    <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value=<%=result[i][1]%></td>
                                    <td><%=result[i][1]%></td>
                                    <td><%=result[i][2]%></td>
                                    <td><%=(String)result[i][6]%></td>
                                    <td><%=result[i][5]%></td>
                                    <td><%=result[i][4]%></td>
                                    <td><%=result[i][9]%></td>
                                    <td><%=result[i][3]%></td>
                                    <td><%=result[i][8]%></td>
                                    <td><%=result2[0][4]%></td>
                                <%
                                    if (result2[0][3].equals("Đang hoạt động")){
                                %>
                                    <td>Còn hoạt động</td>
                                <%
                                    }else{
                                %>
                                    <td>Đã khóa</td>
                                <%
                                    }
                                %>
                                    </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
