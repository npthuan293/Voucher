package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Voucher;
import voucherShop.Account;
import voucherShop.Staff;
import voucherShop.Event;

public final class voucher_005fManag_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            .table>thead>tr>th{\n");
      out.write("             vertical-align: top;   \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("               $('#tableVoucher').load('VoucherByDM.jsp').show();\n");
      out.write("               \n");
      out.write("               $('#ListDM').change(function(){\n");
      out.write("                  $.post('VoucherByDM.jsp',{danhmuc : form.ListDM.value},\n");
      out.write("                  function(result){\n");
      out.write("                      $('#tableVoucher').html(result).show();\n");
      out.write("                  })\n");
      out.write("               });\n");
      out.write("            }); \n");
      out.write("            $(document).ready(function() {\n");
      out.write("                $('#selectall').click(function(event) {  //on click \n");
      out.write("                    if(this.checked) { // check select status\n");
      out.write("                        $('.checkbox1').each(function() { //loop through each checkbox\n");
      out.write("                            this.checked = true;  //select all checkboxes with class \"checkbox1\"               \n");
      out.write("                        });\n");
      out.write("                    }else{\n");
      out.write("                        $('.checkbox1').each(function() { //loop through each checkbox\n");
      out.write("                            this.checked = false; //deselect all checkboxes with class \"checkbox1\"                       \n");
      out.write("                        });         \n");
      out.write("                    }\n");
      out.write("                });   \n");
      out.write("            });           \n");
      out.write("        </script>\n");
      out.write("        <title>Quản lý Voucher</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
           
      out.write("    \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <form name=\"form\" action=\"Controller\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \">\t\n");
      out.write("                             <div class=\"form-group\">\n");
      out.write("                            <label style=\"float: left;margin-top: 6px;margin-right: 8px;font-size: large;\">Chọn Danh Mục Voucher: </label><div class=\"input-group\">\n");
      out.write("                                <select id=\"ListDM\" class=\"form-control\" name =\"ListDM\" onChange=\"check(this.value);\" style=\"border-radius: 4px;\">\n");
      out.write("                                    <option value=\"Tat ca\">Tất cả</option>\n");
      out.write("                                    <option value=\"Du lich\">Du Lịch</option>\n");
      out.write("                                    <option value=\"Am thuc\">Ẩm Thực</option>\n");
      out.write("                                    <option value=\"Giai tri\">Giải Trí</option>\n");
      out.write("                                    <option value=\"Spa\">Spa</option>\n");
      out.write("                                </select> \n");
      out.write("                            </div>\n");
      out.write("                        </div> \n");
      out.write("                            <label for=\"ListDM\">Danh sách voucher</label>\n");
      out.write("                       </div>\n");
      out.write("                    </div>                    \n");
      out.write("                    <div class=\"table-responsive\" id=\"tableVoucher\">        \n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \">\t\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"AddVoucher\">Add</button>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" name=\"btnAction\" value=\"DeleteVoucherByMAVOUCHER\">Delete</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>        \n");
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
