<%-- 
    Document   : newjsp2
    Created on : Dec 22, 2014, 3:55:33 PM
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
        <h3>File Upload:</h3>
        Select a file to upload: <br />
        <form action="ControllerVoucher" method="post" enctype="multipart/form-data">
            <input type="file" name="file" size="50" /><br/>
        <input type="submit" value="Upload File" />
        </form>
    </body>
</html>