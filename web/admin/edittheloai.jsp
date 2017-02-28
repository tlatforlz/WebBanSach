
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Quản lý thể loại</title>
<link rel="stylesheet" type="text/css" href="../style.css" />

<!--Kiểm tra nhập-->

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
       <%@include file="connect.jsp" %>
    <%!
        String select="SELECT MaTL FROM THELOAI";
    %>

<div id="wrap">
       <%@include file="menucp.jsp" %>
       <div class="center_content">
           <br/>
       	<table align="center" bgcolor="#CCFFCC"><tr ><td>
                    <strong><font  size="6" color="#3399CC">SỬA THÔNG TIN THỂ LOẠI</font></strong>
                </td></tr></table>
           <br/><br/>
<%--Table thong tin nguoi dung--%>
    
         <form id="form1" name="form1" method="post" action="formedittheloai.jsp">
<center>  Chọn mã thể loại cần sửa: 
        <label>
    <select name="matl">
    <%
    rs = st.executeQuery(select);
        if(rs!=null)
        {
            while(rs.next())
            {
                String matl=rs.getString(1);
      %>
        <option value="<%=matl %>"><%=matl %></option>
     <%
           }
        }
    %>
    </select>
    </label>

  <label>
  <input type="submit" name="Submit" value="Đến trang sửa" />
  </label>
    
</center>
</form>
<%--Ket thuc table thong tin thể loại--%>           
        	
              <%@include file="dstheloai.jsp" %>
        <br />
        
           <table align="center" cellspacing="20">
            <tr>
                <td>
                    <a href="addtheloai.jsp"><img src="..\images\add.png" /></a>
                </td>
                <td>
                   <a href="deletetheloai.jsp"> <img src="..\images\delete.png" /></a>
                </td>
            </tr>
        </table> 
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp" %>
</div>

</body>
 
</html>