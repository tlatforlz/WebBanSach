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
<title>Quản lý người dùng</title>
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
            String TenDN=request.getParameter("tendn");
            String MatKhau=request.getParameter("matkhau");
            String HoTen=request.getParameter("hoten");
            String NgaySinh=request.getParameter("ngay");
            String ThangSinh=request.getParameter("thang");
            String NamSinh=request.getParameter("nam");
            String DiaChi=request.getParameter("diachi");
            String DienThoai=request.getParameter("dienthoai");
            String Email=request.getParameter("email");
            String GioiTinh=request.getParameter("gioitinh");
            String IdGroup=request.getParameter("idgroup");
        %>      
        <%@include file="connect.jsp" %>
        <%
            Date ngayhientai=new Date();
            String ngaydangky=(ngayhientai.getMonth()+1)+"/"+ngayhientai.getDate()+"/"+(ngayhientai.getYear()+1900);            
            String ngaythangnam=ThangSinh+"/"+NgaySinh+"/"+NamSinh;
            String insert = "INSERT INTO NGUOIDUNG(TenDN, MatKhau, HoTen, NgaySinh, DiaChi, DienThoai, Email, NgayDangKy, GioiTinh, IdGroup) VALUES('"+TenDN+"','"+MatKhau+"','"+HoTen+"','"+ngaythangnam+"','"+DiaChi+"','"+DienThoai+"','"+Email+"', '"+ngaydangky+"', '"+GioiTinh+"','"+IdGroup+"')";
            st.executeUpdate(insert);
            response.sendRedirect("adduser.jsp");      
        %>
</body>
    
</html>