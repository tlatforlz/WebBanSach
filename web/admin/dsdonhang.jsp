<%-- 
    Document   : user
    Created on : Nov 18, 2011, 11:45:59 AM
    Author     : Crabfish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
</head>
<body>        	
    <%--<%@include file="connect.jsp" %>--%>
        <%
            String select = "SELECT MaDH, nd.TenDN, nd.HoTen, TenNguoiNhan, NgayDatHang, NgayGiaoHang, DiaDiemGiaoHang, GhiChu FROM DONHANG dh, NGUOIDUNG nd WHERE dh.TenDN=nd.TenDN";
            rs = st.executeQuery(select);
            int i=1;
        %>
        <br/>      
        <table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">DANH SÁCH ĐƠN HÀNG</font></strong>
                </td></tr></table>
    <br/><br/>
        <table align="center" border="1" border-style="solid" bordercolor="#3399CC" cellpadding="0" cellspacing="0" width="850px">
            <tr height="40">
                <th>STT</th><th>Mã Đơn Hàng</th><th>Tên Đăng Nhập</th><th>Tên Người Dùng</th><th>Tên Người Nhận</th><th>Ngày Đặt Hàng</th><th>Ngày Giao Hàng</th><th>Địa Điểm Giao Hàng</th><th>Ghi Chú</th>
            </tr>
        <%
            if(rs!=null)
            {
                for(i=1; rs.next();i++)
                {
                    out.println("<tr><td width='10'>"+ i +"</td><td width='10'>"+ rs.getString(1) +"</td><td width='10'>"+ rs.getString(2) +"</td><td width='10'>"+ rs.getString(3) +"</td><td width='10'>"+ rs.getString(4) +"</td><td width='10'>"+ rs.getDate(5) +"</td><td width='10'>"+ rs.getDate(6) +"</td><td width='10'>"+ rs.getString(7) +"</td><td width='10'>"+ rs.getString(8) +"</td>");
                }
            }
        %>
        </table>        

</body>
</html>