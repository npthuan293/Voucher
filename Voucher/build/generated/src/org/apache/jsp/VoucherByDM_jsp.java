package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import voucherShop.Voucher;

public final class VoucherByDM_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String danhmuc = request.getParameter("danhmuc");
    Voucher v = new Voucher();
    String Ma_DM = null;
    Object[][] result = null;
    if (danhmuc != null){
        if (danhmuc.equals("Du lich")){
        Ma_DM = "DL";
    }else if (danhmuc.equals("Am thuc")){
        Ma_DM = "AU";
    }else{
        Ma_DM = "TT";
    }
        result = v.LoadVoucherByDM(Ma_DM);

    }else{
            result = v.LoadDetailVoucher();
    }
    

      out.write("\n");
      out.write("<table class=\"table table-bordered table-hover table-striped tablesorter\" id=\"usertable\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><b>Check</b><br><input type=\"checkbox\" id=\"selectall\"/></td> \n");
      out.write("                                    <th>Tên Voucher <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Mã Voucher <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Mã Danh mục <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Thời hạn Voucher <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Giá bán <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    <th>Số Lượng còn <i class=\"fa fa-sort\"></i></th>\n");
      out.write("                                    \n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");

                                    for (int i = 0; i < result.length; i++) {
                               
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><input type='checkbox' name='Select' id='Select' class=\"checkbox1\" value=");
      out.print(result[i][0]);
      out.write(" ></td>\n");
      out.write("                                            <td>");
      out.print(result[i][2]);
      out.write("</td>\n");
      out.write("                                            <td><a href='info_staff.jsp?Username=");
      out.print(result[i][1]);
      out.write("' >");
      out.print(result[i][0]);
      out.write("</a></td>\n");
      out.write("                                            <td>");
      out.print(result[i][1]);
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(result[i][6]);
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(result[i][5]);
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(result[i][4]);
      out.write("</td>\n");
      out.write("                                           \n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                    }                                    
                                
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("\n");
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
