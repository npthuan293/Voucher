<%-- 
    Document   : login
    Created on : Nov 26, 2014, 10:52:21 AM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />  
        <title>Login Page</title>
        <style>
            body {
                background-color: #eee;
            }            
        </style>
    </head>
    <body>

                
                    <div class="h1" style="border: none;">
                        <h1 class="text-center">Đăng nhập</h1>
                    </div>                   
                        <form class="form col-md-12 center-block " action="Controller" method="post" style="width: 25%;float: none;">
                        <div class="form-group">
                            <input type="text" class="form-control input-lg" placeholder="Username" name="username">
                            
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control input-lg" placeholder="Password" name="password">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block" name="btnAction" value="Login">Đăng nhập</button>
                        </div>
                            
                        
                            <%
                                String error = request.getParameter("error");
                                if (error != null ) {
                            %>
                            <script type="text/javascript">
    $(window).load(function(){
        $('#loginModal').modal('show');
    });
</script>
                            <div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                              <div class="modal-dialog modal-sm">
                                <div class="modal-content" style="margin-top: 150px;width: 120%;">                               
                                    <h4>Tên đăng nhập hoặc mật khẩu không đúng!</h4>
                                </div>
                              </div>
                            </div>
                            <%
                                }                              
                            %>
                        

                      </form>
                    <div class="col-md-12" style="width: 50%;padding-left: 525px;">
                            <a href="index.jsp">
                                <button class="btn" data-dismiss="modal" aria-hidden="true">Trở về</button>
                            </a> 
                        </div>
                                       <div class="col-md-12" style="float: left;width: 50%;padding-left: 78px;">
                            <a href="register.jsp">
                                <button class="btn" data-dismiss="modal" aria-hidden="true">Đăng ký</button>
                            </a>
                        </div>
         
    </body>
</html>
