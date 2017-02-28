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
<title>Quản lý sách</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

</head>
<body>
           <%@include file="connect.jsp" %>

    
<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
        <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">CHI TIẾT SÁCH</font></strong>
                </td></tr></table>
           <br/><br/>
    
           <%
                String masach=request.getParameter("masach");
                String select="SELECT ct.MaCTS, ct.MaSach, s.TenSach, nn.TenNN, ct.SoTrang, ct.TrongLuong, ct.HinhThucBia, ct.KichThuoc, ct.NamXB, ct.GioiThieu, s.UrlHinh FROM CHITIETSACH ct, SACH s, NGONNGU nn WHERE ct.MaSach=s.MaSach AND ct.MaNN=nn.MaNN AND ct.MaSach='"+masach+"'";
                rs = st.executeQuery(select);
                int i;
           %>
           
                   <table align="center" border="1" border-style="solid" bordercolor="#3399CC" cellpadding="0" cellspacing="0" width="850px">
            <tr height="40">
                <th>STT</th><th>Mã CTS</th><th>Mã Sách</th><th>Tên Sách</th><th>Tên NN</th><th>Số Trang</th><th>Trọng Lượng</th><th>Hình Thức Bìa</th><th>Kích Thước</th><th>Năm Xuất Bản</th><th>Hình</th>
            </tr>
        <%
            if(rs!=null)
            {
                for(i=1; rs.next();i++)
                {
                    String hinh="<img src='../hinhsach/"+rs.getString(11)+"' height='80' width='80'/>";
                    out.println("<tr><td width='10'>"+ i +"</td><td width='10'>"+ rs.getString(1) +"</td><td width='10'>"+ rs.getString(2) +"</td><td width='10'>"+ rs.getString(3) +"</td><td width='10'>"+ rs.getString(4) +"</td><td width='10'>"+ rs.getInt(5) +"</td><td width='10'>"+ rs.getInt(6) +"</td><td width='10'>"+ rs.getString(7) +"</td><td width='10'>"+ rs.getString(8) +"</td><td width='10'>"+ rs.getInt(9) +"</td><td align='center'  width='30'>"+ hinh +"</td></tr>");
                    out.println("<tr><td align='center' colspan='11'>Giới Thiệu</td></tr>");
                    out.println("<tr><td colspan='11'>"+ rs.getString(10) +"</td></tr>");
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