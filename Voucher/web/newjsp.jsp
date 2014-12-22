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
        <script>
            function checkUsername(str){
                if (str.length == 0) {document.getElementById("txtCheck").innerHTML="";
                    return;
                }else{
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function(){
                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                            document.getElementById("txtHint").innerHTML = xmlhttp.responseText;;
                        }
                    }   
                    xmlhttp.open("GET","http://localhost:8084/Voucher/getHint?user=" + str,true);
                    xmlhttp.send();
                }
            }             
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <body>
            <p><b>Tim kiếm cơ bản:</b></p>
            <form action="http://localhost:8084/Voucher/getHint" method="get">
                Nhập tên cần tìm: <input type="text" name ="fname" onkeyup="checkUsername(this.value)">
                <input type="submit" value="checkReg">
            </form>
            <p>Gợi ý tên cần tìm: <span id="txtHint"></span></p> </body>
<!-- begin htmlcommentbox.com -->
 <div id="HCB_comment_box">
     <a href="http://www.htmlcommentbox.com">HTML Comment Box</a> is loading comments...
 </div>
 <link rel="stylesheet" type="text/css" href="//www.htmlcommentbox.com/static/skins/bootstrap/twitter-bootstrap.css?v=0" />
 <script type="text/javascript" id="hcb"> 
    if(!window.hcb_user){
        hcb_user={};
    } 
    (function(){
        var s=document.createElement("script"), l=(""+window.location).replace(/'/g,"%27") || hcb_user.PAGE, h="//www.htmlcommentbox.com";
        s.setAttribute("type","text/javascript");
        s.setAttribute("src", h+"/jread?page="+encodeURIComponent(l).replace("+","%2B")+"&opts=16862&num=10");
        if (typeof s!="undefined")
            document.getElementsByTagName("head")[0].appendChild(s);
    })
    (); /*-->*/ </script>
<!-- end htmlcommentbox.com -->        
        
        
    </body>
</html>
