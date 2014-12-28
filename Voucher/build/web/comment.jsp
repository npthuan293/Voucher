<%-- 
    Document   : comment
    Created on : Dec 27, 2014, 10:28:39 PM
    Author     : PhuThuan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="voucherShop.Comment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String noidung = request.getParameter("cmt");
    String mavoucher = (String) session.getAttribute("mavoucher"); 
    Comment c = new Comment();    
    if (noidung.length() != 0){
        Date today = new Date(System.currentTimeMillis());
        SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String thoigian = timeFormat.format(today);
        String username = (String) session.getAttribute("Username");
        c.InsertCMT(username, mavoucher, noidung, thoigian);
    }else{
        out.println("Viết gì đó...");
    }
    Object[][] cmt = c.LoadCommentByMaV(mavoucher); 
%>
<div>
<%
    for (int i = 0;i < cmt.length;i++){
%>
    <div class="form-group" >
        <label style="float:left;color:#428bca;width: 7%;"><%=cmt[i][1]%>: &nbsp;</label>
        <div>
            <label style="width:20%;float:left;" id="InputCMT"><%=cmt[i][3]%></label>
        </div> 
            <label style="font-size: 12px;color:gray;">Lúc: <%=cmt[i][4]%></label>
    </div>  
    <%
    }
    %> 
</div>
