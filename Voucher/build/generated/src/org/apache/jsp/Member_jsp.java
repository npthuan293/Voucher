package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Member;
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("    \r\n");
      out.write("        <script src=\"Scripts/jquery.tablesorter.js\"></script>\r\n");
      out.write("        <script src=\"Scripts/tables.js\"></script>   \r\n");
      out.write("        <style> \r\n");
      out.write("            body{\r\n");
      out.write("                padding:80px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("            .table>thead>tr>th{\r\n");
      out.write("             vertical-align: top;   \r\n");
      out.write("            }\r\n");
      out.write("        </style> \r\n");
      out.write("        <script>\r\n");
      out.write("            $(document).ready(function() {\r\n");
      out.write("                $('#selectall').click(function(event) {  //on click \r\n");
      out.write("                    if(this.checked) { // check select status\r\n");
      out.write("                        $('.checkbox1').each(function() { //loop through each checkbox\r\n");
      out.write("                            this.checked = true;  //select all checkboxes with class \"checkbox1\"               \r\n");
      out.write("                        });\r\n");
      out.write("                    }else{\r\n");
      out.write("                        $('.checkbox1').each(function() { //loop through each checkbox\r\n");
      out.write("                            this.checked = false; //deselect all checkboxes with class \"checkbox1\"                       \r\n");
      out.write("                        });         \r\n");
      out.write("                    }\r\n");
      out.write("                });   \r\n");
      out.write("            });          \r\n");
      out.write("        </script>        \r\n");
      out.write("        <title>Quản lý thành viên</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
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
        
      out.write("        \r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <form action=\"Controller\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12 \">\t\r\n");
      out.write("                            <h3>Danh sách thành viên</h3>\r\n");
      out.write("                       </div>\r\n");
      out.write("                    </div>                     \r\n");
      out.write("                    <div class=\"table-responsive\">\r\n");
      out.write("                        <table class=\"table table-bordered table-hover table-striped tablesorter\" id=\"usertable\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><b>Check</b><br><input type=\"checkbox\" id=\"selectall\" value=\"\"/></td>                                   \r\n");
      out.write("                                    <th>Tên đăng nhập <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Họ tên <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Ngày sinh <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Email <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Số điện thoại <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Giới tính <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Địa chỉ <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Mật khẩu <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Ngày đăng ký <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Thời gian đăng nhập lần cuối <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                    <th>Tình trạng <i class=\"fa fa-sort\"></i></th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");

                                    Member m = new Member();
                                    Account a = new Account();
                                    Object[][] result = m.LoadMemberAccount();                         
                                    for (int i = 0; i < result.length; i++) {
                                        Object[][] result2 = a.LoadAccountByUsername((String)result[i][1]);
                                
      out.write("\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td><input type='checkbox' name='Select' id='Select' class=\"checkbox1\" value=");
      out.print(result[i][1]);
      out.write(" ></td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][1]);
      out.write("</a></td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][2]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][6]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][5]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][4]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][9]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][3]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result2[0][1]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result[i][8]);
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print(result2[0][4]);
      out.write("</td>\r\n");
      out.write("                                ");

                                    if (result2[0][2].equals("On")){
                                
      out.write("\r\n");
      out.write("                                    <td>Còn hoạt động</td>\r\n");
      out.write("                                ");

                                    }else{
                                
      out.write("\r\n");
      out.write("                                    <td>Đã khóa</td>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12 \">\t\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"Lock\" >Khóa người dùng</button>\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"Unlock\" >Mở khóa</button>                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>                            \r\n");
      out.write("                </form>\r\n");
      out.write("            </div>        \r\n");
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
