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
            String select = "SELECT MaSach, TenSach, nxb.TenNXb, tl.TenTL, Gia, SoLanXem, UrlHinh FROM SACH s, NXB nxb, THELOAI tl WHERE s.MaNXB=nxb.MaNXB AND s.MaTL=tl.MaTL";
            rs = st.executeQuery(select);
            int i=1;
        %>
        <br/>      
        <table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">DANH SÁCH SÁCH</font></strong>
                </td></tr></table>
    <br/><br/>
        <table align="center" border="1" border-style="solid" bordercolor="#3399CC" cellpadding="0" cellspacing="0" width="850px">
            <tr height="40">
                <th>STT</th><th>Mã Sách</th><th>Tên Sách</th><th>Tên NXB</th><th>Tên Thể Loại</th><th>Giá</th><th>Số Lần Xem</th><th>Hình</th>
            </tr>
        <%
            if(rs!=null)
            {
                for(i=1; rs.next();i++)
                {
                    String hinh="<img src='../hinhsach/"+rs.getString(7)+"' height='80' width='80'/>";
                    out.println("<tr><td width='10'>"+ i +"</td><td width='10'>"+ rs.getString(1) +"</td><td width='100'>"+ rs.getString(2) +"</td><td width='10'>"+ rs.getString(3) +"</td><td width='10'>"+ rs.getString(4) +"</td><td width='10'>"+ rs.getInt(5) +"</td><td width='10'>"+ rs.getInt(6) +"</td><td align='center'  width='30'>"+ hinh +"</td>");
                }
            }
        %>
        </table>        

</body>
</html>