<%-- 
    Document   : DetailVoucher
    Created on : Dec 25, 2014, 10:14:20 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Account"%>
<%@page import="voucherShop.Comment"%>
<%@page import="voucherShop.Voucher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mavoucher = request.getParameter("id");
    HttpSession sessionVoucher = request.getSession(true);
    sessionVoucher.setAttribute("mavoucher", mavoucher);    
    Voucher v = new Voucher();
    Object[][] result = v.LoadVOUCHERByMaVC(mavoucher);
    String username = (String) session.getAttribute("Username");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp" /> 
        <script>
            $(document).ready(function (){
               $('#listcmt').load('comment.jsp').show();
               $('#sendCMT').click(function(){
                  $.post('comment.jsp',{
                      cmt: cmtBox.InputCMT.value
                  },
                  function(result){
                     $('#listcmt').html(result).show();
                     $('#InputCMT').val("");
                  }); 
               });
            });            
        </script>       
        <style>
            body{
                padding: 80px;
            }
        </style>        
        <title><%=result[0][2]%></title>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <form action="ControllerOrder" name="voucher">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <input type="text" name="voucherName" value="<%=result[0][0]%>" hidden>
                        <h1 class="page-header"><%=result[0][2]%>
                        </h1>
                    </div>
                </div>  
                <div class="row">
                    <div class="col-md-7">
                        <img class="img-responsive" src="images/<%=result[0][0]%>.jpg" style="width: 600px;height: 300px;" alt="<%=result[0][2]%>">
                    </div>
                    <div class="col-md-5">

                        <p><%=result[0][3]%></p>
                        <h4 style="color: red;">Giá bán: <%=result[0][5]%> VNĐ</h4>
                        <h4 style="color: #70bd0f;">Đã mua <%=result[0][7]%></h4>
                        <a class="btn btn-success btn-lg" href="thanhtoan.jsp?<%=result[0][0]%>" role="button" style="color: white;text-decoration: none;">Mua ngay</a>
                    </div>
                </div>  
                <div class="row">
                    <div class="col-md-7">
                        <h2>Điều kiện</h2>
                        <h3><%=result[0][9]%></h3>
                    </div>
                    <div class="col-md-5">
                        <h2>Điểm nổi bật</h2>
                        <h3><%=result[0][10]%></h3>
                    </div>
                </div>
            </div>
        </form>
        <h3>Bình luận</h3><hr>
        <div class="row" style="margin: 20px;" >
            <div class="form-group" name="cmtBox">
                <label for="InputCMT" style="float:left;"><%=username%>: &nbsp;</label>
                <form name="cmtBox">
                    <textarea name="InputCMT" style="width:20%;float: left;" id="InputCMT" class="form-control" rows="3"></textarea>
                </form>                       
                <button class="btn btn-primary" style="margin:15px;" id="sendCMT" onclick="check(this.value)" >Gửi</button>
            </div>                
        </div>            
        <div class="row" style="margin: 20px;" id="listcmt">
            <div>
            <%
                Comment c = new Comment();
                Account a = new Account();
                Object[][] cmt = c.LoadCommentByMaV(mavoucher);
                for (int i = 0;i < cmt.length;i++){
            %>
                <div class="row">
                    <label style="float:left;color:#428bca;width: 7%;"><%=cmt[i][1]%>: &nbsp;</label>
                    <div>
                        <label style="width:20%;float:left;"><%=cmt[i][3]%></label>
                    </div> 
                        <label style="font-size: 12px;color:gray;">Lúc: <%=cmt[i][4]%></label>
                </div>  

            <%
                }
            %> 
            </div>
        </div>
            <jsp:include page="footer.jsp" />
    </body>
</html>
