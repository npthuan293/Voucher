<%-- 
    Document   : info_user
    Created on : Nov 26, 2014, 10:53:50 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Member"%>
<%@page import="voucherShop.Event"%>
<%@page import="voucherShop.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Trang thông tin cá nhân</title>
        <jsp:include page="head.jsp" />
        <style> 
            body{
                padding:40px;

            }
        </style>
        <script type="text/javascript">
			$(document).ready(function () {
				$('#date').datepicker();
			});
        </script>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <%
            String username = (String) session.getAttribute("Username");       
            Account a = new Account();
            Member m = new Member();
            Object[][] result = a.LoadAccountByUsername(username);
            Object[][] result1 = m.LoadMemberByUsername(username);
        %>
        <div class="container">

            <div class="page-header">
                <h1>Thông tin cá nhân</h1>
            </div>

        <!-- Registration form - START -->
        <div class="container">
            <div class="row">
                <form action="Controller" role="form">
                    <div class="col-lg-6">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Thông tin bắt buộc</strong></div>
                        <div class="form-group">
                            <label for="InputUsername">Tên đăng nhập</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputUsername" id="InputUsername" placeholder="Enter Username" required  value="<%=result[0][0]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputPass">Mật khẩu</label>
                            <div class="input-group">
                                <input type="password" class="form-control" name="InputPass" id="InputPass" placeholder="Enter Password" required value="<%=result[0][1]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputName">Họ tên</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Your Name" required value="<%=result1[0][2]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>  
                        <div class="form-group">
                            <label for="InputCMND">CMND</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputCMND" id="InputCMND" placeholder="Số CMND" required value="<%=result1[0][7]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSDT">Số điện thoại</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputSDT" id="InputSDT" placeholder="Số điện thoại" required value="<%=result1[0][4]%>"> 
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>                         
                        <div class="form-group">
                            <label for="InputEmail">Email</label>
                            <div class="input-group">
                                <input type="email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Enter Email" required value="<%=result1[0][5]%>" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSex">Giới tính</label>
                            <div class="input-group">
                                <select id="elm_42" class="form-control" name="InputSex" style="border-radius: 4px;" required>
                                    <%
                                        String sex =(String) result1[0][10];
                                        if (sex.equals("Nam"))                                    
                                        {
                                    %>        
                                        <option selected='selected'>Nam</option>
                                        <option>Nữ</option>
                                    <%
                                        }else{
                                    %>
                                        <option >Nam</option>
                                        <option selected='selected'>Nữ</option>
                                    <%
                                        }
                                    %>
                                </select>                        
                            </div>
                        </div>    
                        <div class="form-group" style="width: 35%;" >
                            <label for="InputDate">Ngày sinh</label>
                            <div class='input-group date' >
                                <input type="text" id="date" name="date" class="form-control" data-date-format="yyyy/mm/dd" required value="<%=result1[0][6]%>"/>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar">                                        
                                    </span>                                        
                                </span>
                            </div>
                        </div>                  
                        <div class="form-group">
                            <label for="InputAddress">Địa chỉ</label>
                            <div class="input-group">
                                <textarea name="InputAddress" id="InputAddress" class="form-control" rows="5" required><%=result1[0][3]%></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <input type="submit" name="btnAction" id="submit" value="Cập nhật" class="btn btn-info pull-right">
                    </div>
                </form>
                <div class='col-lg-5 col-md-push-1'>
                    <div class='col-md-12'>
                <%
                    String success = request.getParameter("success");
                    if (success !=null){
                        if (success.equals("true"))
                        {
                %>
                        <div class='alert alert-success'>
                            <strong><span class='glyphicon glyphicon-ok'></span>Đăng ký thành công !!!</strong>      
                        </div>                  
                    </div>
                 </div>
                <%
                        }else{
                %>             
                        <div class='alert alert-danger'>       
                            <strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi.Kiểm tra lại thông tin đăng ký.</strong>    
                        </div>  
                    </div>
                     </div>
                        <%
                        }
                    }
                %>
                    </div>
                </div>
            </div>
        </div>
        <!-- Registration form - END -->

        </div>
    </body>
</html>
