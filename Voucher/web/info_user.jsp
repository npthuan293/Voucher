<%-- 
    Document   : info_user
    Created on : Nov 26, 2014, 10:53:50 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Event"%>
<%@page import="voucherShop.Account"%>
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
        <%
            String username = (String) session.getAttribute("Username");       
            Account a = new Account();
            Object[][] result = a.LoadAccountByUsername(username);          
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
                                <input type="text" class="form-control" disabled="disabled" name="InputUsername" id="InputUsername" placeholder="Enter Username" required  value="<%=result[0][0]%>"/>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputPass">Mật khẩu</label>
                            <div class="input-group">
                                <input type="password" class="form-control" name="InputPass" id="InputPass" placeholder="Enter Password" required value="<%=result[0][1]%>" />
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputName">Họ tên</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Your Name" required value="<%=result[0][2]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>                
                        <div class="form-group">
                            <label for="InputEmail">Email</label>
                            <div class="input-group">
                                <input type="email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Enter Email" required value="<%=result[0][3]%>">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSex">Giới tính</label>
                            <div class="input-group">
                                <select id="elm_42" class="form-control" name="InputSex" style="border-radius: 4px;" required>
                                    <%
                                        String sex =(String) result[0][4];
                                        if (sex.equals("Nam"))
                                        {
                                         out.println("<option selected='selected'>Nam</option>");
                                         out.println("<option >Nữ</option>");
                                        }else{
                                         out.println("<option >Nam</option>");
                                         out.println("<option selected='selected'>Nữ</option>");                                
                                        }
                                    %>
                                </select>                        
                            </div>
                        </div>    
                        <div class="form-group">
                            <label for="InputName">Ngày sinh</label>
                            <div class="input-group">
                                <input type="date" name="date" id="date" class="form-control" required value="<%=result[0][5]%>"/>
                                <span class="input-group-addon" style="width: 0;"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>                  
                        <div class="form-group">
                            <label for="InputAddress">Địa chỉ</label>
                            <div class="input-group">
                                <textarea name="InputAddress" id="InputAddress" class="form-control" rows="5" required><%=result[0][6]%></textarea>
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
                        //out.println("");
                        //out.println("");
                        out.println("<div class='alert alert-success'>");
                        out.println("<strong><span class='glyphicon glyphicon-ok'></span> Success! Message sent."+result[0][3]+"</strong>");        
                        out.println("</div>");                   
                        //out.println("</div>"); 
                        //out.println("</div>"); 
                    }else{
                        //out.println("<div class='col-lg-5 col-md-push-1'>");
                        //out.println("<div class='col-md-12'>");                
                        out.println("<div class='alert alert-danger'>");         
                        out.println("<strong><span class='glyphicon glyphicon-remove'></span><strong> Error! Please check all page inputs.</strong>");          
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
