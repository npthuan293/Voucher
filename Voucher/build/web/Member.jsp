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
            .table>thead>tr>th{
             vertical-align: top;   
            }
        </style> 
        <script>
            $(document).ready(function () {
               $('#table').load('searchMember.jsp').show();
               $('#Input').keyup(function(){
                  $.post('searchMember.jsp',{input: list.Input.value},
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
                <form action="Controller" name="list">
                    <div class="row">
                        <div class="col-md-12" style="text-align: center">	
                            <h3>Danh sách thành viên</h3>
                        </div>
                    </div> 
                    <div class="row">
                        <h4 style="float:left;">Tìm kiếm: &nbsp; </h4>
                        <div class="input-group" style="width:20%;">
                            <input type="text" class="form-control" placeholder="Search" id="Input" name="Input">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit" disabled><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>                        
                    </div><br>
                    <div class="table-responsive" id="table">
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
                                %>
                                <tr>
                                    <td><input type='checkbox' name='Select' id='Select' class="checkbox1" value=<%=result[i][1]%> ></td>
                                    <td><%=result[i][1]%></a></td>
                                    <td><%=result[i][2]%></td>
                                    <td><%=result[i][6]%></td>
                                    <td><%=result[i][5]%></td>
                                    <td><%=result[i][4]%></td>
                                    <td><%=result[i][9]%></td>
                                    <td><%=result[i][3]%></td>
                                    <td><%=result2[0][1]%></td>
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
