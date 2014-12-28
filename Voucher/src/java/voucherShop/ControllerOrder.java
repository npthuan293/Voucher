/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PhuThuan
 */
public class ControllerOrder extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("btnAction");
            switch (action){
                case "Đặt hàng":{
                    String voucherName = request.getParameter("voucherName");
                    String userName = request.getParameter("InputUsername");
                    String Name = request.getParameter("InputName");
                    String sdt = request.getParameter("InputSDT");
                    String hinhthuc = request.getParameter("InputHT");
                    String taikhoanNH = request.getParameter("InputTKNH");
                    String sotaikhoan = request.getParameter("InputNumber");
                    String note = request.getParameter("InputNote");
                    String diachi = request.getParameter("InputAddress");
                    String soluong = request.getParameter("count");
                    String mavoucher = request.getParameter("mavoucher");
                    out.println(voucherName);
                    out.println(userName);
                    out.println(Name);
                    out.println(sdt);
                    out.println(hinhthuc);
                    out.println(taikhoanNH);
                    out.println(sotaikhoan);
                    out.println(note);
                    out.println(diachi);
                    out.println(soluong);
                    out.println(mavoucher);  
                    break;
                }
            }
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
