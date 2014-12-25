package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Event;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Đăng ký</title>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("\r\n");
      out.write("        <style> \r\n");
      out.write("            body{\r\n");
      out.write("                padding:40px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                    $('#date').datepicker();\r\n");
      out.write("            });\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                    $('#date2').datepicker();\r\n");
      out.write("            });\r\n");
      out.write("            function checkUsername(str){\r\n");
      out.write("                if (str.length == 0) {document.getElementById(\"txtCheck\").innerHTML=\"\";\r\n");
      out.write("                    return;\r\n");
      out.write("                }else{\r\n");
      out.write("                    var xmlhttp = new XMLHttpRequest();\r\n");
      out.write("                    xmlhttp.onreadystatechange = function(){\r\n");
      out.write("                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){\r\n");
      out.write("                            document.getElementById(\"txtCheck\").innerHTML = xmlhttp.responseText;\r\n");
      out.write("                        }\r\n");
      out.write("                    }   \r\n");
      out.write("                    xmlhttp.open(\"GET\",\"http://localhost:8084/Voucher/Controller?btnAction=checkReg&user=\" + str,true);\r\n");
      out.write("                    xmlhttp.send();\r\n");
      out.write("                }\r\n");
      out.write("            } \r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>         \r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        ");

            String username = (String) session.getAttribute("Username");
            Event e = new Event();
            if (username != null) {               
                String result = e.CheckAdmin(username);
                if (result.equals("Admin")) {
        
      out.write("\r\n");
      out.write("                    <div class=\"page-header\">\r\n");
      out.write("                        <h1>Thêm nhân viên</h1>\r\n");
      out.write("                    </div>\r\n");
      out.write("        ");

                }
            }
            else{
        
      out.write("\r\n");
      out.write("                <div class=\"page-header\">\r\n");
      out.write("                    <h1>Đăng ký thành viên</h1>\r\n");
      out.write("                </div>  \r\n");
      out.write("        ");

                }
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <!-- Registration form - START -->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <form action=\"Controller\" role=\"form\" >\r\n");
      out.write("                    <div class=\"col-lg-6\">\r\n");
      out.write("                        <div class=\"well well-sm\"><strong><span class=\"glyphicon glyphicon-asterisk\"></span>Thông tin bắt buộc</strong></div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputUsername\">Tên đăng nhập</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputUsername\" id=\"InputUsername\" placeholder=\"Tên đăng nhập\" onkeyup=\"checkUsername(this.value)\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                                <h4><span id=\"txtCheck\"></h4>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputPass\">Mật khẩu</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"InputPass\" id=\"InputPass\" placeholder=\"Mật khẩu\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputName\">Họ tên</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputName\" id=\"InputName\" placeholder=\"Họ tên\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputCMND\">CMND</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputCMND\" id=\"InputCMND\" placeholder=\"Số CMND\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputSDT\">Số điện thoại</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputSDT\" id=\"InputSDT\" placeholder=\"Số điện thoại\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>                        \r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputEmail\">Email</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <input type=\"email\" class=\"form-control\" id=\"InputEmailFirst\" name=\"InputEmail\" placeholder=\"Email\" required>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputSex\">Giới tính</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <select id=\"elm_42\" class=\"form-control\" name=\"InputSex\" style=\"border-radius: 4px;\">\r\n");
      out.write("                                    <option >Nam</option>\r\n");
      out.write("                                    <option >Nữ</option>\r\n");
      out.write("                                </select>                        \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>    \r\n");
      out.write("                        <div class=\"form-group\" style=\"width: 35%;\">\r\n");
      out.write("                            <label for=\"InputDate\" >Ngày sinh</label>\r\n");
      out.write("                            <div class='input-group date' >\r\n");
      out.write("                                 <input type=\"text\" id=\"date\" name=\"date\" class=\"form-control\" data-date-format=\"yyyy/mm/dd\" required/>\r\n");
      out.write("                                 <span class=\"input-group-addon\">\r\n");
      out.write("                                     <span class=\"glyphicon glyphicon-calendar\">                                        \r\n");
      out.write("                                     </span>                                        \r\n");
      out.write("                                 </span>\r\n");
      out.write("                            </div> \r\n");
      out.write("                            ");

                                
                                if (username != null){
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")){
                            
      out.write("    \r\n");
      out.write("                                        <label for=\"InputDateJob\" >Ngày vào làm</label>\r\n");
      out.write("                                        <div class='input-group date' >\r\n");
      out.write("                                            <input type=\"text\" id=\"date2\" name=\"datejob\" class=\"form-control\" data-date-format=\"yyyy/mm/dd\" required/>\r\n");
      out.write("                                            <span class=\"input-group-addon\">\r\n");
      out.write("                                                <span class=\"glyphicon glyphicon-calendar\">                                        \r\n");
      out.write("                                                </span>                                        \r\n");
      out.write("                                            </span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                            ");

                                    }
                                }                               
                            
      out.write("\r\n");
      out.write("                        </div>  \r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label for=\"InputAddress\">Địa chỉ</label>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <textarea name=\"InputAddress\" id=\"InputAddress\" class=\"form-control\" rows=\"5\" required></textarea>\r\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        ");

                                if (username != null){
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")){
                        
      out.write("\r\n");
      out.write("                                        <input type=\"submit\" name=\"btnAction\" id=\"submit\" value=\"Tạo tài khoản\" class=\"btn btn-info pull-right\">\r\n");
      out.write("                                        ");

                                        }                              
                                }else{
                        
      out.write("\r\n");
      out.write("                                <input type=\"submit\" name=\"btnAction\" id=\"submit\" value=\"Đăng ký\" class=\"btn btn-info pull-right\">\r\n");
      out.write("                        ");

                                }
                        
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("                <div class='col-lg-5 col-md-push-1'>\r\n");
      out.write("                    <div class='col-md-12'>\r\n");
      out.write("                ");

                    String success = request.getParameter("success");
                    if (success !=null){
                        if (success.equals("true")){
                
      out.write("                           \r\n");
      out.write("                        <div class='alert alert-success'>\r\n");
      out.write("                            <strong><span class='glyphicon glyphicon-ok'></span>Bạn đã đăng kí thành công</strong>      \r\n");
      out.write("                        </div>   \r\n");
      out.write("                ");

                        }else{    
                 
      out.write("\r\n");
      out.write("                        <div class='alert alert-danger'>        \r\n");
      out.write("                            <strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>       \r\n");
      out.write("                        </div> \r\n");
      out.write("                ");

                        }
                    }
                
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- Registration form - END -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
