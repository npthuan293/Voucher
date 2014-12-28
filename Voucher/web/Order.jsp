<%-- 
    Document   : Order
    Created on : Dec 24, 2014, 11:55:41 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Orders"%>
<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />    
        <script src="Scripts/jquery.tablesorter.js"></script>
        <script src="Scripts/tables.js"></script>
        <script>
            $(document).ready(function(){
               $('#table').load('searchOrder.jsp').show();       
               $('#Input').keyup(function(){
                  $.post('searchOrder.jsp',{input : list.Input.value},
                  function(result){
                      $('#table').html(result).show();
                  });
               });
            });            
            $(document).ready(function() {
                $('#selectall').click(function(event) {  //on click 
                    if(this.checked) { // check select status
                        $('.checkbox1').each(function() { //loop through each checkbox
                            this.checked = true;  //select all checkboxes with class "checkbox1"               
                        });
                    }else{
                        $('.checkbox1').each(function() { //loop through each checkbox
                            this.checked = false; //deselect all checkboxes with class "checkbox1"                       
                        });         
                    }
                });   
            });             
        </script>
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
         <%
            String username = (String) session.getAttribute("Username");
            if (username != null) {
                Event e = new Event();
                String result = e.CheckAdmin(username);
                if (!result.equals("Nhân viên bán hàng")) {
                    response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }           
        %>        
        <jsp:include page='navbar.jsp' />
            <div class="container">
                <form action="ControllerOrder" name="list">
                    <div class="row">
                        <div class="col-md-12 ">	
                            <h3 style="text-align: center;">Danh sách đơn hàng</h3>
                       </div>
                    </div>
                    <label style="float: left;margin-top: 5px;">Tìm kiếm:&nbsp &nbsp</label>                 
                    <div class="input-group" style="width:20%;">
                        <input type="text" class="form-control" placeholder="Tìm kiếm" id="Input" name="Input">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" disabled><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                    <br>
                    <div class="table-responsive" id="table">
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
                                    Orders o = new Orders();
                                    Object[][] result = o.LoadOrder();                        
                                    for (int i = 0; i < result.length; i++) {                                       
                                %>
                                <tr>
                                    <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value="<%=result[i][0]%>"></td>
                                    <td><a href='info_staff.jsp?Username=<%=result[i][0]%>'><%=result[i][0]%></a></td>
                                    <td><%=result[i][1]%></td>
                                    <td><%=result[i][6]%></td>
                                    <td><%=result[i][2]%></td>
                                    <td><%=result[i][3]%></td>
                                    <td><select name="thanhtoan">  
                                        
                                        <%                                            
                                            String tinhtrang = (String)result[i][4];
                                            if (tinhtrang.equals("Chưa thanh toán")){
                                        %>  
                                                <option selected='selected'><%=tinhtrang%></option>
                                                <option>Đã thanh toán</option>
                                        <%
                                            }else{
                                        %>
                                                <option>Chưa thanh toán</option>
                                                <option selected='selected'><%=tinhtrang%></option>      
                                        <%
                                            }
                                        %>
                                        </select>
                                    </td>
                                    <td><select name="trangthai">
                                        <%                                            
                                            String trangthai = (String)result[i][5];
                                            if (trangthai.equals("Chưa duyệt")){
                                        %>
                                            
                                                <option selected='selected'><%=trangthai%></option>
                                                <option>Đã duyệt</option> 
                                        <%
                                            }else{
                                        %>
                                                <option>Chưa duyệt</option>
                                                <option selected='selected' ><%=trangthai%></option>                            
                                        <%
                                            }
                                        %>
                                        </select>
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
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 ">	
                            <button type="submit" class="btn btn-primary" name="btnAction" value="DeleteOrder">Xóa đơn hàng</button>   
                            <button type="submit" class="btn btn-primary" name="btnAction" value="ChangeStatus">Cập nhật</button>  
                        </div>
                    </div>                            
                </form>
            </div>
    </body>
</html>
