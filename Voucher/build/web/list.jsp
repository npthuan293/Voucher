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
            out.println("Username da su dung");
        }else{
        out.println("Username co the su dung");
        }
    }
%>
