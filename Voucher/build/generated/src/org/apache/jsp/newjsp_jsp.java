package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Member;
import voucherShop.Account;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script>\n");
      out.write("            function checkUsername(str){\n");
      out.write("                if (str.length == 0) {document.getElementById(\"txtCheck\").innerHTML=\"\";\n");
      out.write("                    return;\n");
      out.write("                }else{\n");
      out.write("                    var xmlhttp = new XMLHttpRequest();\n");
      out.write("                    xmlhttp.onreadystatechange = function(){\n");
      out.write("                        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){\n");
      out.write("                            document.getElementById(\"txtHint\").innerHTML = xmlhttp.responseText;;\n");
      out.write("                        }\n");
      out.write("                    }   \n");
      out.write("                    xmlhttp.open(\"GET\",\"http://localhost:8084/Voucher/getHint?user=\" + str,true);\n");
      out.write("                    xmlhttp.send();\n");
      out.write("                }\n");
      out.write("            }             \n");
      out.write("        </script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <body>\n");
      out.write("            <p><b>Tim kiếm cơ bản:</b></p>\n");
      out.write("            <form action=\"http://localhost:8084/Voucher/getHint\" method=\"get\">\n");
      out.write("                Nhập tên cần tìm: <input type=\"text\" name =\"fname\" onkeyup=\"checkUsername(this.value)\">\n");
      out.write("                <input type=\"submit\" value=\"checkReg\">\n");
      out.write("            </form>\n");
      out.write("            <p>Gợi ý tên cần tìm: <span id=\"txtHint\"></span></p> </body>\n");
      out.write("<!-- begin htmlcommentbox.com -->\n");
      out.write(" <div id=\"HCB_comment_box\">\n");
      out.write("     <a href=\"http://www.htmlcommentbox.com\">HTML Comment Box</a> is loading comments...\n");
      out.write(" </div>\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"//www.htmlcommentbox.com/static/skins/bootstrap/twitter-bootstrap.css?v=0\" />\n");
      out.write(" <script type=\"text/javascript\" id=\"hcb\"> \n");
      out.write("     /*<!--*/ if(!window.hcb_user){hcb_user={};} \n");
      out.write("     (function(){var s=document.createElement(\"script\"), l=(\"\"+window.location).replace(/'/g,\"%27\") || hcb_user.PAGE, h=\"//www.htmlcommentbox.com\";s.setAttribute(\"type\",\"text/javascript\");s.setAttribute(\"src\", h+\"/jread?page=\"+encodeURIComponent(l).replace(\"+\",\"%2B\")+\"&opts=16862&num=10\");if (typeof s!=\"undefined\") document.getElementsByTagName(\"head\")[0].appendChild(s);})(); /*-->*/ </script>\n");
      out.write("<!-- end htmlcommentbox.com -->        \n");
      out.write("        \n");
      out.write("        \n");
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
