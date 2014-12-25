package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Voucher_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("<title>Bicycleshop Bootstarp Website Template | Home :: w3layouts</title>\n");
      out.write("<link href=\"Styles/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("<script src=\"Scripts/jquery_Voucher.js\"></script>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<link href=\"Styles/style_VoucherPage.css\" rel='stylesheet' type='text/css' /> \n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- Google Fonts -->\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- Header Starts Here -->\n");
      out.write("<!-- navbar -->\n");
      out.write("     \n");
      out.write("    <!-- navbar -->\n");
      out.write("<div class=\"header\">\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<!-- Banner Slide Starts Here -->\n");
      out.write("\t\t\t<div class=\"slider\">\n");
      out.write("\t\t\t<!-- Slideshow 3 -->\n");
      out.write("\t\t\t<script src=\"Scripts/responsiveslides_Voucher.js\"></script>\n");
      out.write("\t\t\t<script>\n");
      out.write("\t\t\t    // You can also use \"$(window).load(function() {\"\n");
      out.write("\t\t\t    $(function () {\n");
      out.write("\t\t\t      // Slideshow 3\n");
      out.write("\t\t\t      $(\"#slider3\").responsiveSlides({\n");
      out.write("\t\t\t        manualControls: '#slider3-pager',\n");
      out.write("\t\t\t      });\n");
      out.write("\t\t\t    });\n");
      out.write("\t\t\t  </script>\n");
      out.write("\t\t    <ul class=\"rslides\" id=\"slider3\">\n");
      out.write("\t\t    <li>\n");
      out.write("\t\t    \t<div class=\"banner\">\n");
      out.write("\t\t\t\t\t<h1>What a beautiful bike</h1>\n");
      out.write("\t\t\t\t\t<h2>timeless, atmospheric<br>& uncredible bikes!</h2>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t   \t</li>\n");
      out.write("\t\t   \t<li>\n");
      out.write("\t\t    \t<div class=\"banner banner2\">\n");
      out.write("\t\t\t\t\t<h1>What a beautiful bike</h1>\n");
      out.write("\t\t\t\t\t<h2>timeless, atmospheric<br>& uncredible bikes!</h2>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t   \t</li>\n");
      out.write("\t\t   \t<li>\n");
      out.write("\t\t    \t<div class=\"banner banner1\">\n");
      out.write("\t\t\t\t\t<h1>What a beautiful bike</h1>\n");
      out.write("\t\t\t\t\t<h2>timeless, atmospheric<br>& uncredible bikes!</h2>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t   \t</li>\n");
      out.write("\t\t   \t</ul>\n");
      out.write("\t\t   \t<ul id=\"slider3-pager\">\n");
      out.write("\t\t      <li><a href=\"#\"><img src=\"images/3.jpg\" alt=\"\"></a></li>\n");
      out.write("\t\t      <li><a href=\"#\"><img src=\"images/1.jpg\" alt=\"\"></a></li>\n");
      out.write("\t\t      <li><a href=\"#\"><img src=\"images/4.jpg\" alt=\"\"></a></li>\n");
      out.write("\t\t    </ul>\n");
      out.write("\t\t    <div class=\"clearfix\"> </div>\n");
      out.write("\t\t    </div>\n");
      out.write("\t\t<!-- Banner Slide Ends Here -->\n");
      out.write("\t\t<!-- Best Seller Starts Here -->\n");
      out.write("\t\t<div class=\"best-seller\">\n");
      out.write("\t\t\t<div class=\"best-seller-row\">\n");
      out.write("\t\t\t\t<div class=\"seller-column\">\n");
      out.write("\t\t\t\t\t<div class=\"sale-box\">\n");
      out.write("\t\t\t\t\t\t<span class=\"on_sale title_shop\">bestseller</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<img src=\"images/biscyle1.jpg\" alt=\"\"  class=\"seller-img\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"seller-column1\">\n");
      out.write("\t\t\t\t\t<h3>Sale</h3>\n");
      out.write("\t\t\t\t\t<span class=\"sale-nip\"></span>\n");
      out.write("\t\t\t\t\t<h4>Bicycle RetroSyperb Vii #1</h4>\n");
      out.write("\t\t\t\t\t<small>by Rodriguez Else</small>\n");
      out.write("\t\t\t\t\t<p>299.99$</p>\n");
      out.write("\t\t\t\t\t<div class=\"price\">\n");
      out.write("\t\t\t\t\t\t<a href=\"single.html\">Add to Shopping bag</a>\n");
      out.write("\t\t\t\t\t\t<span class=\"rating\">Rating: 5.0 <i class=\"ratings\"></i></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<p class=\"customer\">Ask the Customer a Question</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"biseller-info\">\n");
      out.write("\t\t\t<ul id=\"flexiselDemo3\">\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-column\">\n");
      out.write("\t\t\t\t\t<img src=\"images/sm1.jpg\" alt=\"\" class=\"veiw-img\">\n");
      out.write("\t\t\t\t\t\t<div class=\"veiw-img-mark\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"single.html\">Add to Cart</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name\">\n");
      out.write("\t\t\t\t\t\t<h4>Sport Bicycle 988</h4>\n");
      out.write("\t\t\t\t\t\t<small>by Enrique Salmo</small>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name1\">\n");
      out.write("\t\t\t\t\t\t<p>139.99$</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"price-s\">\n");
      out.write("\t\t\t\t\t\t<a href=\"single.html\">Add to Shopping bag</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-column\">\n");
      out.write("\t\t\t\t\t<img src=\"images/sm3.jpg\" alt=\"\" class=\"veiw-img\">\n");
      out.write("\t\t\t\t\t\t<div class=\"veiw-img-mark\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"single.html\">Add to Cart</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name\">\n");
      out.write("\t\t\t\t\t\t<h4>Classic Bicycle </h4>\n");
      out.write("\t\t\t\t\t\t<small>by Ankino Frique</small>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name1\">\n");
      out.write("\t\t\t\t\t\t<p>1 219.99$</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"price-s\">\n");
      out.write("\t\t\t\t\t\t<a href=\"single.html\">Add to Shopping bag</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-column\">\n");
      out.write("\t\t\t\t\t<img src=\"images/sm4.jpg\" alt=\"\" class=\"veiw-img\">\n");
      out.write("\t\t\t\t\t\t<div class=\"veiw-img-mark\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"single.html\">Add to Cart</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name\">\n");
      out.write("\t\t\t\t\t\t<h4>Retro Bicycle #2</h4>\n");
      out.write("\t\t\t\t\t\t<small>by Enrique Salmo</small>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name1\">\n");
      out.write("\t\t\t\t\t\t<p>899.99$</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"price-s\">\n");
      out.write("\t\t\t\t\t\t<a href=\"single.html\">Add to Shopping bag</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-column\">\n");
      out.write("\t\t\t\t\t<img src=\"images/biscyle1.jpg\" alt=\"\" class=\"veiw-img\">\n");
      out.write("\t\t\t\t\t\t<div class=\"veiw-img-mark\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"single.html\">Add to Cart</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name\">\n");
      out.write("\t\t\t\t\t\t<h4>Classic Bicycle </h4>\n");
      out.write("\t\t\t\t\t\t<small>by Marco Spielmann</small>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"biseller-name1\">\n");
      out.write("\t\t\t\t\t\t<p>1 219.99$</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"price-s\">\n");
      out.write("\t\t\t\t\t\t<a href=\"single.html\">Add to Shopping bag</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t     \t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t\t $(window).load(function() {\n");
      out.write("\t\t\t\t\t$(\"#flexiselDemo3\").flexisel({\n");
      out.write("\t\t\t\t\t\tvisibleItems: 3,\n");
      out.write("\t\t\t\t\t\tanimationSpeed: 1000,\n");
      out.write("\t\t\t\t\t\tautoPlay: true,\n");
      out.write("\t\t\t\t\t\tautoPlaySpeed: 3000,    \t\t\n");
      out.write("\t\t\t\t\t\tpauseOnHover: true,\n");
      out.write("\t\t\t\t\t\tenableResponsiveBreakpoints: true,\n");
      out.write("\t\t\t\t    \tresponsiveBreakpoints: { \n");
      out.write("\t\t\t\t    \t\tportrait: { \n");
      out.write("\t\t\t\t    \t\t\tchangePoint:480,\n");
      out.write("\t\t\t\t    \t\t\tvisibleItems: 1\n");
      out.write("\t\t\t\t    \t\t}, \n");
      out.write("\t\t\t\t    \t\tlandscape: { \n");
      out.write("\t\t\t\t    \t\t\tchangePoint:640,\n");
      out.write("\t\t\t\t    \t\t\tvisibleItems: 2\n");
      out.write("\t\t\t\t    \t\t},\n");
      out.write("\t\t\t\t    \t\ttablet: { \n");
      out.write("\t\t\t\t    \t\t\tchangePoint:768,\n");
      out.write("\t\t\t\t    \t\t\tvisibleItems: 3\n");
      out.write("\t\t\t\t    \t\t}\n");
      out.write("\t\t\t\t    \t}\n");
      out.write("\t\t\t\t    });\n");
      out.write("\t\t\t\t    \n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t   </script>\n");
      out.write("\t\t\t   <script type=\"text/javascript\" src=\"Scripts/jquery.flexisel_voucher.js\"></script>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
