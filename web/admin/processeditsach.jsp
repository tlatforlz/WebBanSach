<%-- 
    Document   : user
    Created on : Nov 18, 2011, 11:45:59 AM
    Author     : Crabfish
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý Sách</title>
<link rel="stylesheet" type="text/css" href="style.css" />


<%--Style table thong tin--%>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #3366FF;
	font-weight: bold;
}
.textbox {
	border: 1px solid #3399FF;
}
.thongtin {
	padding-right: 10px;
}
-->
</style>
<%--Ket thuc style table thong tin--%>
</head>
<body>
     <%@page import="java.util.Date"%>
        <%
            String masach=request.getParameter("masach");
            String tensach=request.getParameter("tensach");
            String manxb=request.getParameter("manxb");
            String matl=request.getParameter("matl");
            String gia=request.getParameter("gia");
            String solanxem=request.getParameter("solanxem");
            String hinh=request.getParameter("hinh");
            String macts=request.getParameter("macts");
            String mann=request.getParameter("mann");
            String sotrang=request.getParameter("sotrang");
            String trongluong=request.getParameter("trongluong");
            String hinhthucbia=request.getParameter("hinhthucbia");
            String kichthuoc=request.getParameter("kichthuoc");
            String namxuatban=request.getParameter("namxuatban");
            String gioithieu=request.getParameter("gioithieu");
        %>      
        <%@include file="connect.jsp" %>
        <%
            String update = "UPDATE SACH SET TenSach='"+tensach+"', MaNXB='"+manxb+"', MaTL='"+matl+"', Gia='"+gia+"', SoLanXem='"+solanxem+"', UrlHinh='"+hinh+"' WHERE MaSach='"+masach+"'";
            String update1 = "UPDATE CHITIETSACH SET MaNN='"+mann+"', SoTrang='"+sotrang+"', TrongLuong='"+trongluong+"', HinhThucBia='"+hinhthucbia+"', kichthuoc='"+kichthuoc+"', NamXB='"+namxuatban+"', GioiThieu='"+gioithieu+"' WHERE MaCTS='"+macts+"'";
            st.executeUpdate(update);
            st.executeUpdate(update1);
            response.sendRedirect("editsach.jsp");      
        %>
</body>
    
</html>