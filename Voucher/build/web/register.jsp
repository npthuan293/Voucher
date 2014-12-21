<%-- 
    Document   : register
    Created on : Nov 26, 2014, 10:50:43 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng ký</title>
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
            $(document).ready(function () {
                    $('#date2').datepicker();
            });
            function checkUsername(str){
                if (str.length == 0) {document.getElementById("txtCheck").innerHTML="";
                    return;
                }else{
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function(){
                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                            document.getElementById("txtCheck").innerHTML = xmlhttp.responseText;
                        }
                    }   
                    xmlhttp.open("GET","http://localhost:8084/Voucher/Controller?btnAction=checkReg&user=" + str,true);
                    xmlhttp.send();
                }
            } 
        </script>
    </head>
    <body>         
        <jsp:include page="navbar.jsp" />
        <div class="container">
        <%
            String username = (String) session.getAttribute("Username");
            Event e = new Event();
            if (username != null) {               
                String result = e.CheckAdmin(username);
                if (result.equals("Admin")) {
        %>
                    <div class="page-header">
                        <h1>Thêm nhân viên</h1>
                    </div>
        <%
                }
            }
            else{
        %>
                <div class="page-header">
                    <h1>Đăng ký thành viên</h1>
                </div>  
        <%
                }
        %>
        
        <!-- Registration form - START -->
        <div class="container">
            <div class="row">
                <form action="Controller" role="form" >
                    <div class="col-lg-6">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Thông tin bắt buộc</strong></div>
                        <div class="form-group">
                            <label for="InputUsername">Tên đăng nhập</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputUsername" id="InputUsername" placeholder="Tên đăng nhập" onkeyup="checkUsername(this.value)" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                <h4><span id="txtCheck"></h4>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputPass">Mật khẩu</label>
                            <div class="input-group">
                                <input type="password" class="form-control" name="InputPass" id="InputPass" placeholder="Mật khẩu" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputName">Họ tên</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Họ tên" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputCMND">CMND</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputCMND" id="InputCMND" placeholder="Số CMND" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSDT">Số điện thoại</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputSDT" id="InputSDT" placeholder="Số điện thoại" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>                        
                        <div class="form-group">
                            <label for="InputEmail">Email</label>
                            <div class="input-group">
                                <input type="email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Email" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSex">Giới tính</label>
                            <div class="input-group">
                                <select id="elm_42" class="form-control" name="InputSex" style="border-radius: 4px;">
                                    <option >Nam</option>
                                    <option >Nữ</option>
                                </select>                        
                            </div>
                        </div>    
                        <div class="form-group" style="width: 35%;">
                            <label for="InputDate" >Ngày sinh</label>
                            <div class='input-group date' >
                                 <input type="text" id="date" name="date" class="form-control" data-date-format="yyyy/mm/dd" required/>
                                 <span class="input-group-addon">
                                     <span class="glyphicon glyphicon-calendar">                                        
                                     </span>                                        
                                 </span>
                            </div> 
                            <%
                                
                                if (username != null){
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")){
                            %>    
                                        <label for="InputDateJob" >Ngày vào làm</label>
                                        <div class='input-group date' >
                                            <input type="text" id="date2" name="datejob" class="form-control" data-date-format="yyyy/mm/dd" required/>
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar">                                        
                                                </span>                                        
                                            </span>
                                        </div>
                            <%
                                    }
                                }                               
                            %>
                        </div>  
                        <div class="form-group">
                            <label for="InputAddress">Địa chỉ</label>
                            <div class="input-group">
                                <textarea name="InputAddress" id="InputAddress" class="form-control" rows="5" required></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <%
                                if (username != null){
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")){
                        %>
                                        <input type="submit" name="btnAction" id="submit" value="Tạo tài khoản" class="btn btn-info pull-right">
                                        <%
                                        }                              
                                }else{
                        %>
                                <input type="submit" name="btnAction" id="submit" value="Đăng ký" class="btn btn-info pull-right">
                        <%
                                }
                        %>
                    </div>
                </form>
                <div class='col-lg-5 col-md-push-1'>
                    <div class='col-md-12'>
                <%
                    String success = request.getParameter("success");
                    if (success !=null){
                        if (success.equals("true")){
                %>                           
                        <div class='alert alert-success'>
                            <strong><span class='glyphicon glyphicon-ok'></span>Bạn đã đăng kí thành công</strong>      
                        </div>   
                <%
                        }else{    
                 %>
                        <div class='alert alert-danger'>        
                            <strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>       
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
