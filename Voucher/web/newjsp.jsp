<%-- 
    Document   : newjsp
    Created on : Dec 15, 2014, 1:12:31 AM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<form action="Controller" role="form">

  <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
  <input type="submit" name="btnAction" id="submit" value="img" class="btn btn-default">
</form>
    </body>
</html>
