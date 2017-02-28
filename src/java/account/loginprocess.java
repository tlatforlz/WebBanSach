/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
/**
 *
 * @author Flow The Sun
 */
public class loginprocess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("txtUser");
        String password = request.getParameter("txtPass");
        String ghiNho = request.getParameter("chkGhiNho");
        
        boolean tbloi = false;
        // kieem tra xem du lieu nhap tu text box co rong hay khong!!!
        if (userName.trim().length() == 0) {
            request.setAttribute("userNameloi", "Vui lòng nhập tên đăng nhập");
            tbloi = true;
        } else {
            request.setAttribute("ten", userName);
        }
        if (password.trim().length() == 0) {
            request.setAttribute("userpasswordloi", "Vui lòng nhập mật khẩu");
            tbloi = true;
        } else {
            request.setAttribute("pass", password);
        }
        if (tbloi) {
            request.getRequestDispatcher("/myaccount.jsp").forward(request, response);
        } else {
            Connection con = null;
            PreparedStatement stm = null;
            ResultSet rs = null;
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=WebBanSach", "sa", "123456");
                stm = con.prepareStatement("select HoTen from NguoiDung where TenDN=? and MatKhau=?");
                stm.setString(1, userName);
                stm.setString(2, password);
                rs = stm.executeQuery();
                // tạo cookie sống 1 tháng trên client
                Cookie ckiUser = new Cookie("User", userName);
                Cookie ckiPass = new Cookie("Pass", password);
                ckiUser.setMaxAge(30*24*60*60); // 30 ngày
                ckiPass.setMaxAge(30*24*60*60);
                
                // nếu không check vào ghi nhớ thì xóa cookie đã nhớ trước đó
                if (ghiNho == null)
                {
                    ckiUser.setMaxAge(0); // xóa cookie
                    ckiPass.setMaxAge(0);
                }
                // gửi cookie về client
                response.addCookie(ckiUser);
                response.addCookie(ckiPass);
                if (rs.next()) {
                    request.setAttribute("msg", "Đăng nhập thành công");
                    //tao seesion de luu lai ten dang nhap, gan ten no bang mot gia tri
                    // khoi tao seesion
                    String fullname = rs.getString("HoTen");
                    request.getSession(true).setAttribute("tendaydu", fullname);
                    // sau khi khoi tao thi chuyen sang trang home
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                } else {
                    request.setAttribute("msg", "<font color='red'>Đăng nhập thất bại. Mời bạn thực hiện lại</font>");
                    request.getRequestDispatcher("/myaccount.jsp").forward(request, response);
                }// con neu nhap sai thi se giu nguyen trang login.jsp!!!! tat nhien rui :D
                
            } catch (SQLException ex) {
                Logger.getLogger(loginprocess.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(loginprocess.class.getName()).log(Level.SEVERE, null, ex);
            }finally{
                try {
                    rs.close();
                    stm.close();
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(loginprocess.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
