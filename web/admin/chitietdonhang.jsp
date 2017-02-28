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
<title>Quản lý đơn hàng</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

</head>
<body>
           <%@include file="connect.jsp" %>

    
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
        <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">CHI TIẾT ĐƠN HÀNG</font></strong>
                </td></tr></table>
           <br/><br/>
    
           <%
                String madh=request.getParameter("madh");
                String select="SELECT MaDH, ct.MaSach, s.TenSach, SoLuong, ThanhTien FROM CHITIETDONHANG ct, SACH s WHERE s.MaSach=ct.MaSach AND MaDH='"+madh+"'";
                rs = st.executeQuery(select);
                int i;
           %>
           
                   <table align="center" border="1" border-style="solid" bordercolor="#3399CC" cellpadding="0" cellspacing="0" width="850px">
            <tr height="40">
                <th>STT</th><th>Mã Đơn Hàng</th><th>Mã Sách</th><th>Tên Sách</th><th>Số Lượng</th><th>Thành Tiền</th>
            </tr>
        <%
            if(rs!=null)
            {
                for(i=1; rs.next();i++)
                {
                    out.println("<tr><td width='10'>"+ i +"</td><td width='10'>"+ rs.getString(1) +"</td><td width='10'>"+ rs.getString(2) +"</td><td width='10'>"+ rs.getString(3) +"</td><td width='10'>"+ rs.getString(4) +"</td><td width='10'>"+ rs.getString(5) +"</td></td></tr>");
                }
            }
        %>
        </table>        
        <br />
          
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
           <%@include file="footer.jsp" %>
       
       </div>
    

</div>

</body>


</html>