<%-- 
    Document   : newjsp1
    Created on : Dec 22, 2014, 3:28:07 PM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form   name="myform">
            Enter: <input type="text" id="txtEnter" value="" onkeyup="showTable();"><br>
            <table border="1" id="table" style="display:none">
                
            </table><br>
            Result: <textarea name="txtResult" value="" id="txtResult" rows="6" cols="30"></textarea>
            
        </form>
    </body>
</html>
