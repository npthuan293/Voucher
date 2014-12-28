<%-- 
    Document   : list
    Created on : Dec 22, 2014, 10:43:18 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Account"%>
<%@page import="voucherShop.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    Connect cls = new Connect();
    Account a = new Account();
    String username = request.getParameter("username");
    boolean result = a.CheckAccount(username);
    if (username==null){
        out.println("");
    }else{
        if (result == true){
            out.println("<div style='color: red;'>Tên đăng nhập đã có người sử dụng!</div>");
        }else{
        out.println("<div style='color: green;'>Bạn có thể dùng tên đăng nhập này</div>");
        }
        if(username.length() <3){
            out.println("<div style='color: red;'>Tên đăng nhập quá ngắn!</div>");
        }
    }
%>
