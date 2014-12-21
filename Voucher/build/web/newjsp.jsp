<%-- 
    Document   : newjsp
    Created on : Dec 15, 2014, 1:12:31 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Member"%>
<%@page import="voucherShop.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //String username = (String) session.getAttribute("Username");       
            Account a = new Account();
            Member m = new Member();
            Object[][] result = a.LoadAccountByUsername("xukavo");
            Object[][] result1 = m.LoadMemberByUsername("xukavo");
        %>        
<form action="Controller" role="form" method="post">
    <div class="form-group">
                        <label for="Image" class="control-label col-xs-2">mavoucher</label>
                        <div class="col-xs-6 checkbox-inline">
                            <input type="text" name="mavoucher" value=""><br>
                            <img src='' class="img-thumbnail">
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="Image" class="control-label col-xs-2">Image</label>
                        <div class="col-xs-6 checkbox-inline">
                            <input type="file" name="imgfile" value=""><br>
                            <img src='' class="img-thumbnail">
                        </div>
                    </div>    
  <input type="submit" name="btnAction" id="submit" value="img" class="btn btn-default">
</form>
    </body>
</html>
