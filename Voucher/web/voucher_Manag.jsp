<%-- 
    Document   : voucher_Manag
    Created on : Dec 23, 2014, 11:02:08 AM
    Author     : Huy
--%>

<%@page import="voucherShop.Voucher"%>
<%@page import="voucherShop.Account"%>
<%@page import="voucherShop.Staff"%>
<%@page import="voucherShop.Event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp" />    
        <script src="Scripts/jquery.tablesorter.js"></script>
        <script src="Scripts/tables.js"></script>   
        <style> 
            body{
                padding:80px;

            }
            .table>thead>tr>th{
             vertical-align: top;   
            }
        </style>
        <script>
            $(document).ready(function(){
               $('#tableVoucher').load('VoucherByDM.jsp').show();
               
               $('#ListDM').change(function(){
                  $.post('VoucherByDM.jsp',{danhmuc : form.ListDM.value},
                  function(result){
                      $('#tableVoucher').html(result).show();
                  })
               });
            }); 
            $(document).ready(function() {
                $('#selectall').click(function(event) {  //on click 
                    if(this.checked) { // check select status
                        $('.checkbox1').each(function() { //loop through each checkbox
                            this.checked = true;  //select all checkboxes with class "checkbox1"               
                        });
                    }else{
                        $('.checkbox1').each(function() { //loop through each checkbox
                            this.checked = false; //deselect all checkboxes with class "checkbox1"                       
                        });         
                    }
                });   
            });           
        </script>
        <title>Quản lý Voucher</title>
    </head>
    <body>
        <%
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
           %>    
        <jsp:include page='navbar.jsp' />
            <div class="container">
                <form name="form" action="Controller">
                    <div class="row">
                        <div class="col-md-12 ">	
                             <div class="form-group">
                            <label style="float: left;margin-top: 6px;margin-right: 8px;font-size: large;">Chọn Danh Mục Voucher: </label><div class="input-group">
                                <select id="ListDM" class="form-control" name ="ListDM" onChange="check(this.value);" style="border-radius: 4px;">
                                    <option value="Tat ca">Tất cả</option>
                                    <option value="Du lich">Du Lịch</option>
                                    <option value="Am thuc">Ẩm Thực</option>
                                    <option value="Giai tri">Giải Trí</option>
                                    <option value="Spa">Spa</option>
                                </select> 
                            </div>
                        </div> 
                            <label for="ListDM">Danh sách voucher</label>
                       </div>
                    </div>                    
                    <div class="table-responsive" id="tableVoucher">        
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 ">	
                            <button type="submit" class="btn btn-primary" name="btnAction" value="AddVoucher">Add</button>
                            <button type="submit" class="btn btn-primary" name="btnAction" value="DeleteVoucherByMAVOUCHER">Delete</button>
                        </div>
                    </div>
                </form>
            </div>        

    </body>
</html>
