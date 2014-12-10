package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("\n");
      out.write("        <style> \n");
      out.write("            body{\n");
      out.write("                padding:40px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script src=\"Scripts/bootstrap-datepicker.js\">\n");
      out.write("        </script >\n");
      out.write("           <script>\n");
      out.write("              $('#date').datepicker();\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("        <div class=\"page-header\">\n");
      out.write("            <h1>Đăng ký thành viên</h1>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Registration form - START -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <form action=\"Controller\" role=\"form\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"well well-sm\"><strong><span class=\"glyphicon glyphicon-asterisk\"></span>Thông tin bắt buộc</strong></div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputUsername\">Tên đăng nhập</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputUsername\" id=\"InputUsername\" placeholder=\"Tên đăng nhập\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputPass\">Mật khẩu</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"InputPass\" id=\"InputPass\" placeholder=\"Mật khẩu\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputName\">Họ tên</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputName\" id=\"InputName\" placeholder=\"Họ tên\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputCMND\">CMND</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputCMND\" id=\"InputCMND\" placeholder=\"Số CMND\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputSDT\">Số điện thoại</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"InputSDT\" id=\"InputSDT\" placeholder=\"Số điện thoại\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>                        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputEmail\">Email</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"email\" class=\"form-control\" id=\"InputEmailFirst\" name=\"InputEmail\" placeholder=\"Email\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputSex\">Giới tính</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <select id=\"elm_42\" class=\"form-control\" name=\"InputSex\" style=\"border-radius: 4px;\">\n");
      out.write("\n");
      out.write("                                    <option >Nam</option>\n");
      out.write("                                    <option >Nữ</option>\n");
      out.write("                                </select>                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>    \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputDate\">Ngày sinh</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"date\" name=\"date\" value=\"\" id=\"date\" class=\"form-control\" required/>\n");
      out.write("                                <span class=\"input-group-addon\" style=\"width: 0;\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>                  \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"InputAddress\">Địa chỉ</label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <textarea name=\"InputAddress\" id=\"InputAddress\" class=\"form-control\" rows=\"5\" required></textarea>\n");
      out.write("                                <span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-asterisk\"></span></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"submit\" name=\"btnAction\" id=\"submit\" value=\"Đăng ký\" class=\"btn btn-info pull-right\">\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <div class='col-lg-5 col-md-push-1'>\n");
      out.write("                    <div class='col-md-12'>\n");
      out.write("                ");

                    String success = request.getParameter("success");
                    if (success !=null){
                    if (success.equals("true"))
                    {
                        //out.println("");
                        //out.println("");
                        out.println("<div class='alert alert-success'>");
                        out.println("<strong><span class='glyphicon glyphicon-ok'></span>Bạn đã đăng kí thành công</strong>");        
                        out.println("</div>");                   
                        //out.println("</div>"); 
                        //out.println("</div>"); 
                    }else{
                        //out.println("<div class='col-lg-5 col-md-push-1'>");
                        //out.println("<div class='col-md-12'>");                
                        out.println("<div class='alert alert-danger'>");         
                        out.println("<strong><span class='glyphicon glyphicon-remove'></span><strong>Lỗi!Bạn hãy kiểm tra lại thông tin.</strong>");          
                        out.println("</div>"); 
                        //out.println("</div>"); 
                        //out.println("</div>");                 
                    }
                    }
                
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Registration form - END -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
