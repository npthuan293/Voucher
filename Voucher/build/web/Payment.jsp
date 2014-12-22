<%-- 
    Document   : Payment
    Created on : Dec 21, 2014, 2:52:14 PM
    Author     : PhuThuan
--%>

<%@page import="voucherShop.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .height {
                min-height: 200px;
            }

            .icon {
                font-size: 47px;
                color: #5CB85C;
            }

            .iconbig {
                font-size: 77px;
                color: #5CB85C;
            }

            .table > tbody > tr > .emptyrow {
                border-top: none;
            }

            .table > thead > tr > .emptyrow {
                border-bottom: none;
            }

            .table > tbody > tr > .highrow {
                border-top: 3px solid;
            }
        </style>        
        <title>Đặt hàng</title>
    </head>
    <body>
        <jsp:include page='navbar.jsp' />
        <form action="ControllerShop" style="margin-top: 80px;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="text-center">
                            <i class="fa fa-search-plus pull-left icon"></i>
                            <h2>Hóa đơn mua hàng</h2>
                        </div>
                        <hr>
                        <%
                            String madh = request.getParameter("id");
                            Orders o = new Orders();
                            Object[][] result = o.LoadOrderByMaDH(madh);
                        %>                        
                        <div class="row">
                            <div class="col-xs-12 col-md-3 col-lg-3 pull-left">
                                <div class="panel panel-default height">
                                    <div class="panel-heading">Thông tin đơn hàng</div>
                                    <div class="panel-body">
                                        <strong>Mã đơn hàng: </strong><%=result[0][0]%><br>                                       
                                        <strong>Người đặt hàng:</strong><br>
                                        <%=result[0][6]%><br>
                                        <strong>Số điện thoại:</strong><br>
                                        <%=result[0][7]%><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-3 col-lg-3">
                                <div class="panel panel-default height">
                                    <div class="panel-heading">Thông tin tài khoản</div>
                                    <div class="panel-body">
                                        <strong>Chủ tài khoản: </strong><%=result[0][10]%><br>
                                        <strong>Card Number: </strong><%=result[0][9]%><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-3 col-lg-3">
                                <div class="panel panel-default height">
                                    <div class="panel-heading">Thông tin khác</div>
                                    <div class="panel-body">
                                        <strong>Hình thức thanh toán: </strong><%=result[0][3]%><br>
                                        <strong>Tình trạng thanh toán: </strong><%=result[0][4]%><br>
                                        <strong>Trạng thái đơn hàng: </strong><%=result[0][5]%><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-3 col-lg-3 pull-right">
                                <div class="panel panel-default height">
                                    <div class="panel-heading">Địa chỉ giao hàng</div>
                                    <div class="panel-body">
                                        <strong>Địa chỉ: </strong><%=result[0][8]%><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="text-center"><strong>Danh mục sản phẩm</strong></h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr>
                                                <td><strong>Item Name</strong></td>
                                                <td class="text-center"><strong>Đơn giá</strong></td>
                                                <td class="text-center"><strong>Số lượng</strong></td>
                                                <td class="text-right"><strong>Tổng</strong></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                double dongia = 9500;
                                                double total=0;
                                                Object[][] result2 = o.LoadCTDHByMaDH((String)result[0][0]);
                                                for (int i = 0; i < result2.length; i++) {
                                            %>
                                            <tr>
                                                <td><%=result2[i][0]%></td>
                                                <td class="text-center"><%=dongia%> VNĐ</td>
                                                <td class="text-center"><%=result2[i][2]%></td>
                                                <%
                                                    int soluong = Integer.parseInt((String)result2[i][2]);
                                                %>
                                                <td class="text-right"><%=dongia*soluong%> VNĐ</td>
                                                <%total += dongia*soluong;%>
                                            </tr>
                                            <%
                                                }
                                            %>                                            
                                            <tr>
                                                <td class="highrow"></td>
                                                <td class="highrow"></td>
                                                <td class="highrow text-center"><strong>Tổng hóa đơn</strong></td>
                                                <td class="highrow text-right"><%=total%> VNĐ</td>
                                            </tr>
                                        </tbody>
                                    </table>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" name="btnAction" value="AddOder" style="float: right;" data-toggle="modal" data-target="#Order">Đặt mua</button>
            </div>
        </form>
        <div class="modal fade" id="Order">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">Thông báo</h4>
              </div>
              <div class="modal-body">
                <p>Bạn đã đặt hàng thành công!</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->        
    </body>
</html>
