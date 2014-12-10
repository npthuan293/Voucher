package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Account;
import voucherShop.Event;

public final class Member_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("    \n");
      out.write("        <script src=\"Scripts/jquery.tablesorter.js\"></script>\n");
      out.write("        <script src=\"Scripts/tables.js\"></script>   \n");
      out.write("        <style> \n");
      out.write("            body{\n");
      out.write("                padding:80px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>        \n");
      out.write("        <title>Quản lý thành viên</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String username = (String) session.getAttribute("Username");
            if (username != null) {
                Event e = new Event();
                String result = e.CheckAdmin(username);
                if (!result.equals("Admin")) {
                    response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }           
        
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <form action=\"Controller\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \">\t\n");
      out.write("                            <h3>Danh sách thành viên</h3>\n");
      out.write("                       </div>\n");
      out.write("                    </div>                     \n");
      out.write("                    <div class=\"table-responsive\">\n");
      out.write("                        <table class=\"table table-bordered table-hover table-striped tablesorter\" id=\"usertable\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Check <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Tên đăng nhập <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Họ tên <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Email <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Giới tính <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Địa chỉ <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Mật khẩu <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Tình trạng <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                    Account a = new Account();
                                    Object[][] result = a.LoadMemberAccount();  
                                    for (int i = 0; i < result.length; i++) {
                                        out.print("<tr>");
                                        out.print("<td><input type='checkbox' name='Select' id='Select' value='" + result[i][0] + "'></td>");
                                        out.print("<td><a href='Edituser.jsp?username=" + result[i][0] + "'>" + result[i][0] + "</a></td>");

                                        if (result[i][2] == null) {
                                            out.print("<td></td>");
                                        } else {
                                            out.print("<td>" + result[i][2] + "</td>");
                                        }
                                        out.print("<td>" + result[i][3] + "</td>");
                                        out.print("<td>" + result[i][4] + "</td>");
                                        out.print("<td>" + result[i][6] + "</td>");
                                        out.print("<td>" + result[i][1] + "</td>");
                                        if (result[i][8].equals("On")){
                                            out.print("<td>Đã khóa</td>");
                                        }else{
                                            out.print("<td>Còn hoạt động</td>");
                                        }
                                        out.print("</tr>");
                                    }
                                
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \">\t\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"Khóa\" >Khóa người dùng</button>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"Mở khóa\" >Mở khóa</button>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>                            \n");
      out.write("                </form>\n");
      out.write("            </div>        \n");
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
