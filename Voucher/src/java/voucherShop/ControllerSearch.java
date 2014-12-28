/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PhuThuan
 */
public class ControllerSearch extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String s[]=null;

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con =DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=test","sa","123");
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select * from TAIKHOAN");

            List li = new ArrayList();

            while(rs.next())
            {
                li.add(rs.getString(1));
            }

            String[] str = new String[li.size()];
            Iterator it = li.iterator();

            int i = 0;
            while(it.hasNext())
            {
                String p = (String)it.next();
                str[i] = p;
                i++;
            }

           //jQuery related start
            String query = (String)request.getParameter("q");

            int cnt=1;
            for(int j=0;j<str.length;j++)
              {
                  if(str[j].toUpperCase().startsWith(query.toUpperCase()))
                  {
                     out.print(str[j]+"\n");
                     if(cnt>=5)// 5=How many results have to show while we are typing(auto suggestions)
                     break;
                     cnt++;
                   }
              }
           //jQuery related end

       rs.close();
       st.close();
       con.close();

       }
       catch(Exception e){
       e.printStackTrace();
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
