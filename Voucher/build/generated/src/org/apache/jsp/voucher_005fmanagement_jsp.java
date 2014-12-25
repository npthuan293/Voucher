package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Event;

public final class voucher_005fmanagement_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <title>Voucher Management</title>\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"Styles/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"Styles/voucher_management.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"Styles/styles.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("      ");
 //checkAdmin
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
        
      out.write(" \n");
      out.write(" <!-- navbar -->\n");
      out.write("    <div class=\"navbar-wrapper-vouchermanagerment\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"navbar navbar-inverse navbar-static-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("              <a class=\"navbar-brand\" href=\"#\">SkyLand</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-collapse collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\">Trang chủ</a></li>\n");
      out.write("                        <li><a target=\"_bank\" href=\"info.jsp\">Giới thiệu</a></li>\n");
      out.write("                        <li><a href=\"#contact\">Liên hệ</a></li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Voucher<span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                <li><a href=\"voucher_pages.jsp\">Du Lịch</a></li>\n");
      out.write("                                <li><a href=\"#\">Thời Trang</a></li>\n");
      out.write("                                <li><a href=\"#\">Ẩm Thực</a></li>\n");
      out.write("                                <li class=\"divider\"></li>\n");
      out.write("                                <li class=\"dropdown-header\">Nav header</li>\n");
      out.write("                                <li><a href=\"#\">Separated link</a></li>\n");
      out.write("                                <li><a href=\"#\">One more separated link</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Promotions.jsp\">Thông tin khuyến mãi</a>\n");
      out.write("                        </li>                       \n");
      out.write("                    </ul>\n");
      out.write("                        <div class=\"col-sm-3 col-md-3\">\n");
      out.write("                            <form class=\"navbar-form\" role=\"search\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"q\">\n");
      out.write("                                    <div class=\"input-group-btn\">\n");
      out.write("                                        <button class=\"btn btn-default\" type=\"submit\"><i class=\"glyphicon glyphicon-search\"></i></button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\" id=\"navright-prompage\" style=\"margin-right: 10px;\">\n");
      out.write("                        ");

                            //String name = request.getParameter("name");
                           // if (name != null) {
                            //    out.print(name);
                            //}
                           // String username = (String) session.getAttribute("Username");
                            if (username != null) {
                                out.print("<li class='dropdown' >");
                                out.print("<a data-toggle='dropdown' class='dropdown-toggle' href=''>Xin chào, " + username + "<b class='caret'></b></a>");
                                out.print("<ul role='menu' class='dropdown-menu'>");
                                Event e = new Event();
                                String result = e.CheckAdmin(username);
                                if (result.equals("Admin")) {
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href='Member.jsp'>Quản lý thành viên</a></li>");
                                    out.print("<li><a href='Staff.jsp'>Quản lý nhân viên</a></li>");
                                    out.print("<li><a href=''>Quản lý nhà cung cấp</a></li>");
                                    out.print("<li><a href='voucher_management.jsp'>Quản lý Voucher</a></li>");
                                    out.print("<li><a href=''>Quản lý Thông Tin Khuyến Mãi</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");
                                }else if (result.equals("Nhân viên bán hàng")){
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href=''>Quản lý Voucher</a></li>");
                                    out.print("<li><a href=''>Quản lý Thông tin khuyến mãi</a></li>");
                                    out.print("<li><a href=''>Quản lý đơn hàng</a></li>");
                                    out.print("<li><a href=''>Quản lý quà tặng</a></li>");
                                    out.print("<li><a href=''>Thống kê</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");                                   
                                }else if (result.equals("Nhân viên kho hàng")){
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href=''>Thống kê</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");                                                                   
                                }
                                else{
                                    out.print("<li><a href='info_user.jsp'>Thông tin cá nhân</a></li>");
                                    out.print("<li><a href='Payment.jsp'>Đơn hàng</a></li>");
                                    out.print("<li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>");
                                    out.print("</ul>");
                                    out.print("</li>");
                                }
                            }else {
                                out.print("<li>");
                                out.print("<a href='login.jsp'>Đăng nhập</a>");
                                out.print("</li>");
                            }
                        
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("    <!-- navbar -->\n");
      out.write("    <!-- Page Content -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("        <!-- Page Heading -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <h1 class=\"page-header\">Page Heading\n");
      out.write("                    <small>Secondary Text</small>\n");
      out.write("                </h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <!-- Projects Row -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <!-- Projects Row -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <!-- Projects Row -->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 portfolio-item\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"http://placehold.it/750x450\" alt=\"\">\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <!-- Pagination -->\n");
      out.write("        <div class=\"row text-center\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <ul class=\"pagination\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">&laquo;</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"active\">\n");
      out.write("                        <a href=\"#\">1</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">2</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">3</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">4</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">5</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"#\">&raquo;</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("\n");
      out.write("        <hr>\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <p>Copyright &copy; Your Website 2014</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.row -->\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"Scripts/jquery_VM.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"Scripts/voucher_management.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
