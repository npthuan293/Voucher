<%-- 
    Document   : tableDM
    Created on : Dec 23, 2014, 8:09:29 PM
    Author     : Huy
--%>
<%@page import="voucherShop.Voucher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String danhmuc = request.getParameter("danhmuc");
    Voucher v = new Voucher();
    String Ma_DM = null;
    Object[][] result = v.LoadDetailVoucher();
    if (danhmuc.equals("Du lich")){
        Ma_DM = "DL";
        result = v.LoadVoucherByDM(Ma_DM);
    }else if (danhmuc.equals("Am thuc")){
        Ma_DM = "AU";
        result = v.LoadVoucherByDM(Ma_DM);
    }
    else if (danhmuc.equals("Giai tri")){
        Ma_DM = "GT";
        result = v.LoadVoucherByDM(Ma_DM);
    }else if(danhmuc.equals("Spa")){
        Ma_DM = "SP";
        result = v.LoadVoucherByDM(Ma_DM);
    }else{
        result = v.LoadDetailVoucher();
    }
        
%>
<table class="table table-bordered table-hover table-striped tablesorter" id="usertable">
    <thead>
        <tr>
            <td><b>Check</b><br><input type="checkbox" id="selectall"/></td> 
            <th>Mã Voucher <i class="fa fa-sort"></i></th>
            <th>Tên Voucher<i class="fa fa-sort"></i></th>
            <th>Mã Danh mục <i class="fa fa-sort"></i></th>
            <th>Thời hạn Voucher <i class="fa fa-sort"></i></th>
            <th>Giá bán <i class="fa fa-sort"></i></th>
            <th>Số Lượng còn <i class="fa fa-sort"></i></th>
        </tr>
    </thead>
    <tbody>
        <%
            for (int i = 0; i < result.length; i++) {
        %>
                <tr>
                    <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value=<%=result[i][0]%></td>
                    <td><a href='info_staff.jsp?Username=<%=result[i][1]%>' ><%=result[i][0]%></a></td>
                    <td><%=result[i][2]%></td>
                    <td><%=result[i][1]%></td>
                    <td><%=result[i][6]%></td>
                    <td><%=result[i][5]%></td>
                    <td><%=result[i][4]%></td>

                </tr>
        <%
            }                                    
        %>
    </tbody>
</table>


