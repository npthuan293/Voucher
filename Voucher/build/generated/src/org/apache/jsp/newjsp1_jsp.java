package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;

public final class newjsp1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" >\n");
      out.write("<title>Shoutbox</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"sb_style.css\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body onload=\"sbInit()\">\n");
      out.write("<p>&nbsp;</p>\n");
      out.write("<div id=\"shoutbox\" style=\"width:300px\">\n");
      out.write("\t<div id=\"sb_chatLog\">\n");
      out.write("\t</div>\n");
      out.write("\t<table style='border:1px solid green;'>\n");
      out.write("\t\t<form method=\"GET\">\n");
      out.write("\t\t<tr><td><b>Nickname:</b></td><td><input type=\"text\" name=\"sb_nick\"/></td></tr>\t\n");
      out.write("\t\t<tr><td><b>Message:</b></td><td><input type=\"text\" name=\"sb_msg\" id=\"msg\" onkeypress=\"if(event.keyCode==13){sendMessage();return false;}\" />\n");
      out.write("\t\t\t<script language=\"JavaScript\" type=\"text/javascript\">\n");
      out.write("\t\t\t\tif(document.getElementById) \n");
      out.write("                                    document.getElementById('msg').focus();\n");
      out.write("\t\t\t</script>\n");
      out.write("\t\t</td></tr>\t\n");
      out.write("\t\t<tr><td align=\"right\" colspan=\"2\"><input type=\"submit\" value=\"Say it!\" id=\"\" style=\"font-weight: bold; background: #ffffff;\" /></td></tr>\n");
      out.write("\t\t</form>\n");
      out.write("\t\t<tr><td align=\"right\" colspan=\"2\" style=\"font-size:10px; text-decoration:none;\">\n");
      out.write("\n");
      out.write("                <a style=\"font-size:10px; text-decoration:none;\" href=\"http://hscripts.com\">H</a> </td></tr>\n");
      out.write("\t</table>\n");
      out.write("\t<div id=\"sb_warning\"></div>\n");
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
