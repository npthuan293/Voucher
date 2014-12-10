<%-- 
    Document   : register
    Created on : Nov 26, 2014, 10:50:43 AM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />
        <style> 
            body{
                padding:40px;

            }
        </style>
        <script src="Scripts/bootstrap-datepicker.js">
        </script >
           <script>
              $('#date').datepicker();

        </script>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container">

        <div class="page-header">
            <h1>Đăng ký thành viên</h1>
        </div>

        <!-- Registration form - START -->
        <div class="container">
            <div class="row">
                <form action="Controller" role="form" method="post">
                    <div class="col-lg-6">
                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Thông tin bắt buộc</strong></div>
                        <div class="form-group">
                            <label for="InputUsername">Tên đăng nhập</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputUsername" id="InputUsername" placeholder="Tên đăng nhập" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
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
                        <div class="form-group">
                            <label for="InputDate">Ngày sinh</label>
                            <div class="input-group">
                                <input type="date" name="date" value="" id="date" class="form-control" required/>
                                <span class="input-group-addon" style="width: 0;"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>                  
                        <div class="form-group">
                            <label for="InputAddress">Địa chỉ</label>
                            <div class="input-group">
                                <textarea name="InputAddress" id="InputAddress" class="form-control" rows="5" required></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <input type="submit" name="btnAction" id="submit" value="Đăng ký" class="btn btn-info pull-right">
                    </div>
                </form>
                <div class='col-lg-5 col-md-push-1'>
                    <div class='col-md-12'>
                <%
                    String success = request.getParameter("success");
                    if (success !=null){
                    if (success.equals("true"))
                    {
                        //out.println("");
                        //out.println("");
                        out.println("<div class='alert alert-success'>");
                        out.println("<strong><span class='glyphicon glyphicon-ok'></span>Bạn đã đăng kí thành công</strong>");        
                        out.println("</div>");                   
                        //out.println("</div>"); 
                        //out.println("</div>"); 
                    }else{
                        //out.println("<div class='col-lg-5 col-md-push-1'>");
                        //out.println("<div class='col-md-12'>");                
                        out.println("<div class='alert alert-danger'>");         
                        out.println("<strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>");          
                        out.println("</div>"); 
                        //out.println("</div>"); 
                        //out.println("</div>");                 
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
