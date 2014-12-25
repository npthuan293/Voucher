<%-- 
    Document   : AddVoucher
    Created on : Dec 24, 2014, 3:04:29 PM
    Author     : Huy
--%>

<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thêm Voucher</title>
        <jsp:include page="head.jsp" />
        <style> 
            body{
                padding:40px;

            }
        </style>
        <!--
        <script type="text/javascript">
            $(document).ready(function () {
                    $('#date').datepicker();
            });
            $(document).ready(function () {
                    $('#date2').datepicker();
            });
            function checkUsername(str){
                if (str.length == 0) {document.getElementById("txtCheck").innerHTML="";
                    return;
                }else{
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function(){
                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                            document.getElementById("txtCheck").innerHTML = xmlhttp.responseText;
                        }
                    }   
                    xmlhttp.open("GET","http://localhost:8084/Voucher/Controller?btnAction=checkReg&user=" + str,true);
                    xmlhttp.send();
                }
            } 
        </script> -->
    </head>
    <body>
        <%--
            String username = (String) session.getAttribute("Username");
            if (username != null) {
                Event e = new Event();
                String result = e.CheckAdmin(username);
                if (!result.equals("Nhân viên bán hàng")) {
                    response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }
           --%>
        <jsp:include page="navbar.jsp" />
        <div class="page-header" style="margin: 60px 0px 20px 65px;">
                    <h1>Thêm Thông Tin Voucher</h1>
        </div> 
        <div class="container">
        <!-- Registration form - START -->
        <div class="container">
            <div class="row">
                <form action="Controller" role="form" >
                    <div class="well well-sm" style="margin: 0px 555px 0px 450px;"><strong><span class="glyphicon glyphicon-asterisk"></span>Thông tin bắt buộc</strong></div>
                    <div class="col-lg-6" style="padding-top: 30px;">
                        <div class="form-group">
                            <label for="InputMADM">Mã Danh Mục</label>
                            <div class="input-group">
                                <select id="elm_42" class="form-control" name="InputMADM" style="border-radius: 4px;">
                                    <option>DL</option>
                                    <option>AU</option>
                                    <option>GT</option>
                                    <option>SP</option>
                                </select>                        
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputTENVOUCHER">Tên Voucher</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputTENVOUCHER" id="InputTENVOUCHER">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputTHONGTIN">Thông Tin Voucher</label>
                            <div class="input-group">
                                <textarea name="InputTHONGTIN" id="InputTHONGTIN" name="InputTHONGTIN"class="form-control" rows="5" ></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputGIABAN">Giá Bán</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputGIABAN" id="InputGIABAN" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSLCON">Số Lượng</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="InputSLCON" id="InputSLCON" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputSLBAN">Số Lượng Đã Bán</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="InputSLBAN" name="InputSLBAN" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputHA">Hình Ảnh Voucher</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="InputHA" name="InputHA" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                        </div>
                        </div>
             <div class="col-7" style="padding-top: 29px;">
                        <div class="form-group">
                            <label for="InputTHOIHAN">Thời Hạn Voucher</label>
                            <div class="input-group">
                                 <input type="text" class="form-control" id="InputTHOIHAN" name="InputTHOIHAN" >
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>                       
                            </div>
                        </div>
                    <div class="form-group">
                            <label for="InputDK">Điều Kiện</label>
                            <div class="input-group">
                                 <textarea name="InputDK" id="InputDK" name="InputDK" class="form-control" rows="9" ></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>                       
                            </div>
                        </div>  
                        <div class="form-group">
                            <label for="InputDNB">Điểm Nổi Bật</label>
                            <div class="input-group">
                                 <textarea name="InputDNB" id="InputDK" name="InputDNB" name="InputDNB" class="form-control" rows="8.5" ></textarea>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>                       
                            </div>
                        </div> 
                 <div style="margin-top: 43px">;
                     <input type="submit" name="btnAction" id="submit" value="Thêm Voucher" class="btn btn-info pull-right">
                 </div>
                 </div>
                </form>
                <div>
                <div class='col-lg-5 col-md-push-1'>
                    <div class='col-md-12'>
                <%
                    String success = request.getParameter("success");
                    if (success !=null){
                        if (success.equals("true")){
                %>                           
                        <div class="alert alert-success" style="margin: -43px 107px;">
                            <strong><span class='glyphicon glyphicon-ok'></span>Bạn đã thêm thành công</strong>      
                        </div>   
                <%
                        }else{    
                 %>
                        <div class='alert alert-danger'>        
                            <strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>       
                        </div> 
                <%
                        }
                    }
                %>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!-- Registration form - END -->
        </div>
    </body>
</html>