<%-- 
    Document   : total
    Created on : Dec 26, 2014, 1:44:54 AM
    Author     : PhuThuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    String soluong = request.getParameter("soluong");
    String dongia = request.getParameter("dongia");
    double total = 0;
    //if (!soluong.equals(null)){
          int count = Integer.parseInt(soluong);
          double per = Double.parseDouble(dongia);
         total = count*per;
    //}else{
    //   total = Double.parseDouble(dongia);
    //}
    out.println(total + " VNĐ");
%>
