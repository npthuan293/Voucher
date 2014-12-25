package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Event;

public final class navbar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div class=\"navbar-wrapper\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"navbar navbar-inverse navbar-static-top\" role=\"navigation\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">SkyLand</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"navbar-collapse collapse\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav\">\r\n");
      out.write("                        <li><a href=\"index.jsp\">Trang chủ</a></li>\r\n");
      out.write("                        <li><a target=\"_bank\" href=\"info.jsp\">Giới thiệu</a></li>\r\n");
      out.write("                        <li><a href=\"#contact\">Liên hệ</a></li>\r\n");
      out.write("                        <li class=\"dropdown\">\r\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Voucher<span class=\"caret\"></span></a>\r\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("                                <li><a href=\"voucher_pages.jsp\">Du Lịch</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Thời Trang</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Ẩm Thực</a></li>\r\n");
      out.write("                                <li class=\"divider\"></li>\r\n");
      out.write("                                <li class=\"dropdown-header\">Nav header</li>\r\n");
      out.write("                                <li><a href=\"#\">Separated link</a></li>\r\n");
      out.write("                                <li><a href=\"#\">One more separated link</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li>\r\n");
      out.write("                            <a href=\"Promotions.jsp\">Thông Tin Khuyến Mãi</a>\r\n");
      out.write("                        </li>                        \r\n");
      out.write("                    </ul>\r\n");
      out.write("                        <div class=\"col-sm-3 col-md-3\">\r\n");
      out.write("                            <form class=\"navbar-form\" role=\"search\">\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Search\" name=\"q\">\r\n");
      out.write("                                    <div class=\"input-group-btn\">\r\n");
      out.write("                                        <button class=\"btn btn-default\" type=\"submit\"><i class=\"glyphicon glyphicon-search\"></i></button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                        ");

                            String username = (String) session.getAttribute("Username");
                            if (username != null) {
                        
      out.write("\r\n");
      out.write("                            <li class='dropdown'>\r\n");
      out.write("                                <a data-toggle='dropdown' class='dropdown-toggle' href=''>Xin chào, ");
      out.print(username);
      out.write("<b class='caret'></b></a>\r\n");
      out.write("                                <ul role='menu' class='dropdown-menu'>\r\n");
      out.write("                            ");
        
                                    Event e = new Event();
                                    String result = e.CheckAdmin(username);
                                    if (result.equals("Admin")) {
                             
      out.write("\r\n");
      out.write("                                    <li><a href='info_staff.jsp?Username=");
      out.print(username);
      out.write("'>Thông tin cá nhân</a></li>\r\n");
      out.write("                                    <li><a href='Member.jsp'>Quản lý thành viên</a></li>\r\n");
      out.write("                                    <li><a href='Staff.jsp'>Quản lý nhân viên</a></li>\r\n");
      out.write("                                    <li><a href='NCC.jsp'>Quản lý nhà cung cấp</a></li>\r\n");
      out.write("                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>\r\n");
      out.write("                            ");

                                    }else if (result.equals("Nhân viên bán hàng")){
                            
      out.write("\r\n");
      out.write("                                    <li><a href='info_staff.jsp?Username=");
      out.print(username);
      out.write("'>Thông tin cá nhân</a></li>\r\n");
      out.write("                                    <li><a href='voucher_management.jsp'>Quản lý Voucher</a></li>\r\n");
      out.write("                                    <li><a href=''>Quản lý Thông tin khuyến mãi</a></li>\r\n");
      out.write("                                    <li><a href=''>Quản lý đơn hàng</a></li>\r\n");
      out.write("                                    <li><a href=''>Quản lý quà tặng</a></li>\r\n");
      out.write("                                    <li><a href=''>Thống kê</a></li>\r\n");
      out.write("                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>                                   \r\n");
      out.write("                            ");
        
                                 }
                                    else{
                            
      out.write("\r\n");
      out.write("                                    <li><a href='info_user.jsp'>Thông tin cá nhân</a></li>\r\n");
      out.write("                                    <li><a href='ListOrder.jsp'>Đơn hàng</a></li>\r\n");
      out.write("                                    <li><a href='Controller?btnAction=Logout'>Đăng xuất</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        ");

                                }
                            }else {
                        
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href='login.jsp'>Đăng nhập</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("           </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
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
