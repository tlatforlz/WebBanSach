package examples;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
/**
 *
 * @author Crabfish
 */
//@WebServlet("/Upload.do")
public class UploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        int maxPostSize = 5*1024*1024; //5MB
        //MultipartRequest multi=new MultipartRequest(request,".",maxPostSize);
        //Nhận tham số bình thường
//                    String masach=multi.getParameter("masach");
//            String tensach=multi.getParameter("tensach");
//            String manxb=multi.getParameter("manxb");
//            String matl=multi.getParameter("matl");
//            String gia=multi.getParameter("gia");
//            String hinh=multi.getParameter("hinh");
//            String macts=multi.getParameter("macts");
//            String mann=multi.getParameter("mann");
//            String sotrang=multi.getParameter("sotrang");
//            String trongluong=multi.getParameter("trongluong");
//            String hinhthucbia=multi.getParameter("hinhthucbia");
//            String kichthuoc=multi.getParameter("kichthuoc");
//            String namxuatban = multi.getParameter("namxuatban");
//            String gioithieu=multi.getParameter("gioithieu");
//             File file=multi.getFile("hinh");
//        
//            String filename=multi.getFilesystemName("hinh");
            //Lay duong dan vat ly cua thu muc myfolder
//            String myfolder=getServletContext().getRealPath("hinhsach");
//            //Chuyen tap tin vua upload vao thu muc myfolder
//            file.renameTo(new File(myfolder, file.getName()));
        
            Connection con;
            Statement st = null;
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=WebBanSach";
            con = DriverManager.getConnection(url, "sa", "123456");
            st = con.createStatement();
            int solanxem=0;
//            String insert = "INSERT INTO SACH(MaSach, TenSach, MaNXB, MaTL, Gia, SoLanXem, UrlHinh) VALUES('"+masach+"', '"+tensach+"', '"+manxb+"','"+matl+"','"+gia+"','"+solanxem+"','"+filename+"')";
//            String insert1 = "INSERT INTO CHITIETSACH(MaCTS, MaSach, MaNN, SoTrang, TrongLuong, HinhThucBia, KichThuoc, NamXB, GioiThieu) VALUES('"+macts+"', '"+masach+"','"+mann+"','"+sotrang+"','"+trongluong+"','"+hinhthucbia+"','"+kichthuoc+"', '"+namxuatban+"','"+gioithieu+"')";
//            st.executeUpdate(insert);
//            st.executeUpdate(insert1);
            response.sendRedirect("admin/addsach.jsp"); 
           }
        catch(Exception e)
         {
            System.out.println("Error: " + e);
         }
     
        //Nhận tập tin upload
       
        //processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    
}
