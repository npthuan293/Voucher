package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Order_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "head.jsp", out, false);
      out.write(" \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Đặt hàng</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-xs-12\">\n");
      out.write("                    <div class=\"text-center\">\n");
      out.write("                        <i class=\"fa fa-search-plus pull-left icon\"></i>\n");
      out.write("                        <h2>Invoice for purchase #33221</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <hr>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xs-12 col-md-3 col-lg-3 pull-left\">\n");
      out.write("                            <div class=\"panel panel-default height\">\n");
      out.write("                                <div class=\"panel-heading\">Billing Details</div>\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <strong>David Peere:</strong><br>\n");
      out.write("                                    1111 Army Navy Drive<br>\n");
      out.write("                                    Arlington<br>\n");
      out.write("                                    VA<br>\n");
      out.write("                                    <strong>22 203</strong><br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xs-12 col-md-3 col-lg-3\">\n");
      out.write("                            <div class=\"panel panel-default height\">\n");
      out.write("                                <div class=\"panel-heading\">Payment Information</div>\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <strong>Card Name:</strong> Visa<br>\n");
      out.write("                                    <strong>Card Number:</strong> ***** 332<br>\n");
      out.write("                                    <strong>Exp Date:</strong> 09/2020<br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xs-12 col-md-3 col-lg-3\">\n");
      out.write("                            <div class=\"panel panel-default height\">\n");
      out.write("                                <div class=\"panel-heading\">Order Preferences</div>\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <strong>Gift:</strong> No<br>\n");
      out.write("                                    <strong>Express Delivery:</strong> Yes<br>\n");
      out.write("                                    <strong>Insurance:</strong> No<br>\n");
      out.write("                                    <strong>Coupon:</strong> No<br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xs-12 col-md-3 col-lg-3 pull-right\">\n");
      out.write("                            <div class=\"panel panel-default height\">\n");
      out.write("                                <div class=\"panel-heading\">Shipping Address</div>\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <strong>David Peere:</strong><br>\n");
      out.write("                                    1111 Army Navy Drive<br>\n");
      out.write("                                    Arlington<br>\n");
      out.write("                                    VA<br>\n");
      out.write("                                    <strong>22 203</strong><br>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <h3 class=\"text-center\"><strong>Order summary</strong></h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("                                <table class=\"table table-condensed\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><strong>Item Name</strong></td>\n");
      out.write("                                            <td class=\"text-center\"><strong>Item Price</strong></td>\n");
      out.write("                                            <td class=\"text-center\"><strong>Item Quantity</strong></td>\n");
      out.write("                                            <td class=\"text-right\"><strong>Total</strong></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Samsung Galaxy S5</td>\n");
      out.write("                                            <td class=\"text-center\">$900</td>\n");
      out.write("                                            <td class=\"text-center\">1</td>\n");
      out.write("                                            <td class=\"text-right\">$900</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Samsung Galaxy S5 Extra Battery</td>\n");
      out.write("                                            <td class=\"text-center\">$30.00</td>\n");
      out.write("                                            <td class=\"text-center\">1</td>\n");
      out.write("                                            <td class=\"text-right\">$30.00</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Screen protector</td>\n");
      out.write("                                            <td class=\"text-center\">$7</td>\n");
      out.write("                                            <td class=\"text-center\">4</td>\n");
      out.write("                                            <td class=\"text-right\">$28</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"highrow\"></td>\n");
      out.write("                                            <td class=\"highrow\"></td>\n");
      out.write("                                            <td class=\"highrow text-center\"><strong>Subtotal</strong></td>\n");
      out.write("                                            <td class=\"highrow text-right\">$958.00</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"emptyrow\"></td>\n");
      out.write("                                            <td class=\"emptyrow\"></td>\n");
      out.write("                                            <td class=\"emptyrow text-center\"><strong>Shipping</strong></td>\n");
      out.write("                                            <td class=\"emptyrow text-right\">$20</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td class=\"emptyrow\"><i class=\"fa fa-barcode iconbig\"></i></td>\n");
      out.write("                                            <td class=\"emptyrow\"></td>\n");
      out.write("                                            <td class=\"emptyrow text-center\"><strong>Total</strong></td>\n");
      out.write("                                            <td class=\"emptyrow text-right\">$978.00</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>        \n");
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
