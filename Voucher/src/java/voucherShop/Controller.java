/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;

/**
 *
 * @author PhuThuan
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

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
            throws ServletException, IOException, ParseException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("btnAction");
            switch (action) 
            {
                case "Login": {
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    Event e = new Event();
                    boolean result = e.checkLogin(username, password);
                    
                    if (result) {
                        HttpSession session = request.getSession(true);
                        session.setAttribute("Username", username);
                        response.sendRedirect("index.jsp");        
                          
                    } else {
                        response.sendRedirect("login.jsp?error=true"); 
                    }
                    break;          
                }
                case "Đăng ký": {
                    Connect cls = new Connect();
                    Event e = new Event();
//                    Account a = new Account();
                    Date today = new Date(System.currentTimeMillis());
                    SimpleDateFormat timeFormat = new SimpleDateFormat("yyyy/MM/dd");
                    String ngaydk = timeFormat.format(today);                    
                    String hoten = request.getParameter("InputName");
                    String username = request.getParameter("InputUsername");
                    String pass = request.getParameter("InputPass");
                    String email = request.getParameter("InputEmail");
                    String gioitinh = request.getParameter("InputSex");
                    String ngaysinh = request.getParameter("date");
                    String diachi = request.getParameter("InputAddress");
                    String CMND = request.getParameter("InputCMND");
                    String sdt = request.getParameter("InputSDT");   
                    boolean result = e.insertMember(username, pass, hoten, diachi, sdt, email, ngaysinh, CMND, ngaydk, gioitinh);
                    if (result) {
                            response.sendRedirect("register.jsp?success=true");   
                    } else {
                        response.sendRedirect("register.jsp?success=false");
                    }
                    break;     
                }
                case "Logout" : {
                    request.getSession().invalidate();
                    response.sendRedirect("index.jsp");
                    break;                    
                }
                case "Cập nhật":{
                    Event e = new Event();                    
                    String hoten = request.getParameter("InputName");
                    String username = request.getParameter("InputUsername");
                    String pass = request.getParameter("InputPass");
                    String email = request.getParameter("InputEmail");
                    String gioitinh = request.getParameter("InputSex");
                    String ngaysinh = request.getParameter("date");
                    String diachi = request.getParameter("InputAddress");
                    String CMND = request.getParameter("InputCMND");
                    String sdt = request.getParameter("InputSDT");
                    boolean result = e.updateMember(hoten, username, pass, email, gioitinh, ngaysinh, diachi, CMND, sdt);
                    if (result) {
                        response.sendRedirect("info_user.jsp?success=true"); 
                    } else {
                        response.sendRedirect("info_user.jsp?success=false"); 
                    }
                    break;
                }
                case "Lock":{
                    Account a = new Account();
                    String[] username = new String[]{};
                    if (request.getParameterValues("Select") != null){
                        username = request.getParameterValues("Select");
                    }
                    if (username.length > 0){
                        for (int i = 0;i < username.length;i++)
                        {
                            a.UpdateKey(username[i],true);
                        }                 
                    }
                    response.sendRedirect("Member.jsp");
                    break;
                }
                case "Unlock":{
                    Account a = new Account();
                    String[] username = new String[]{};
                    if (request.getParameterValues("Select") != null){
                        username = request.getParameterValues("Select");
                    }
                    if (username.length > 0){
                        for (int i = 0;i < username.length;i++)
                        {
                            a.UpdateKey(username[i],false);
                        }                 
                    }
                    response.sendRedirect("Member.jsp");
                    break;
                }
                case "EditStaff": {
                    String username = request.getParameter("Username");
                    Event e =new Event();
                    break;
                }
                case "DeleteStaff": {
                    Account a = new Account();
                    Staff s = new Staff();
                    String[] username = request.getParameterValues("Select");
                    if (username.length > 0){
                        for (int i = 0;i < username.length;i++)
                        {
                            s.DeleteStaff(username[i]);
                            a.DeleteAccount(username[i]);
                        }
                    }
                    response.sendRedirect("Staff.jsp");
                    break;
                }
                case "img":{
                    String a = request.getParameter("exampleInputFile");
                    out.println(a);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
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

