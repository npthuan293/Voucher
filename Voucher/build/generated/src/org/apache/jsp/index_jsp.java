package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Account;
import voucherShop.Connect;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write("    \r\n");
      out.write("        <title>Home Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--Navbar-->\r\n");
      out.write("        <div class=\"top\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Carousel\r\n");
      out.write("        ================================================== -->\r\n");
      out.write("        <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("        <!-- Indicators -->\r\n");
      out.write("            <ol class=\"carousel-indicators\">\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\r\n");
      out.write("                <li data-target=\"#myCarousel\" data-slide-to=\"4\"></li>\r\n");
      out.write("            </ol>\r\n");
      out.write("            <div class=\"carousel-inner\">\r\n");
      out.write("                <div class=\"item active\">\r\n");
      out.write("                    <img src=\"images/cover1.jpg\" alt=\"First slide\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"images/cover2.jpg\" alt=\"Second slide\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                           \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"images/cover3.jpg\" alt=\"Third slide\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                     \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"images/cover4.jpg\" alt=\"Second slide\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                           \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"item\">\r\n");
      out.write("                    <img src=\"images/cover5a.jpg\" alt=\"Second slide\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"carousel-caption\">\r\n");
      out.write("                           \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\"><span class=\"glyphicon glyphicon-chevron-left\"></span></a>\r\n");
      out.write("            <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\"><span class=\"glyphicon glyphicon-chevron-right\"></span></a>\r\n");
      out.write("        </div><!-- /.carousel -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Marketing messaging and featurettes\r\n");
      out.write("        ================================================== -->\r\n");
      out.write("        <!-- Wrap the rest of the page in another container to center all the content. -->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container marketing\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Three columns of text below the carousel -->\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-4\">\r\n");
      out.write("                    <img class=\"img-circle\" src=\"images/tienloi.jpg\" alt=\"Generic placeholder image\" style=\"width: 140px; height: 140px;\">\r\n");
      out.write("                    <h2 style=\"color: chartreuse;font-family: monospace;font-weight: bold;font-size: -webkit-xxx-large;\">Tiện Lợi</h2>\r\n");
      out.write("                </div><!-- /.col-lg-4 -->\r\n");
      out.write("                <div class=\"col-lg-4\">\r\n");
      out.write("                    <img class=\"img-circle\" src=\"images/nhanhchong.jpg\" alt=\"Generic placeholder image\" style=\"width: 140px; height: 140px;\">\r\n");
      out.write("                    <h2 style=\"color: red;font-family: monospace;font-weight: bold;font-size: -webkit-xxx-large;\">Nhanh Chóng</h2>\r\n");
      out.write("                </div><!-- /.col-lg-4 -->\r\n");
      out.write("                <div class=\"col-lg-4\">\r\n");
      out.write("                    <img class=\"img-circle\" src=\"images/uytin.jpg\" alt=\"Generic placeholder image\" style=\"width: 140px; height: 140px;\">\r\n");
      out.write("                    <h2 style=\"color: blueviolet;font-family: monospace;font-weight: bold;font-size: -webkit-xxx-large;\">Uy Tín</h2>\r\n");
      out.write("                </div><!-- /.col-lg-4 -->\r\n");
      out.write("            </div><!-- /.row -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- START THE FEATURETTES -->\r\n");
      out.write("            <hr class=\"featurette-divider\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row featurette\">\r\n");
      out.write("                <div class=\"col-md-7\">\r\n");
      out.write("                    <p class=\"lead\">Là website có nhiều loại Voucher, Thông Tin Khuyến Mãi bao gồm các danh mục: Du Lịch, Ẩm Thực, Giải Trí, Spa. Số lượng Voucher, Thông Tin Khuyến Mãi ở mỗi danh mục rất nhiều. </p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <hr class=\"featurette-divider\">\r\n");
      out.write("\r\n");
      out.write("        <!-- /END THE FEATURETTES -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- FOOTER -->\r\n");
      out.write("            <footer>\r\n");
      out.write("                <p class=\"pull-right\"><a href=\"#\">Back to top</a></p>\r\n");
      out.write("                <p>&copy; 2014 Company, Inc. &middot; <a href=\"#\">Privacy</a> &middot; <a href=\"#\">Terms</a></p>\r\n");
      out.write("            </footer>\r\n");
      out.write("\r\n");
      out.write("        </div><!-- /.container -->        \r\n");
      out.write("            <!--JavaScript-->\r\n");
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
