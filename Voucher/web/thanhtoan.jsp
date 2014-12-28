<%-- 
    Document   : thanhtoan.jsp
    Created on : Dec 26, 2014, 12:52:37 AM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Voucher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mavoucher = request.getParameter("id");
    Voucher v = new Voucher();
    Object[][] result = v.LoadVOUCHERByMaVC(mavoucher);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp" />
        <script>
            $(document).ready(function(){
               $('#total').load('total.jsp').show();
               $('#count').change(function(){
                  $.post('total.jsp',{
                      soluong : dathang.count.value,
                      dongia: dathang.dongia.value},
                  function(result){
                      $('#total').html(result).show();
                  })
               });
            });            
        </script>
        <style> 
            body{
                padding:80px;

            }
            .form-control.a{
                border-radius: 4px;
            }
        </style>        
        <title>Thanh toán</title>
    </head>
    <body>
    <jsp:include page="navbar.jsp" />
    <form action="ControllerVoucher" role="form" name="dathang">
        <div class="container">
            <h1 style="background: url(images/thanhtoan.png) no-repeat;padding-left: 50px;"><label>Thanh toán</label></h1>
            <div class="row">
                <div class="col-md-4">
                    <img class="img-responsive" src="images/<%=result[0][0]%>.jpg" style="width: 300px;height: 200px;" alt="<%=result[0][2]%>">
                </div>
                <div class="col-md-4">                   
                    <h4 name="mavoucher">Mã sản phẩm: <%=result[0][0]%></h4>
                    <h4>Số lượng: </h4>
                        <div class="input-group">
                            <select id="count" class="form-control" name="count" style="border-radius: 4px;" onchange="check(this.value)">
                                <%
                                    for (int i = 1;i<=20;i++){
                                %>
                                    <option ><%=i%></option>
                                <%
                                    }
                                %>
                            </select>                        
                        </div>
                    <h4 for="InputCount" style="color: red;">Giá bán: <span class="dongia"><%=result[0][5]%></span> VNĐ</h4> <br>                   
                    <input type="text" id="dongia" name="dongia" hidden value="<%=result[0][5]%>">
                    <h4 style="color: red;">Thành tiền:
                    <span id="total"><%=result[0][5]%></span> VNĐ</h4>
                </div>                
            </div>
            <div class="row" style="border-top: 1px solid #eee;margin-top: 10px;">    
                <h1 style="padding-left: 50px;"><label>Thông tin</label></h1>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="InputUsername">Tên đăng nhập</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputUsername" id="InputUsername" value="<%=(String) session.getAttribute("Username")%>">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>                        
                    <div class="form-group">
                        <label for="InputName">Tên người mua</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputName" id="InputName" required>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="InputSDT">Số điện thoại</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputSDT" id="InputSDT" required>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>                        
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="InputHT">Hình thức thanh toán</label>
                        <div class="input-group">
                            <select id="elm_42" class="form-control" name="InputHT" style="border-radius: 4px;">
                                <option >Trực tiếp</option>
                                <option >Gián tiếp</option>
                            </select>                               
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="InputTKNH">Tài khoản ngân hàng</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputTKNH" id="InputTKNH">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="InputNumber">Số tài khoản</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputNumber" id="InputNumber">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>                        
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="InputNote">Ghi chú</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputNote" id="InputNote">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="InputAddress">Địa chỉ giao hàng</label>
                        <div class="input-group">
                            <textarea name="InputAddress" id="InputAddress" class="form-control" rows="4" required></textarea>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                        </div>
                    </div>                           
                </div>            
            </div>
            <div class="row">
                <input type="submit" name="btnAction" id="submit" value="Đặt hàng" class="btn btn-primary pull-right btn-lg">                                
            </div>
        </div> 
    </form> 
    </body>
</html>
