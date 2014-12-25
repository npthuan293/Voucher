package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Event;

public final class AddVoucher_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Thêm Voucher</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("\n");
      out.write("        <style> \n");
      out.write("            body{\n");
      out.write("                padding:40px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <!--\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                    $('#date').datepicker();\n");
      out.write("            });\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                    $('#date2').datepicker();\n");
      out.write("            });\n");
      out.write("            function checkUsername(str){\n");
      out.write("                if (str.length == 0) {document.getElementById(\"txtCheck\").innerHTML=\"\";\n");
      out.write("                    return;\n");
      out.write("                }else{\n");
      out.write("                    var xmlhttp = new XMLHttpRequest();\n");
      out.write("                    xmlhttp.onreadystatechange = function(){\n");
      out.write("                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){\n");
      out.write("                            document.getElementById(\"txtCheck\").innerHTML = xmlhttp.responseText;\n");
      out.write("                        }\n");
      out.write("                    }   \n");
      out.write("                    xmlhttp.open(\"GET\",\"http://localhost:8084/Voucher/Controller?btnAction=checkReg&user=\" + str,true);\n");
      out.write("                    xmlhttp.send();\n");
      out.write("                }\n");
      out.write("            } \n");
      out.write("        </script> -->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"page-header\" style=\"margin: 60px 0px 20px 65px;\">\n");
      out.write("                    <h1>Thêm Thông Tin Voucher</h1>\n");
      out.write("        </div> \n");
      out.write("        <div class=\"container\">\n");
      out.write("        <!-- Registration form - START -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <form action=\"Controller\" role=\"form\" >\n");
      out.write("                    <div class=\"well well-sm\" style=\"margin: 0px 555px 0px 450px;\"><strong><span class=\"glyphicon glyphicon-asterisk\"></span>Thông tin bắt buộc</strong></div>\n");
      out.write("                    <div class=\"col-lg-6\" style=\"padding-top: 30px;\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputMADM\">Mã Danh Mục</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <select id=\"elm_42\" class=\"form-control\" name=\"InputMADM\" style=\"border-radius: 4px;\" placeholder=\"Mã Danh Mục\" required>\n");
      out.write("                                    <option>DL</option>\n");
      out.write("                                    <option>AU</option>\n");
      out.write("                                    <option>TT</option>\n");
      out.write("                                </select>                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputTENVOUCHER\">Tên Voucher</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputTENVOUCHER\" id=\"InputTENVOUCHER\" placeholder=\"Tên Voucher\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputTHONGTIN\">Thông Tin Voucher</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <textarea name=\"InputTHONGTIN\" id=\"InputTHONGTIN\" name=\"InputTHONGTIN\"class=\"form-control\" rows=\"5\" placeholder=\"Thông Tin Voucher\" required></textarea>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputGIABAN\">Giá Bán</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputGIABAN\" id=\"InputGIABAN\" placeholder=\"Giá Bán\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputSLCON\">Số Lượng Còn</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputSLCON\" id=\"InputSLCON\" placeholder=\"Số Lượng Còn\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputTHOIHAN\">Thời Hạn Voucher</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"InputTHOIHAN\" name=\"InputTHOIHAN\" placeholder=\"Thời Hạn Voucher\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("             <div class=\"col-7\" style=\"padding-top: 29px;\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputSLBAN\">Số Lượng Đã Bán</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                 <input type=\"text\" class=\"form-control\" id=\"InputSLBAN\" name=\"InputSLBAN\" placeholder=\"Số Lượng Đã Bán\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>                       \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputDK\">Điều Kiện</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                 <textarea name=\"InputDK\" id=\"InputDK\" name=\"InputDK\" class=\"form-control\" rows=\"9\" placeholder=\"Điều Kiện\" required></textarea>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>                       \n");
      out.write("                            </div>\n");
      out.write("                        </div>  \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputDNB\">Điểm Nổi Bật</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                 <textarea name=\"InputDNB\" id=\"InputDK\" name=\"InputDNB\" name=\"InputDNB\" class=\"form-control\" rows=\"8.5\" placeholder=\"Điểm Nổi Bật\" required></textarea>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>                       \n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                 </div>\n");
      out.write("                </form>\n");
      out.write("                <div class='col-lg-5 col-md-push-1'>\n");
      out.write("                    <div class='col-md-12'>\n");
      out.write("                ");

                    String success = request.getParameter("success");
                    if (success !=null){
                        if (success.equals("true")){
                
      out.write("                           \n");
      out.write("                        <div class='alert alert-success'>\n");
      out.write("                            <strong><span class='glyphicon glyphicon-ok'></span>Bạn đã thêm thành công</strong>      \n");
      out.write("                        </div>   \n");
      out.write("                ");

                        }else{    
                 
      out.write("\n");
      out.write("                        <div class='alert alert-danger'>        \n");
      out.write("                            <strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>       \n");
      out.write("                        </div> \n");
      out.write("                ");

                        }
                    }
                
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Registration form - END -->\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
