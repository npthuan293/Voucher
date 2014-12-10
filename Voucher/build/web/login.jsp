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
    </head>
    <body>
        <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center">Đăng nhập</h1>
                    </div>
                    <div class="modal-body">
                        <form class="form col-md-12 center-block" action="Controller" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control input-lg" placeholder="Username" name="username">
                            
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control input-lg" placeholder="Password" name="password">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block" name="btnAction" value="Login">Đăng nhập</button>
                            <span class="pull-right"><a href="register.jsp">Đăng ký</a></span>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">	                        
                        <div class="col-md-12">
                            <a href="index.jsp">
                                <button class="btn" data-dismiss="modal" aria-hidden="true">Trở về</button>
                            </a>
                            <%
                                String error = request.getParameter("error");
                                if (error != null ) {                                            
                                    out.print("<p>username or password invalid!</p>");
                                }                              
                            %>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
