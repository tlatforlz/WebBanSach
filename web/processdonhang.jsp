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
<title>Book Online</title>
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
            String tennguoinhan=request.getParameter("hoten");
            String diachi=request.getParameter("diachi");
            String dienthoai=request.getParameter("dienthoai");
            String ghichu=request.getParameter("ghichu");
        %>      
        <%@include file="connect.jsp" %>
        <%
            Date ngayhientai=new Date();
            String ngaydathang=(ngayhientai.getMonth()+1)+"/"+ngayhientai.getDate()+"/"+(ngayhientai.getYear()+1900);            
            String insert = "INSERT INTO DONHANG(TenNguoiNhan, NgayDatHang, DiaDiemGiaoHang, DienThoai, GhiChu) VALUES(N'"+tennguoinhan+"','"+ngaydathang+"','"+dienthoai+"',N'"+ghichu+"','"+diachi+"')";
            st.executeUpdate(insert);
            response.sendRedirect("index.jsp");      
        %>
</body>
    
</html>