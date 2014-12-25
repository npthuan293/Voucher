package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Voucher;
import voucherShop.Event;

public final class voucher_005fpages_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("   <title>Thông Tin Voucher</title>\r\n");
      out.write("    <!-- Bootstrap Core CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"Styles/voucher_pages.css\">\r\n");
      out.write("    <!-- Custom CSS -->\r\n");
      out.write("    <link href=\"Styles/shop-homepage.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"Styles/styles.css\">\r\n");
      out.write("    <style> \r\n");
      out.write("            body{\r\n");
      out.write("                padding:80px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("           <div class=\"col-md-9\" style=\"height: 500px;\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row carousel-holder\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col-md-12\" style=\"margin-bottom: -60px;\">\r\n");
      out.write("                        <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel1\">\r\n");
      out.write("                            <ol class=\"carousel-indicators\">\r\n");
      out.write("                                <li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("                                <li data-target=\"#carousel-example-generic\" data-slide-to=\"1\"></li>\r\n");
      out.write("                                <li data-target=\"#carousel-example-generic\" data-slide-to=\"2\"></li>\r\n");
      out.write("                            </ol>\r\n");
      out.write("                            <div class=\"carousel-inner\">\r\n");
      out.write("                                <div class=\"item active\">\r\n");
      out.write("                                    <img class=\"slide-image\" src=\"images/demo/c9cap1.jpg\" alt=\"\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"item\">\r\n");
      out.write("                                    <img class=\"slide-image\" src=\"images/demo/teammate3.jpg\" alt=\"\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"item\">\r\n");
      out.write("                                    <img class=\"slide-image\" src=\"images/demo/teammate2.jpg\" alt=\"\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <a class=\"left carousel-control\" href=\"#carousel-example-generic\" data-slide=\"prev\">\r\n");
      out.write("                                <span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <a class=\"right carousel-control\" href=\"#carousel-example-generic\" data-slide=\"next\">\r\n");
      out.write("                                <span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row\" style=\"width: 800px;float: right;\">\r\n");
      out.write("                    ");

                                    Voucher m = new Voucher();
                                    Object[][] result = m.LoadDetailVoucher();                         
                                    for (int i = 0; i < result.length; i++) {
                                
      out.write("\r\n");
      out.write("                    <div class=\"col-sm-4 col-lg-4 col-md-4\">\r\n");
      out.write("                        <div class=\"thumbnail\">\r\n");
      out.write("                            <img src=\"http://placehold.it/320x150\" alt=\"\">\r\n");
      out.write("                            <div class=\"caption\">\r\n");
      out.write("                                <h4><p>");
      out.print(result[i][2]);
      out.write("</p></h4><br>\r\n");
      out.write("                                <h4 class=\"pull-right\" style=\"margin-top: -20px;\">Giá bán: ");
      out.print(result[i][5]);
      out.write("</h4><br>\r\n");
      out.write("                                <p>Thông Tin: ");
      out.print(result[i][3]);
      out.write("</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"ratings\">\r\n");
      out.write("                                <p class=\"pull-right\">15 reviews</p>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-star\"></span>\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-star\"></span>\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-star\"></span>\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-star\"></span>\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-star\"></span>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                     ");
 
                                    }
                                    
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                 <div class=\"container\" style=\"margin-top: 600px; margin-bottom: -700px;\">\r\n");
      out.write("                <footer>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12\"><hr>\r\n");
      out.write("                            <p>Copyright &copy; Your Website 2014</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </footer>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.container -->\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-md-3\" style=\"padding-top: 30px;margin-left: 90px;\">\r\n");
      out.write("                <p class=\"lead\">Shop Name</p>\r\n");
      out.write("                <div class=\"list-group\">\r\n");
      out.write("                    <a href=\"#\" class=\"list-group-item\">Category 1</a>\r\n");
      out.write("                    <a href=\"#\" class=\"list-group-item\">Category 2</a>\r\n");
      out.write("                    <a href=\"#\" class=\"list-group-item\">Category 3</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> \r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery -->\r\n");
      out.write("    <script src=\"Scripts/jquery_voucherpages.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("    <script src=\"Scripts/voucher_pages.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
